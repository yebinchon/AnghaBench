; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_virtual.c_dce_virtual_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_virtual.c_dce_virtual_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.amdgpu_crtc** }
%struct.amdgpu_crtc = type { i32, i32, i32, i32*, i32*, i32 }

@AMDGPUFB_CONN_LIMIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dce_virtual_crtc_funcs = common dso_local global i32 0, align 4
@ATOM_PPLL_INVALID = common dso_local global i32 0, align 4
@AMDGPU_IRQ_STATE_DISABLE = common dso_local global i32 0, align 4
@dce_virtual_crtc_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @dce_virtual_crtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_virtual_crtc_init(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_crtc*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @AMDGPUFB_CONN_LIMIT, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = add i64 40, %9
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.amdgpu_crtc* @kzalloc(i32 %11, i32 %12)
  store %struct.amdgpu_crtc* %13, %struct.amdgpu_crtc** %6, align 8
  %14 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %15 = icmp eq %struct.amdgpu_crtc* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %23, i32 0, i32 1
  %25 = call i32 @drm_crtc_init(i32 %22, i32* %24, i32* @dce_virtual_crtc_funcs)
  %26 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %27 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %26, i32 0, i32 1
  %28 = call i32 @drm_mode_crtc_set_gamma_size(i32* %27, i32 256)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %31 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.amdgpu_crtc**, %struct.amdgpu_crtc*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %36, i64 %38
  store %struct.amdgpu_crtc* %32, %struct.amdgpu_crtc** %39, align 8
  %40 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %41 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %42 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %44 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %43, i32 0, i32 4
  store i32* null, i32** %44, align 8
  %45 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %46 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  %47 = load i32, i32* @AMDGPU_IRQ_STATE_DISABLE, align 4
  %48 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %49 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %51 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %50, i32 0, i32 1
  %52 = call i32 @drm_crtc_helper_add(i32* %51, i32* @dce_virtual_crtc_helper_funcs)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %19, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.amdgpu_crtc* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_crtc_init(i32, i32*, i32*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(i32*, i32) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
