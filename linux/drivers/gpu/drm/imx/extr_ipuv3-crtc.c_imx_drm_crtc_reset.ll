; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_imx_drm_crtc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_imx_drm_crtc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_crtc*, i64 }
%struct.imx_crtc_state = type { %struct.TYPE_2__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @imx_drm_crtc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_drm_crtc_reset(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.imx_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @drm_property_blob_put(i64 %20)
  br label %22

22:                                               ; preds = %15, %8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %24 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call %struct.imx_crtc_state* @to_imx_crtc_state(%struct.TYPE_2__* %25)
  store %struct.imx_crtc_state* %26, %struct.imx_crtc_state** %3, align 8
  %27 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %3, align 8
  %28 = call i32 @memset(%struct.imx_crtc_state* %27, i32 0, i32 16)
  br label %40

29:                                               ; preds = %1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.imx_crtc_state* @kzalloc(i32 16, i32 %30)
  store %struct.imx_crtc_state* %31, %struct.imx_crtc_state** %3, align 8
  %32 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %3, align 8
  %33 = icmp ne %struct.imx_crtc_state* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %45

35:                                               ; preds = %29
  %36 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %3, align 8
  %37 = getelementptr inbounds %struct.imx_crtc_state, %struct.imx_crtc_state* %36, i32 0, i32 0
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %39 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %38, i32 0, i32 0
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %39, align 8
  br label %40

40:                                               ; preds = %35, %22
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %42 = load %struct.imx_crtc_state*, %struct.imx_crtc_state** %3, align 8
  %43 = getelementptr inbounds %struct.imx_crtc_state, %struct.imx_crtc_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store %struct.drm_crtc* %41, %struct.drm_crtc** %44, align 8
  br label %45

45:                                               ; preds = %40, %34
  ret void
}

declare dso_local i32 @drm_property_blob_put(i64) #1

declare dso_local %struct.imx_crtc_state* @to_imx_crtc_state(%struct.TYPE_2__*) #1

declare dso_local i32 @memset(%struct.imx_crtc_state*, i32, i32) #1

declare dso_local %struct.imx_crtc_state* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
