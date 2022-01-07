; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.amdgpu_crtc** }
%struct.amdgpu_crtc = type { i32, i32, i32*, i32*, i64, i32, i32, i32, i32 }

@AMDGPUFB_CONN_LIMIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dce_v8_0_crtc_funcs = common dso_local global i32 0, align 4
@CIK_CURSOR_WIDTH = common dso_local global i32 0, align 4
@CIK_CURSOR_HEIGHT = common dso_local global i32 0, align 4
@crtc_offsets = common dso_local global i32* null, align 8
@ATOM_PPLL_INVALID = common dso_local global i32 0, align 4
@dce_v8_0_crtc_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @dce_v8_0_crtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v8_0_crtc_init(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_crtc*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @AMDGPUFB_CONN_LIMIT, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = add i64 48, %9
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
  br label %83

19:                                               ; preds = %2
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %23, i32 0, i32 1
  %25 = call i32 @drm_crtc_init(%struct.TYPE_6__* %22, i32* %24, i32* @dce_v8_0_crtc_funcs)
  %26 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %27 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %26, i32 0, i32 1
  %28 = call i32 @drm_mode_crtc_set_gamma_size(i32* %27, i32 256)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %31 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.amdgpu_crtc**, %struct.amdgpu_crtc*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %36, i64 %38
  store %struct.amdgpu_crtc* %32, %struct.amdgpu_crtc** %39, align 8
  %40 = load i32, i32* @CIK_CURSOR_WIDTH, align 4
  %41 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %42 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @CIK_CURSOR_HEIGHT, align 4
  %44 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %45 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  %46 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %47 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %48, i32* %53, align 4
  %54 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %55 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 4
  %62 = load i32*, i32** @crtc_offsets, align 8
  %63 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %64 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %70 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %72 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %73 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  %74 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %75 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %77 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %76, i32 0, i32 3
  store i32* null, i32** %77, align 8
  %78 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %79 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %81 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %80, i32 0, i32 1
  %82 = call i32 @drm_crtc_helper_add(i32* %81, i32* @dce_v8_0_crtc_helper_funcs)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %19, %16
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.amdgpu_crtc* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_crtc_init(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(i32*, i32) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
