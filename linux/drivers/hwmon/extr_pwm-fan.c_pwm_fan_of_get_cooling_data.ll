; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pwm-fan.c_pwm_fan_of_get_cooling_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pwm-fan.c_pwm_fan_of_get_cooling_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pwm_fan_ctx = type { i64*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"cooling-levels\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Wrong data!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Property 'cooling-levels' cannot be read!\0A\00", align 1
@MAX_PWM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"PWM fan state[%d]:%d > %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.pwm_fan_ctx*)* @pwm_fan_of_get_cooling_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_fan_of_get_cooling_data(%struct.device* %0, %struct.pwm_fan_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pwm_fan_ctx*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.pwm_fan_ctx* %1, %struct.pwm_fan_ctx** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.device_node*, %struct.device_node** %6, align 8
  %14 = call i32 @of_find_property(%struct.device_node* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

17:                                               ; preds = %2
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = call i32 @of_property_count_u32_elems(%struct.device_node* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ %25, %27 ], [ %30, %28 ]
  store i32 %32, i32* %3, align 4
  br label %99

33:                                               ; preds = %17
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i64* @devm_kcalloc(%struct.device* %35, i32 %36, i32 4, i32 %37)
  %39 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %39, i32 0, i32 0
  store i64* %38, i64** %40, align 8
  %41 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %99

48:                                               ; preds = %33
  %49 = load %struct.device_node*, %struct.device_node** %6, align 8
  %50 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @of_property_read_u32_array(%struct.device_node* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %99

61:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %91, %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %94

66:                                               ; preds = %62
  %67 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %5, align 8
  %68 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @MAX_PWM, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %66
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %5, align 8
  %80 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MAX_PWM, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %78, i64 %85, i64 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %99

90:                                               ; preds = %66
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %62

94:                                               ; preds = %62
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %95, 1
  %97 = load %struct.pwm_fan_ctx*, %struct.pwm_fan_ctx** %5, align 8
  %98 = getelementptr inbounds %struct.pwm_fan_ctx, %struct.pwm_fan_ctx* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %94, %76, %57, %45, %31, %16
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_count_u32_elems(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
