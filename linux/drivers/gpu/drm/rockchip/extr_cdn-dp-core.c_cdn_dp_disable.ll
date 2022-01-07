; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32, i32, i32*, i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i64, i64 }

@GRF_SOC_CON26 = common dso_local global i32 0, align 4
@DPTX_HPD_SEL_MASK = common dso_local global i32 0, align 4
@DPTX_HPD_DEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to clear hpd sel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_device*)* @cdn_dp_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_disable(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  %6 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %7 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %28, %11
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %15 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %20 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %21 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cdn_dp_disable_phy(%struct.cdn_dp_device* %19, i32 %26)
  br label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %12

31:                                               ; preds = %12
  %32 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %33 = load i32, i32* @GRF_SOC_CON26, align 4
  %34 = load i32, i32* @DPTX_HPD_SEL_MASK, align 4
  %35 = load i32, i32* @DPTX_HPD_DEL, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @cdn_dp_grf_write(%struct.cdn_dp_device* %32, i32 %33, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %42 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @DRM_DEV_ERROR(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %72

47:                                               ; preds = %31
  %48 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %49 = call i32 @cdn_dp_set_firmware_active(%struct.cdn_dp_device* %48, i32 0)
  %50 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %51 = call i32 @cdn_dp_clk_disable(%struct.cdn_dp_device* %50)
  %52 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %53 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %55 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %58 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %61 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %47
  %65 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %66 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @kfree(i32* %67)
  %69 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %70 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %64, %47
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %40, %10
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @cdn_dp_disable_phy(%struct.cdn_dp_device*, i32) #1

declare dso_local i32 @cdn_dp_grf_write(%struct.cdn_dp_device*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @cdn_dp_set_firmware_active(%struct.cdn_dp_device*, i32) #1

declare dso_local i32 @cdn_dp_clk_disable(%struct.cdn_dp_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
