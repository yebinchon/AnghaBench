; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_510.c_armada510_crtc_compute_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_510.c_armada510_crtc_compute_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_crtc = type { i32, %struct.armada510_variant_data* }
%struct.armada510_variant_data = type { i32, i32 }
%struct.drm_display_mode = type { i64 }
%struct.armada_clk_result = type { i32, i32, i32 }

@armada510_clocking = common dso_local global i32 0, align 4
@armada510_clk_sels = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.armada_crtc*, %struct.drm_display_mode*, i32*)* @armada510_crtc_compute_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada510_crtc_compute_clock(%struct.armada_crtc* %0, %struct.drm_display_mode* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.armada_crtc*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.armada510_variant_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.armada_clk_result, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.armada_crtc* %0, %struct.armada_crtc** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %14 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %13, i32 0, i32 1
  %15 = load %struct.armada510_variant_data*, %struct.armada510_variant_data** %14, align 8
  store %struct.armada510_variant_data* %15, %struct.armada510_variant_data** %8, align 8
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %20 = load %struct.armada510_variant_data*, %struct.armada510_variant_data** %8, align 8
  %21 = getelementptr inbounds %struct.armada510_variant_data, %struct.armada510_variant_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.armada510_variant_data*, %struct.armada510_variant_data** %8, align 8
  %24 = getelementptr inbounds %struct.armada510_variant_data, %struct.armada510_variant_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @armada_crtc_select_clock(%struct.armada_crtc* %19, %struct.armada_clk_result* %10, i32* @armada510_clocking, i32 %22, i32 %26, i64 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %4, align 4
  br label %73

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.armada_clk_result, %struct.armada_clk_result* %10, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_prepare_enable(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %73

41:                                               ; preds = %33
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %69

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.armada_clk_result, %struct.armada_clk_result* %10, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.armada_clk_result, %struct.armada_clk_result* %10, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_set_rate(i32 %46, i32 %48)
  %50 = getelementptr inbounds %struct.armada_clk_result, %struct.armada_clk_result* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** @armada510_clk_sels, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %51, %56
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.armada_clk_result, %struct.armada_clk_result* %10, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.armada510_variant_data*, %struct.armada510_variant_data** %8, align 8
  %62 = getelementptr inbounds %struct.armada510_variant_data, %struct.armada510_variant_data* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.armada_crtc*, %struct.armada_crtc** %5, align 8
  %64 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.armada_clk_result, %struct.armada_clk_result* %10, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @swap(i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %44, %41
  %70 = getelementptr inbounds %struct.armada_clk_result, %struct.armada_clk_result* %10, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @clk_disable_unprepare(i32 %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %39, %31
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @armada_crtc_select_clock(%struct.armada_crtc*, %struct.armada_clk_result*, i32*, i32, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
