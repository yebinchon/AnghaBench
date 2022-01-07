; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_cursor.c_sti_cursor_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_cursor.c_sti_cursor_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32, i32, %struct.drm_framebuffer*, %struct.drm_crtc* }
%struct.drm_framebuffer = type { i32 }
%struct.drm_crtc = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }
%struct.sti_plane = type { i32 }
%struct.sti_cursor = type { i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_gem_cma_object = type { i64 }

@CUR_AWS = common dso_local global i64 0, align 8
@CUR_AWE = common dso_local global i64 0, align 8
@CUR_PML = common dso_local global i64 0, align 8
@CUR_PMP = common dso_local global i64 0, align 8
@CUR_SIZE = common dso_local global i64 0, align 8
@CUR_VPO = common dso_local global i64 0, align 8
@CUR_CML = common dso_local global i64 0, align 8
@CUR_CTL_CLUT_UPDATE = common dso_local global i32 0, align 4
@CUR_CTL = common dso_local global i64 0, align 8
@STI_PLANE_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @sti_cursor_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_cursor_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.sti_plane*, align 8
  %7 = alloca %struct.sti_cursor*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_gem_cma_object*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 0
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %18, align 8
  store %struct.drm_plane_state* %19, %struct.drm_plane_state** %5, align 8
  %20 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %21 = call %struct.sti_plane* @to_sti_plane(%struct.drm_plane* %20)
  store %struct.sti_plane* %21, %struct.sti_plane** %6, align 8
  %22 = load %struct.sti_plane*, %struct.sti_plane** %6, align 8
  %23 = call %struct.sti_cursor* @to_sti_cursor(%struct.sti_plane* %22)
  store %struct.sti_cursor* %23, %struct.sti_cursor** %7, align 8
  %24 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %25 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 3
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %25, align 8
  store %struct.drm_crtc* %26, %struct.drm_crtc** %8, align 8
  %27 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %28 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %27, i32 0, i32 2
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %28, align 8
  store %struct.drm_framebuffer* %29, %struct.drm_framebuffer** %9, align 8
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %31 = icmp ne %struct.drm_crtc* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %34 = icmp ne %struct.drm_framebuffer* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %2
  br label %173

36:                                               ; preds = %32
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %38 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %37, i32 0, i32 0
  store %struct.drm_display_mode* %38, %struct.drm_display_mode** %10, align 8
  %39 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %40 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %11, align 4
  %42 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %43 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %46 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %45, i32 0)
  store %struct.drm_gem_cma_object* %46, %struct.drm_gem_cma_object** %13, align 8
  %47 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %48 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %13, align 8
  %49 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = call i32 @sti_cursor_argb8888_to_clut8(%struct.sti_cursor* %47, i32* %51)
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %54 = bitcast %struct.drm_display_mode* %53 to i64*
  %55 = load i64, i64* %54, align 4
  %56 = call i32 @sti_vtg_get_line_number(i64 %55, i32 0)
  store i32 %56, i32* %14, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %58 = bitcast %struct.drm_display_mode* %57 to i64*
  %59 = load i64, i64* %58, align 4
  %60 = call i32 @sti_vtg_get_pixel_number(i64 %59, i32 0)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %14, align 4
  %62 = shl i32 %61, 16
  %63 = load i32, i32* %15, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %67 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CUR_AWS, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  %77 = bitcast %struct.drm_display_mode* %72 to i64*
  %78 = load i64, i64* %77, align 4
  %79 = call i32 @sti_vtg_get_line_number(i64 %78, i32 %76)
  store i32 %79, i32* %14, align 4
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = bitcast %struct.drm_display_mode* %80 to i64*
  %86 = load i64, i64* %85, align 4
  %87 = call i32 @sti_vtg_get_pixel_number(i64 %86, i32 %84)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %14, align 4
  %89 = shl i32 %88, 16
  %90 = load i32, i32* %15, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %94 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CUR_AWE, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  %99 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %100 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %104 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CUR_PML, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 %102, i64 %107)
  %109 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %110 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %113 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CUR_PMP, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 %111, i64 %116)
  %118 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %119 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 16
  %122 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %123 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %121, %124
  %126 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %127 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @CUR_SIZE, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @writel(i32 %125, i64 %130)
  %132 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %133 = load i32, i32* %12, align 4
  %134 = bitcast %struct.drm_display_mode* %132 to i64*
  %135 = load i64, i64* %134, align 4
  %136 = call i32 @sti_vtg_get_line_number(i64 %135, i32 %133)
  store i32 %136, i32* %14, align 4
  %137 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %138 = load i32, i32* %11, align 4
  %139 = bitcast %struct.drm_display_mode* %137 to i64*
  %140 = load i64, i64* %139, align 4
  %141 = call i32 @sti_vtg_get_pixel_number(i64 %140, i32 %138)
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %14, align 4
  %143 = shl i32 %142, 16
  %144 = load i32, i32* %15, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %147 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @CUR_VPO, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @writel(i32 %145, i64 %150)
  %152 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %153 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %156 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @CUR_CML, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @writel(i32 %154, i64 %159)
  %161 = load i32, i32* @CUR_CTL_CLUT_UPDATE, align 4
  %162 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %163 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @CUR_CTL, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @writel(i32 %161, i64 %166)
  %168 = load %struct.sti_plane*, %struct.sti_plane** %6, align 8
  %169 = call i32 @sti_plane_update_fps(%struct.sti_plane* %168, i32 1, i32 0)
  %170 = load i32, i32* @STI_PLANE_UPDATED, align 4
  %171 = load %struct.sti_plane*, %struct.sti_plane** %6, align 8
  %172 = getelementptr inbounds %struct.sti_plane, %struct.sti_plane* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %36, %35
  ret void
}

declare dso_local %struct.sti_plane* @to_sti_plane(%struct.drm_plane*) #1

declare dso_local %struct.sti_cursor* @to_sti_cursor(%struct.sti_plane*) #1

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @sti_cursor_argb8888_to_clut8(%struct.sti_cursor*, i32*) #1

declare dso_local i32 @sti_vtg_get_line_number(i64, i32) #1

declare dso_local i32 @sti_vtg_get_pixel_number(i64, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sti_plane_update_fps(%struct.sti_plane*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
