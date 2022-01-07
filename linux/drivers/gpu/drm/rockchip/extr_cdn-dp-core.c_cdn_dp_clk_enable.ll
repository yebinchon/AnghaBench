; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"cannot enable dp pclk %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot enable core_clk %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"cannot get pm runtime %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"get clk rate failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_device*)* @cdn_dp_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_clk_enable(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  %6 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %7 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @clk_prepare_enable(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %14 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %103

18:                                               ; preds = %1
  %19 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %20 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_prepare_enable(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %27 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %98

31:                                               ; preds = %18
  %32 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %33 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pm_runtime_get_sync(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %40 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %93

44:                                               ; preds = %31
  %45 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %46 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @reset_control_assert(i32 %47)
  %49 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %50 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @reset_control_assert(i32 %51)
  %53 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %54 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @reset_control_assert(i32 %55)
  %57 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %58 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @reset_control_deassert(i32 %59)
  %61 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %62 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @reset_control_deassert(i32 %63)
  %65 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %66 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @reset_control_deassert(i32 %67)
  %69 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %70 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @clk_get_rate(i32 %71)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %44
  %76 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %77 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %88

82:                                               ; preds = %44
  %83 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @cdn_dp_set_fw_clk(%struct.cdn_dp_device* %83, i64 %84)
  %86 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %87 = call i32 @cdn_dp_clock_reset(%struct.cdn_dp_device* %86)
  store i32 0, i32* %2, align 4
  br label %105

88:                                               ; preds = %75
  %89 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %90 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pm_runtime_put(i32 %91)
  br label %93

93:                                               ; preds = %88, %38
  %94 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %95 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @clk_disable_unprepare(i32 %96)
  br label %98

98:                                               ; preds = %93, %25
  %99 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %100 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @clk_disable_unprepare(i32 %101)
  br label %103

103:                                              ; preds = %98, %12
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %82
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @cdn_dp_set_fw_clk(%struct.cdn_dp_device*, i64) #1

declare dso_local i32 @cdn_dp_clock_reset(%struct.cdn_dp_device*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
