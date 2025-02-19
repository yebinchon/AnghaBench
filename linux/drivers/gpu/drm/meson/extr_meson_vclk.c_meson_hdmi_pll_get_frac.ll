; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vclk.c_meson_hdmi_pll_get_frac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vclk.c_meson_hdmi_pll_get_frac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i32 }

@XTAL_FREQ = common dso_local global i32 0, align 4
@HDMI_FRAC_MAX_GXL = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_GXBB = common dso_local global i32 0, align 4
@HDMI_FRAC_MAX_GXBB = common dso_local global i32 0, align 4
@VPU_COMPATIBLE_G12A = common dso_local global i32 0, align 4
@HDMI_FRAC_MAX_G12A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_drm*, i32, i32)* @meson_hdmi_pll_get_frac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_hdmi_pll_get_frac(%struct.meson_drm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.meson_drm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @XTAL_FREQ, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @HDMI_FRAC_MAX_GXL, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %15 = load i32, i32* @VPU_COMPATIBLE_GXBB, align 4
  %16 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @HDMI_FRAC_MAX_GXBB, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = mul i32 %20, 2
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.meson_drm*, %struct.meson_drm** %5, align 8
  %24 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %25 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @HDMI_FRAC_MAX_G12A, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = udiv i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = urem i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %63

41:                                               ; preds = %35, %29
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @div_u64(i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %9, align 4
  %49 = mul i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %63

55:                                               ; preds = %41
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub i32 %60, 1
  %62 = call i32 @min(i32 %59, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %55, %53, %40
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @meson_vpu_is_compatible(%struct.meson_drm*, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
