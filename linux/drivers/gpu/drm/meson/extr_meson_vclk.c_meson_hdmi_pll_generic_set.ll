; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vclk.c_meson_hdmi_pll_generic_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vclk.c_meson_hdmi_pll_generic_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"PLL params for %dkHz: m=%x frac=%x od=%d/%d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Fatal, unable to find parameters for PLL freq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_drm*, i32)* @meson_hdmi_pll_generic_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_hdmi_pll_generic_set(%struct.meson_drm* %0, i32 %1) #0 {
  %3 = alloca %struct.meson_drm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @meson_hdmi_pll_find_params(%struct.meson_drm* %11, i32 %12, i32* %6, i32* %7, i32* %5)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 2, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %25

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = udiv i32 %20, 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %9, align 4
  %24 = udiv i32 %22, %23
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %19, %18
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @meson_hdmi_pll_set_params(%struct.meson_drm* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  br label %43

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %25
  ret void
}

declare dso_local i64 @meson_hdmi_pll_find_params(%struct.meson_drm*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @meson_hdmi_pll_set_params(%struct.meson_drm*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
