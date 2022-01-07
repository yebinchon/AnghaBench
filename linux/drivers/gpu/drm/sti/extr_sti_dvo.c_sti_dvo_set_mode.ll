; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_dvo.c_sti_dvo_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_dvo.c_sti_dvo_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.sti_dvo* }
%struct.sti_dvo = type { i32*, i32, i32, %struct.clk*, %struct.clk*, i32, %struct.TYPE_2__* }
%struct.clk = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.sti_mixer = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@STI_MIXER_MAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Cannot set rate (%dHz) for dvo_pix clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Cannot set rate (%dHz) for dvo clk\0A\00", align 1
@rgb_24bit_de_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @sti_dvo_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_dvo_set_mode(%struct.drm_bridge* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.sti_dvo*, align 8
  %8 = alloca %struct.sti_mixer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %12 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %13 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %12, i32 0, i32 0
  %14 = load %struct.sti_dvo*, %struct.sti_dvo** %13, align 8
  store %struct.sti_dvo* %14, %struct.sti_dvo** %7, align 8
  %15 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %16 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %15, i32 0, i32 6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sti_mixer* @to_sti_mixer(i32 %19)
  store %struct.sti_mixer* %20, %struct.sti_mixer** %8, align 8
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 1000
  store i32 %24, i32* %9, align 4
  %25 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %27 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %26, i32 0, i32 5
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %29 = call i32 @memcpy(i32* %27, %struct.drm_display_mode* %28, i32 4)
  %30 = load %struct.sti_mixer*, %struct.sti_mixer** %8, align 8
  %31 = getelementptr inbounds %struct.sti_mixer, %struct.sti_mixer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @STI_MIXER_MAIN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %3
  %36 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %37 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %36, i32 0, i32 4
  %38 = load %struct.clk*, %struct.clk** %37, align 8
  store %struct.clk* %38, %struct.clk** %10, align 8
  br label %43

39:                                               ; preds = %3
  %40 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %41 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %40, i32 0, i32 3
  %42 = load %struct.clk*, %struct.clk** %41, align 8
  store %struct.clk* %42, %struct.clk** %10, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.clk*, %struct.clk** %10, align 8
  %45 = icmp ne %struct.clk* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %48 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.clk*, %struct.clk** %10, align 8
  %51 = call i32 @clk_set_parent(i32 %49, %struct.clk* %50)
  %52 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %53 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.clk*, %struct.clk** %10, align 8
  %56 = call i32 @clk_set_parent(i32 %54, %struct.clk* %55)
  br label %57

57:                                               ; preds = %46, %43
  %58 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %59 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @clk_set_rate(i32 %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %82

68:                                               ; preds = %57
  %69 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %70 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @clk_set_rate(i32 %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %82

79:                                               ; preds = %68
  %80 = load %struct.sti_dvo*, %struct.sti_dvo** %7, align 8
  %81 = getelementptr inbounds %struct.sti_dvo, %struct.sti_dvo* %80, i32 0, i32 0
  store i32* @rgb_24bit_de_cfg, i32** %81, align 8
  br label %82

82:                                               ; preds = %79, %76, %65
  ret void
}

declare dso_local %struct.sti_mixer* @to_sti_mixer(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.drm_display_mode*, i32) #1

declare dso_local i32 @clk_set_parent(i32, %struct.clk*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
