; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_dw_drm_dsi.c_dsi_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_dw_drm_dsi.c_dsi_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.dw_dsi = type { i32, %struct.dsi_hw_ctx* }
%struct.dsi_hw_ctx = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"fail to enable pclk: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @dsi_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.dw_dsi*, align 8
  %4 = alloca %struct.dsi_hw_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = call %struct.dw_dsi* @encoder_to_dsi(%struct.drm_encoder* %6)
  store %struct.dw_dsi* %7, %struct.dw_dsi** %3, align 8
  %8 = load %struct.dw_dsi*, %struct.dw_dsi** %3, align 8
  %9 = getelementptr inbounds %struct.dw_dsi, %struct.dw_dsi* %8, i32 0, i32 1
  %10 = load %struct.dsi_hw_ctx*, %struct.dsi_hw_ctx** %9, align 8
  store %struct.dsi_hw_ctx* %10, %struct.dsi_hw_ctx** %4, align 8
  %11 = load %struct.dw_dsi*, %struct.dw_dsi** %3, align 8
  %12 = getelementptr inbounds %struct.dw_dsi, %struct.dw_dsi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.dsi_hw_ctx*, %struct.dsi_hw_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.dsi_hw_ctx, %struct.dsi_hw_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_prepare_enable(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %31

26:                                               ; preds = %16
  %27 = load %struct.dw_dsi*, %struct.dw_dsi** %3, align 8
  %28 = call i32 @dsi_mipi_init(%struct.dw_dsi* %27)
  %29 = load %struct.dw_dsi*, %struct.dw_dsi** %3, align 8
  %30 = getelementptr inbounds %struct.dw_dsi, %struct.dw_dsi* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %26, %23, %15
  ret void
}

declare dso_local %struct.dw_dsi* @encoder_to_dsi(%struct.drm_encoder*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @dsi_mipi_init(%struct.dw_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
