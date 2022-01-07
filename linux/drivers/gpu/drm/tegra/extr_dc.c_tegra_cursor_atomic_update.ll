; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_cursor_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_cursor_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32, i32, i32, i32, i32, i32 }
%struct.tegra_bo = type { i32 }
%struct.tegra_dc = type { i32 }

@CURSOR_CLIP_DISPLAY = common dso_local global i32 0, align 4
@CURSOR_SIZE_32x32 = common dso_local global i32 0, align 4
@CURSOR_SIZE_64x64 = common dso_local global i32 0, align 4
@CURSOR_SIZE_128x128 = common dso_local global i32 0, align 4
@CURSOR_SIZE_256x256 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cursor size %ux%u not supported\0A\00", align 1
@DC_DISP_CURSOR_START_ADDR = common dso_local global i32 0, align 4
@DC_DISP_DISP_WIN_OPTIONS = common dso_local global i32 0, align 4
@CURSOR_ENABLE = common dso_local global i32 0, align 4
@DC_DISP_BLEND_CURSOR_CONTROL = common dso_local global i32 0, align 4
@CURSOR_DST_BLEND_MASK = common dso_local global i32 0, align 4
@CURSOR_SRC_BLEND_MASK = common dso_local global i32 0, align 4
@CURSOR_MODE_NORMAL = common dso_local global i32 0, align 4
@CURSOR_DST_BLEND_NEG_K1_TIMES_SRC = common dso_local global i32 0, align 4
@CURSOR_SRC_BLEND_K1_TIMES_SRC = common dso_local global i32 0, align 4
@CURSOR_ALPHA = common dso_local global i32 0, align 4
@DC_DISP_CURSOR_POSITION = common dso_local global i32 0, align 4
@DC_DISP_CURSOR_START_ADDR_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @tegra_cursor_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_cursor_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.tegra_bo*, align 8
  %6 = alloca %struct.tegra_dc*, align 8
  %7 = alloca %struct.drm_plane_state*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %9 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 0
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  %12 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.tegra_bo* @tegra_fb_get_plane(i32 %13, i32 0)
  store %struct.tegra_bo* %14, %struct.tegra_bo** %5, align 8
  %15 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %16 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %15, i32 0, i32 0
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %16, align 8
  %18 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.tegra_dc* @to_tegra_dc(i32 %19)
  store %struct.tegra_dc* %20, %struct.tegra_dc** %6, align 8
  %21 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %22 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %21, i32 0, i32 0
  %23 = load %struct.drm_plane_state*, %struct.drm_plane_state** %22, align 8
  store %struct.drm_plane_state* %23, %struct.drm_plane_state** %7, align 8
  %24 = load i32, i32* @CURSOR_CLIP_DISPLAY, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %26 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %25, i32 0, i32 0
  %27 = load %struct.drm_plane_state*, %struct.drm_plane_state** %26, align 8
  %28 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %33 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %32, i32 0, i32 0
  %34 = load %struct.drm_plane_state*, %struct.drm_plane_state** %33, align 8
  %35 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31, %2
  br label %130

39:                                               ; preds = %31
  %40 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %41 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %59 [
    i32 32, label %43
    i32 64, label %47
    i32 128, label %51
    i32 256, label %55
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* @CURSOR_SIZE_32x32, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %67

47:                                               ; preds = %39
  %48 = load i32, i32* @CURSOR_SIZE_64x64, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %67

51:                                               ; preds = %39
  %52 = load i32, i32* @CURSOR_SIZE_128x128, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %67

55:                                               ; preds = %39
  %56 = load i32, i32* @CURSOR_SIZE_256x256, align 4
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %67

59:                                               ; preds = %39
  %60 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %61 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %64 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65)
  br label %130

67:                                               ; preds = %55, %51, %47, %43
  %68 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %69 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 10
  %72 = and i32 %71, 4194303
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @DC_DISP_CURSOR_START_ADDR, align 4
  %78 = call i32 @tegra_dc_writel(%struct.tegra_dc* %75, i32 %76, i32 %77)
  %79 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %80 = load i32, i32* @DC_DISP_DISP_WIN_OPTIONS, align 4
  %81 = call i32 @tegra_dc_readl(%struct.tegra_dc* %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @CURSOR_ENABLE, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @DC_DISP_DISP_WIN_OPTIONS, align 4
  %88 = call i32 @tegra_dc_writel(%struct.tegra_dc* %85, i32 %86, i32 %87)
  %89 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %90 = load i32, i32* @DC_DISP_BLEND_CURSOR_CONTROL, align 4
  %91 = call i32 @tegra_dc_readl(%struct.tegra_dc* %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* @CURSOR_DST_BLEND_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* @CURSOR_SRC_BLEND_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %8, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* @CURSOR_MODE_NORMAL, align 4
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* @CURSOR_DST_BLEND_NEG_K1_TIMES_SRC, align 4
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* @CURSOR_SRC_BLEND_K1_TIMES_SRC, align 4
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @CURSOR_ALPHA, align 4
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @DC_DISP_BLEND_CURSOR_CONTROL, align 4
  %115 = call i32 @tegra_dc_writel(%struct.tegra_dc* %112, i32 %113, i32 %114)
  %116 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %117 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 16383
  %120 = shl i32 %119, 16
  %121 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %122 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 16383
  %125 = or i32 %120, %124
  store i32 %125, i32* %8, align 4
  %126 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @DC_DISP_CURSOR_POSITION, align 4
  %129 = call i32 @tegra_dc_writel(%struct.tegra_dc* %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %67, %59, %38
  ret void
}

declare dso_local %struct.tegra_bo* @tegra_fb_get_plane(i32, i32) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @tegra_dc_writel(%struct.tegra_dc*, i32, i32) #1

declare dso_local i32 @tegra_dc_readl(%struct.tegra_dc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
