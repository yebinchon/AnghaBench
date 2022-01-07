; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mga_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.mga_crtc* }
%struct.mga_crtc = type { i32 }

@MGAG200FB_CONN_LIMIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mga_crtc_funcs = common dso_local global i32 0, align 4
@MGAG200_LUT_SIZE = common dso_local global i32 0, align 4
@mga_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mga_device*)* @mga_crtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_crtc_init(%struct.mga_device* %0) #0 {
  %2 = alloca %struct.mga_device*, align 8
  %3 = alloca %struct.mga_crtc*, align 8
  store %struct.mga_device* %0, %struct.mga_device** %2, align 8
  %4 = load i32, i32* @MGAG200FB_CONN_LIMIT, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 8
  %7 = add i64 4, %6
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mga_crtc* @kzalloc(i32 %8, i32 %9)
  store %struct.mga_crtc* %10, %struct.mga_crtc** %3, align 8
  %11 = load %struct.mga_crtc*, %struct.mga_crtc** %3, align 8
  %12 = icmp eq %struct.mga_crtc* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.mga_device*, %struct.mga_device** %2, align 8
  %16 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mga_crtc*, %struct.mga_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.mga_crtc, %struct.mga_crtc* %18, i32 0, i32 0
  %20 = call i32 @drm_crtc_init(i32 %17, i32* %19, i32* @mga_crtc_funcs)
  %21 = load %struct.mga_crtc*, %struct.mga_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.mga_crtc, %struct.mga_crtc* %21, i32 0, i32 0
  %23 = load i32, i32* @MGAG200_LUT_SIZE, align 4
  %24 = call i32 @drm_mode_crtc_set_gamma_size(i32* %22, i32 %23)
  %25 = load %struct.mga_crtc*, %struct.mga_crtc** %3, align 8
  %26 = load %struct.mga_device*, %struct.mga_device** %2, align 8
  %27 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.mga_crtc* %25, %struct.mga_crtc** %28, align 8
  %29 = load %struct.mga_crtc*, %struct.mga_crtc** %3, align 8
  %30 = getelementptr inbounds %struct.mga_crtc, %struct.mga_crtc* %29, i32 0, i32 0
  %31 = call i32 @drm_crtc_helper_add(i32* %30, i32* @mga_helper_funcs)
  br label %32

32:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.mga_crtc* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_crtc_init(i32, i32*, i32*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(i32*, i32) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
