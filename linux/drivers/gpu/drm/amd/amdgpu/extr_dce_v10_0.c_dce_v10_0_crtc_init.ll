; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.amdgpu_crtc** }
%struct.amdgpu_crtc = type { i32, i32, i32, i32, i32*, i32*, i64, i32, i32 }

@AMDGPUFB_CONN_LIMIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dce_v10_0_crtc_funcs = common dso_local global i32 0, align 4
@CRTC0_REGISTER_OFFSET = common dso_local global i32 0, align 4
@CRTC1_REGISTER_OFFSET = common dso_local global i32 0, align 4
@CRTC2_REGISTER_OFFSET = common dso_local global i32 0, align 4
@CRTC3_REGISTER_OFFSET = common dso_local global i32 0, align 4
@CRTC4_REGISTER_OFFSET = common dso_local global i32 0, align 4
@CRTC5_REGISTER_OFFSET = common dso_local global i32 0, align 4
@ATOM_PPLL_INVALID = common dso_local global i32 0, align 4
@dce_v10_0_crtc_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @dce_v10_0_crtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v10_0_crtc_init(%struct.amdgpu_device* %0, i32 %1) #0 {
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
  br label %101

19:                                               ; preds = %2
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %23, i32 0, i32 3
  %25 = call i32 @drm_crtc_init(%struct.TYPE_6__* %22, i32* %24, i32* @dce_v10_0_crtc_funcs)
  %26 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %27 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %26, i32 0, i32 3
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
  %40 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %41 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %40, i32 0, i32 1
  store i32 128, i32* %41, align 4
  %42 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %43 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %42, i32 0, i32 2
  store i32 128, i32* %43, align 8
  %44 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %45 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 4
  %52 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %53 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %54, i32* %59, align 4
  %60 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %61 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %64 [
    i32 0, label %63
    i32 1, label %68
    i32 2, label %72
    i32 3, label %76
    i32 4, label %80
    i32 5, label %84
  ]

63:                                               ; preds = %19
  br label %64

64:                                               ; preds = %19, %63
  %65 = load i32, i32* @CRTC0_REGISTER_OFFSET, align 4
  %66 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %67 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 4
  br label %88

68:                                               ; preds = %19
  %69 = load i32, i32* @CRTC1_REGISTER_OFFSET, align 4
  %70 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %71 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 4
  br label %88

72:                                               ; preds = %19
  %73 = load i32, i32* @CRTC2_REGISTER_OFFSET, align 4
  %74 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %75 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 4
  br label %88

76:                                               ; preds = %19
  %77 = load i32, i32* @CRTC3_REGISTER_OFFSET, align 4
  %78 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %79 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 4
  br label %88

80:                                               ; preds = %19
  %81 = load i32, i32* @CRTC4_REGISTER_OFFSET, align 4
  %82 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %83 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 4
  br label %88

84:                                               ; preds = %19
  %85 = load i32, i32* @CRTC5_REGISTER_OFFSET, align 4
  %86 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %87 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %80, %76, %72, %68, %64
  %89 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %90 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %91 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 8
  %92 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %93 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %92, i32 0, i32 6
  store i64 0, i64* %93, align 8
  %94 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %95 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %94, i32 0, i32 5
  store i32* null, i32** %95, align 8
  %96 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %97 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %96, i32 0, i32 4
  store i32* null, i32** %97, align 8
  %98 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %99 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %98, i32 0, i32 3
  %100 = call i32 @drm_crtc_helper_add(i32* %99, i32* @dce_v10_0_crtc_helper_funcs)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %88, %16
  %102 = load i32, i32* %3, align 4
  ret i32 %102
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
