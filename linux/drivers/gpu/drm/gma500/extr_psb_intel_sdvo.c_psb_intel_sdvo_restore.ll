; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_encoder = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32, i32, i32 }
%struct.psb_intel_sdvo = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.drm_encoder }

@connector_status_connected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @psb_intel_sdvo_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psb_intel_sdvo_restore(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.psb_intel_sdvo*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 1
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %11 = call %struct.TYPE_2__* @gma_attached_encoder(%struct.drm_connector* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.drm_encoder* %12, %struct.drm_encoder** %4, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %14 = call %struct.psb_intel_sdvo* @to_psb_intel_sdvo(%struct.drm_encoder* %13)
  store %struct.psb_intel_sdvo* %14, %struct.psb_intel_sdvo** %5, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 0
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %16, align 8
  store %struct.drm_crtc* %17, %struct.drm_crtc** %6, align 8
  %18 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %19 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %5, align 8
  %22 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @REG_WRITE(i32 %20, i32 %23)
  %25 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %26 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @connector_status_connected, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %1
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %33 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %32, i32 0, i32 2
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %38 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @drm_crtc_helper_set_mode(%struct.drm_crtc* %31, i32* %33, i32 %36, i32 %39, i32* null)
  br label %41

41:                                               ; preds = %30, %1
  ret void
}

declare dso_local %struct.TYPE_2__* @gma_attached_encoder(%struct.drm_connector*) #1

declare dso_local %struct.psb_intel_sdvo* @to_psb_intel_sdvo(%struct.drm_encoder*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @drm_crtc_helper_set_mode(%struct.drm_crtc*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
