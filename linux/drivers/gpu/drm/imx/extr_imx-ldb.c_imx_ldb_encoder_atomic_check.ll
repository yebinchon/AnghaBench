; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_encoder_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_encoder_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.drm_connector_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32*, i32, i64 }
%struct.imx_crtc_state = type { i32, i32, i32, i32 }
%struct.imx_ldb_channel = type { i32, i32 }

@MEDIA_BUS_FMT_RGB666_1X18 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_RGB888_1X24 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @imx_ldb_encoder_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ldb_encoder_atomic_check(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.imx_crtc_state*, align 8
  %9 = alloca %struct.imx_ldb_channel*, align 8
  %10 = alloca %struct.drm_display_info*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %12 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %13 = call %struct.imx_crtc_state* @to_imx_crtc_state(%struct.drm_crtc_state* %12)
  store %struct.imx_crtc_state* %13, %struct.imx_crtc_state** %8, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %15 = call %struct.imx_ldb_channel* @enc_to_imx_ldb_ch(%struct.drm_encoder* %14)
  store %struct.imx_ldb_channel* %15, %struct.imx_ldb_channel** %9, align 8
  %16 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %17 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.drm_display_info* %19, %struct.drm_display_info** %10, align 8
  %20 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %9, align 8
  %21 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %3
  %26 = load %struct.drm_display_info*, %struct.drm_display_info** %10, align 8
  %27 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.drm_display_info*, %struct.drm_display_info** %10, align 8
  %32 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.drm_display_info*, %struct.drm_display_info** %10, align 8
  %37 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %8, align 8
  %40 = getelementptr inbounds %struct.imx_crtc_state, %struct.imx_crtc_state* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  br label %50

41:                                               ; preds = %25, %3
  %42 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %9, align 8
  %43 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %9, align 8
  %46 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %8, align 8
  %49 = getelementptr inbounds %struct.imx_crtc_state, %struct.imx_crtc_state* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %41, %30
  %51 = load i32, i32* %11, align 4
  switch i32 %51, label %60 [
    i32 130, label %52
    i32 128, label %56
    i32 129, label %56
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* @MEDIA_BUS_FMT_RGB666_1X18, align 4
  %54 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %8, align 8
  %55 = getelementptr inbounds %struct.imx_crtc_state, %struct.imx_crtc_state* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %63

56:                                               ; preds = %50, %50
  %57 = load i32, i32* @MEDIA_BUS_FMT_RGB888_1X24, align 4
  %58 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %8, align 8
  %59 = getelementptr inbounds %struct.imx_crtc_state, %struct.imx_crtc_state* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  br label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %68

63:                                               ; preds = %56, %52
  %64 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %8, align 8
  %65 = getelementptr inbounds %struct.imx_crtc_state, %struct.imx_crtc_state* %64, i32 0, i32 0
  store i32 2, i32* %65, align 4
  %66 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %8, align 8
  %67 = getelementptr inbounds %struct.imx_crtc_state, %struct.imx_crtc_state* %66, i32 0, i32 1
  store i32 3, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.imx_crtc_state* @to_imx_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local %struct.imx_ldb_channel* @enc_to_imx_ldb_ch(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
