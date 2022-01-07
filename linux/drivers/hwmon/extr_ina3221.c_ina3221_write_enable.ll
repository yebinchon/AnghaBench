; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_write_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_write_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ina3221_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to get PM runtime\0A\00", align 1
@INA3221_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to enable channel %d: error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @ina3221_write_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina3221_write_enable(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ina3221_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.ina3221_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.ina3221_data* %15, %struct.ina3221_data** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @INA3221_CONFIG_CHx_EN(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %19 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %95

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %39 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pm_runtime_get_sync(i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %4, align 4
  br label %95

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %34
  %50 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %51 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %56, %57
  %59 = or i32 %55, %58
  store i32 %59, i32* %12, align 4
  %60 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %61 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @INA3221_CONFIG, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @regmap_write(i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %49
  br label %81

69:                                               ; preds = %49
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %72 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %77 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pm_runtime_put_sync(i32 %78)
  br label %80

80:                                               ; preds = %75, %69
  store i32 0, i32* %4, align 4
  br label %95

81:                                               ; preds = %68
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load %struct.ina3221_data*, %struct.ina3221_data** %8, align 8
  %90 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pm_runtime_put_sync(i32 %91)
  br label %93

93:                                               ; preds = %84, %81
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %80, %44, %33
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.ina3221_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @INA3221_CONFIG_CHx_EN(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
