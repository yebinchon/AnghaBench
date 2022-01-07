; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_create_fan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_create_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.aspeed_pwm_tacho_data = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"cooling-levels\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"aspeed,fan-tach-ch\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.aspeed_pwm_tacho_data*)* @aspeed_create_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_create_fan(%struct.device* %0, %struct.device_node* %1, %struct.aspeed_pwm_tacho_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.aspeed_pwm_tacho_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.aspeed_pwm_tacho_data* %2, %struct.aspeed_pwm_tacho_data** %7, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = call i32 @of_property_read_u32(%struct.device_node* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %9)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %72

18:                                               ; preds = %3
  %19 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @aspeed_create_pwm_port(%struct.aspeed_pwm_tacho_data* %19, i32 %21)
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = call i32 @of_property_count_u8_elems(%struct.device_node* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %18
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @aspeed_create_pwm_cooling(%struct.device* %28, %struct.device_node* %29, %struct.aspeed_pwm_tacho_data* %30, i64 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %72

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %18
  %40 = load %struct.device_node*, %struct.device_node** %6, align 8
  %41 = call i32 @of_property_count_u8_elems(%struct.device_node* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %72

47:                                               ; preds = %39
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32* @devm_kcalloc(%struct.device* %48, i32 %49, i32 4, i32 %50)
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %72

57:                                               ; preds = %47
  %58 = load %struct.device_node*, %struct.device_node** %6, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @of_property_read_u8_array(%struct.device_node* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %72

66:                                               ; preds = %57
  %67 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @aspeed_create_fan_tach_channel(%struct.aspeed_pwm_tacho_data* %67, i32* %68, i32 %69, i64 %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %64, %54, %44, %36, %16
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @aspeed_create_pwm_port(%struct.aspeed_pwm_tacho_data*, i32) #1

declare dso_local i32 @of_property_count_u8_elems(%struct.device_node*, i8*) #1

declare dso_local i32 @aspeed_create_pwm_cooling(%struct.device*, %struct.device_node*, %struct.aspeed_pwm_tacho_data*, i64, i32) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u8_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @aspeed_create_fan_tach_channel(%struct.aspeed_pwm_tacho_data*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
