; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_init_t7_power_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_init_t7_power_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"T7 cfg zero, resetting\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"T7 cfg zero after reset, overriding\0A\00", align 1
@MXT_POWER_CFG_RUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Initialized power cfg: ACTV %d, IDLE %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*)* @mxt_init_t7_power_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_init_t7_power_cfg(%struct.mxt_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxt_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %3, align 8
  %7 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %8 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %40, %1
  %12 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %13 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %16 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %19 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %18, i32 0, i32 0
  %20 = call i32 @__mxt_read_reg(%struct.TYPE_3__* %14, i32 %17, i32 8, %struct.TYPE_4__* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %68

25:                                               ; preds = %11
  %26 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %27 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %33 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %31, %25
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %44 = call i32 @mxt_soft_reset(%struct.mxt_data* %43)
  store i32 1, i32* %6, align 4
  br label %11

45:                                               ; preds = %37
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %49 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 20, i32* %50, align 8
  %51 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %52 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 100, i32* %53, align 4
  %54 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %55 = load i32, i32* @MXT_POWER_CFG_RUN, align 4
  %56 = call i32 @mxt_set_t7_power_cfg(%struct.mxt_data* %54, i32 %55)
  store i32 %56, i32* %2, align 4
  br label %68

57:                                               ; preds = %31
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %60 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %64 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %57, %45, %23
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @__mxt_read_reg(%struct.TYPE_3__*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @mxt_soft_reset(%struct.mxt_data*) #1

declare dso_local i32 @mxt_set_t7_power_cfg(%struct.mxt_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
