; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_radeon_atombios_init_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_radeon_atombios_init_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32, i32, i32*, i32*, i64, i32, i64 }

@EVERGREEN_CRTC0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC2_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC3_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC4_REGISTER_OFFSET = common dso_local global i64 0, align 8
@EVERGREEN_CRTC5_REGISTER_OFFSET = common dso_local global i64 0, align 8
@AVIVO_D2CRTC_H_TOTAL = common dso_local global i64 0, align 8
@AVIVO_D1CRTC_H_TOTAL = common dso_local global i64 0, align 8
@ATOM_PPLL_INVALID = common dso_local global i32 0, align 4
@atombios_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_atombios_init_crtc(%struct.drm_device* %0, %struct.radeon_crtc* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_crtc*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.radeon_crtc* %1, %struct.radeon_crtc** %4, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  store %struct.radeon_device* %8, %struct.radeon_device** %5, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %10 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  %13 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %14 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %17 [
    i32 0, label %16
    i32 1, label %21
    i32 2, label %25
    i32 3, label %29
    i32 4, label %33
    i32 5, label %37
  ]

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %12, %16
  %18 = load i64, i64* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 8
  %19 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %19, i32 0, i32 6
  store i64 %18, i64* %20, align 8
  br label %41

21:                                               ; preds = %12
  %22 = load i64, i64* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 8
  %23 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %24 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %23, i32 0, i32 6
  store i64 %22, i64* %24, align 8
  br label %41

25:                                               ; preds = %12
  %26 = load i64, i64* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 8
  %27 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %27, i32 0, i32 6
  store i64 %26, i64* %28, align 8
  br label %41

29:                                               ; preds = %12
  %30 = load i64, i64* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 8
  %31 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %32 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %31, i32 0, i32 6
  store i64 %30, i64* %32, align 8
  br label %41

33:                                               ; preds = %12
  %34 = load i64, i64* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 8
  %35 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %36 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %35, i32 0, i32 6
  store i64 %34, i64* %36, align 8
  br label %41

37:                                               ; preds = %12
  %38 = load i64, i64* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 8
  %39 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %40 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %39, i32 0, i32 6
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %33, %29, %25, %21, %17
  br label %57

42:                                               ; preds = %2
  %43 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %44 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i64, i64* @AVIVO_D2CRTC_H_TOTAL, align 8
  %49 = load i64, i64* @AVIVO_D1CRTC_H_TOTAL, align 8
  %50 = sub nsw i64 %48, %49
  %51 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %52 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %51, i32 0, i32 6
  store i64 %50, i64* %52, align 8
  br label %56

53:                                               ; preds = %42
  %54 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %55 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %47
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i32, i32* @ATOM_PPLL_INVALID, align 4
  %59 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %60 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %62 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %64 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %63, i32 0, i32 3
  store i32* null, i32** %64, align 8
  %65 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %66 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  %67 = load %struct.radeon_crtc*, %struct.radeon_crtc** %4, align 8
  %68 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %67, i32 0, i32 1
  %69 = call i32 @drm_crtc_helper_add(i32* %68, i32* @atombios_helper_funcs)
  ret void
}

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
