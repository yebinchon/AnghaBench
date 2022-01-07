; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_set_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmc150_accel_data = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.device = type { i32 }

@BMC150_ACCEL_REG_PMU_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error writing pmu_range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc150_accel_data*, i32)* @bmc150_accel_set_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_set_scale(%struct.bmc150_accel_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bmc150_accel_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bmc150_accel_data* %0, %struct.bmc150_accel_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %10 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device* @regmap_get_device(i32 %11)
  store %struct.device* %12, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %71, %2
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %16 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %19)
  %21 = icmp slt i32 %14, %20
  br i1 %21, label %22, label %74

22:                                               ; preds = %13
  %23 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %24 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %22
  %36 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %37 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BMC150_ACCEL_REG_PMU_RANGE, align 4
  %40 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %41 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @regmap_write(i32 %38, i32 %39, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %35
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %77

57:                                               ; preds = %35
  %58 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %59 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %4, align 8
  %69 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %3, align 4
  br label %77

70:                                               ; preds = %22
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %13

74:                                               ; preds = %13
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %57, %53
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
