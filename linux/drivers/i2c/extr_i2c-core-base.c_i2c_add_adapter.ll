; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_add_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_add_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.device }
%struct.device = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@core_lock = common dso_local global i32 0, align 4
@i2c_adapter_idr = common dso_local global i32 0, align 4
@__i2c_first_dynamic_bus_num = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"couldn't get idr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_add_adapter(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %6, i32 0, i32 1
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @of_alias_get_id(i64 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %24 = call i32 @__i2c_add_numbered_adapter(%struct.i2c_adapter* %23)
  store i32 %24, i32* %2, align 4
  br label %46

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %1
  %27 = call i32 @mutex_lock(i32* @core_lock)
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %29 = load i32, i32* @__i2c_first_dynamic_bus_num, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @idr_alloc(i32* @i2c_adapter_idr, %struct.i2c_adapter* %28, i32 %29, i32 0, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = call i32 @mutex_unlock(i32* @core_lock)
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %46

40:                                               ; preds = %26
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %45 = call i32 @i2c_register_adapter(%struct.i2c_adapter* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %38, %19
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @of_alias_get_id(i64, i8*) #1

declare dso_local i32 @__i2c_add_numbered_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.i2c_adapter*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @i2c_register_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
