; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.bmc150_accel_data = type { i32 }
%struct.device = type { i32 }

@bmc150_accel_sleep_value_table = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@BMC150_ACCEL_PMU_MODE_SHIFT = common dso_local global i32 0, align 4
@BMC150_ACCEL_PMU_BIT_SLEEP_DUR_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Set Mode bits %x\0A\00", align 1
@BMC150_ACCEL_REG_PMU_LPW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Error writing reg_pmu_lpw\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc150_accel_data*, i32, i32)* @bmc150_accel_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_set_mode(%struct.bmc150_accel_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmc150_accel_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bmc150_accel_data* %0, %struct.bmc150_accel_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %14 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.device* @regmap_get_device(i32 %15)
  store %struct.device* %16, %struct.device** %8, align 8
  store i32 -1, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %42, %19
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmc150_accel_sleep_value_table, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmc150_accel_sleep_value_table, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmc150_accel_sleep_value_table, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %34, %25
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %20

45:                                               ; preds = %20
  br label %47

46:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %78

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @BMC150_ACCEL_PMU_MODE_SHIFT, align 4
  %56 = shl i32 %54, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @BMC150_ACCEL_PMU_BIT_SLEEP_DUR_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load %struct.device*, %struct.device** %8, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @dev_dbg(%struct.device* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %66 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @BMC150_ACCEL_REG_PMU_LPW, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @regmap_write(i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %53
  %74 = load %struct.device*, %struct.device** %8, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %73, %50
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
