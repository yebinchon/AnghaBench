; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_gpio_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_gpio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi = type { %struct.hdmi_platform_config* }
%struct.hdmi_platform_config = type { %struct.hdmi_gpio_data* }
%struct.hdmi_gpio_data = type { i32, i64, i64 }

@HDMI_MAX_NUM_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"gpio on\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"gpio off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi*, i32)* @gpio_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_config(%struct.hdmi* %0, i32 %1) #0 {
  %3 = alloca %struct.hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_platform_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdmi_gpio_data, align 8
  %8 = alloca %struct.hdmi_gpio_data, align 8
  %9 = alloca i32, align 4
  store %struct.hdmi* %0, %struct.hdmi** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %11 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %10, i32 0, i32 0
  %12 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %11, align 8
  store %struct.hdmi_platform_config* %12, %struct.hdmi_platform_config** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %53, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @HDMI_MAX_NUM_GPIO, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %5, align 8
  %22 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %21, i32 0, i32 0
  %23 = load %struct.hdmi_gpio_data*, %struct.hdmi_gpio_data** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %23, i64 %25
  %27 = bitcast %struct.hdmi_gpio_data* %7 to i8*
  %28 = bitcast %struct.hdmi_gpio_data* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 24, i1 false)
  %29 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %7, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %7, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %7, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @gpiod_direction_output(i64 %38, i32 %40)
  br label %51

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %7, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @gpiod_direction_input(i64 %44)
  %46 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %7, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @gpiod_set_value_cansleep(i64 %47, i32 %49)
  br label %51

51:                                               ; preds = %42, %36
  br label %52

52:                                               ; preds = %51, %20
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %16

56:                                               ; preds = %16
  %57 = call i32 @DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %96

58:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %91, %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @HDMI_MAX_NUM_GPIO, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %5, align 8
  %65 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %64, i32 0, i32 0
  %66 = load %struct.hdmi_gpio_data*, %struct.hdmi_gpio_data** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %66, i64 %68
  %70 = bitcast %struct.hdmi_gpio_data* %8 to i8*
  %71 = bitcast %struct.hdmi_gpio_data* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 24, i1 false)
  %72 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %8, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %63
  br label %91

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %8, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %8, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 0, i32 1
  store i32 %85, i32* %9, align 4
  %86 = getelementptr inbounds %struct.hdmi_gpio_data, %struct.hdmi_gpio_data* %8, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @gpiod_set_value_cansleep(i64 %87, i32 %88)
  br label %90

90:                                               ; preds = %80, %76
  br label %91

91:                                               ; preds = %90, %75
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %59

94:                                               ; preds = %59
  %95 = call i32 @DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %56
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gpiod_direction_output(i64, i32) #2

declare dso_local i32 @gpiod_direction_input(i64) #2

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #2

declare dso_local i32 @DBG(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
