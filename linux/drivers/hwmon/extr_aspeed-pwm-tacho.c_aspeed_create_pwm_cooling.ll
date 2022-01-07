; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_create_pwm_cooling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_create_pwm_cooling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.aspeed_pwm_tacho_data = type { %struct.aspeed_cooling_device** }
%struct.aspeed_cooling_device = type { i32, %struct.aspeed_pwm_tacho_data*, i32, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cooling-levels\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Property 'cooling-levels' cannot be read.\0A\00", align 1
@MAX_CDEV_NAME_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%pOFn%d\00", align 1
@aspeed_pwm_cool_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.aspeed_pwm_tacho_data*, i32, i32)* @aspeed_create_pwm_cooling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_create_pwm_cooling(%struct.device* %0, %struct.device_node* %1, %struct.aspeed_pwm_tacho_data* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.aspeed_pwm_tacho_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.aspeed_cooling_device*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store %struct.aspeed_pwm_tacho_data* %2, %struct.aspeed_pwm_tacho_data** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @devm_kzalloc(%struct.device* %14, i32 40, i32 %15)
  %17 = bitcast i8* %16 to %struct.aspeed_cooling_device*
  store %struct.aspeed_cooling_device* %17, %struct.aspeed_cooling_device** %13, align 8
  %18 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %13, align 8
  %19 = icmp ne %struct.aspeed_cooling_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %95

23:                                               ; preds = %5
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @devm_kzalloc(%struct.device* %24, i32 %25, i32 %26)
  %28 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %13, align 8
  %29 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %13, align 8
  %31 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %30, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %95

37:                                               ; preds = %23
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %13, align 8
  %41 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.device_node*, %struct.device_node** %8, align 8
  %43 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %13, align 8
  %44 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @of_property_read_u8_array(%struct.device_node* %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %6, align 4
  br label %95

54:                                               ; preds = %37
  %55 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %13, align 8
  %56 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MAX_CDEV_NAME_LEN, align 4
  %59 = load %struct.device_node*, %struct.device_node** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @snprintf(i32 %57, i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %59, i32 %60)
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = load %struct.device_node*, %struct.device_node** %8, align 8
  %64 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %13, align 8
  %65 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %13, align 8
  %68 = call i32 @devm_thermal_of_cooling_device_register(%struct.device* %62, %struct.device_node* %63, i32 %66, %struct.aspeed_cooling_device* %67, i32* @aspeed_pwm_cool_ops)
  %69 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %13, align 8
  %70 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %13, align 8
  %72 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %54
  %77 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %13, align 8
  %78 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %6, align 4
  br label %95

81:                                               ; preds = %54
  %82 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %9, align 8
  %83 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %13, align 8
  %84 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %83, i32 0, i32 1
  store %struct.aspeed_pwm_tacho_data* %82, %struct.aspeed_pwm_tacho_data** %84, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %13, align 8
  %87 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %13, align 8
  %89 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %9, align 8
  %90 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %89, i32 0, i32 0
  %91 = load %struct.aspeed_cooling_device**, %struct.aspeed_cooling_device*** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %91, i64 %93
  store %struct.aspeed_cooling_device* %88, %struct.aspeed_cooling_device** %94, align 8
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %81, %76, %50, %34, %20
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u8_array(%struct.device_node*, i8*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, %struct.device_node*, i32) #1

declare dso_local i32 @devm_thermal_of_cooling_device_register(%struct.device*, %struct.device_node*, i32, %struct.aspeed_cooling_device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
