; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.mv64xxx_i2c_data = type { i32, %struct.i2c_msg* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @mv64xxx_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv64xxx_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv64xxx_i2c_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %11 = call %struct.mv64xxx_i2c_data* @i2c_get_adapdata(%struct.i2c_adapter* %10)
  store %struct.mv64xxx_i2c_data* %11, %struct.mv64xxx_i2c_data** %7, align 8
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %7, align 8
  %14 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %13, i32 0, i32 1
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %14, align 8
  %16 = icmp ne %struct.i2c_msg* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %20 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %7, align 8
  %21 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %20, i32 0, i32 1
  store %struct.i2c_msg* %19, %struct.i2c_msg** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %7, align 8
  %24 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %7, align 8
  %26 = call i64 @mv64xxx_i2c_can_offload(%struct.mv64xxx_i2c_data* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %7, align 8
  %30 = call i32 @mv64xxx_i2c_offload_xfer(%struct.mv64xxx_i2c_data* %29)
  store i32 %30, i32* %8, align 4
  br label %39

31:                                               ; preds = %3
  %32 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %7, align 8
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i64 0
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = call i32 @mv64xxx_i2c_execute_msg(%struct.mv64xxx_i2c_data* %32, %struct.i2c_msg* %34, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %31, %28
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %7, align 8
  %46 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %7, align 8
  %48 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %47, i32 0, i32 1
  store %struct.i2c_msg* null, %struct.i2c_msg** %48, align 8
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local %struct.mv64xxx_i2c_data* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @mv64xxx_i2c_can_offload(%struct.mv64xxx_i2c_data*) #1

declare dso_local i32 @mv64xxx_i2c_offload_xfer(%struct.mv64xxx_i2c_data*) #1

declare dso_local i32 @mv64xxx_i2c_execute_msg(%struct.mv64xxx_i2c_data*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
