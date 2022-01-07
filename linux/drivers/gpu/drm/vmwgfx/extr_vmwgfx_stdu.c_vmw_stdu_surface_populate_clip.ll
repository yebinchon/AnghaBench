; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_surface_populate_clip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_surface_populate_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_du_update_plane = type { i32 }
%struct.drm_rect = type { i32, i32 }
%struct.SVGA3dCopyBox = type { i32, i32, i32, i32, i32, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_du_update_plane*, i8*, %struct.drm_rect*, i32, i32)* @vmw_stdu_surface_populate_clip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_stdu_surface_populate_clip(%struct.vmw_du_update_plane* %0, i8* %1, %struct.drm_rect* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vmw_du_update_plane*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_rect*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.SVGA3dCopyBox*, align 8
  store %struct.vmw_du_update_plane* %0, %struct.vmw_du_update_plane** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.drm_rect* %2, %struct.drm_rect** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.SVGA3dCopyBox*
  store %struct.SVGA3dCopyBox* %13, %struct.SVGA3dCopyBox** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.SVGA3dCopyBox*, %struct.SVGA3dCopyBox** %11, align 8
  %16 = getelementptr inbounds %struct.SVGA3dCopyBox, %struct.SVGA3dCopyBox* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.SVGA3dCopyBox*, %struct.SVGA3dCopyBox** %11, align 8
  %19 = getelementptr inbounds %struct.SVGA3dCopyBox, %struct.SVGA3dCopyBox* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.SVGA3dCopyBox*, %struct.SVGA3dCopyBox** %11, align 8
  %21 = getelementptr inbounds %struct.SVGA3dCopyBox, %struct.SVGA3dCopyBox* %20, i32 0, i32 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %23 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.SVGA3dCopyBox*, %struct.SVGA3dCopyBox** %11, align 8
  %26 = getelementptr inbounds %struct.SVGA3dCopyBox, %struct.SVGA3dCopyBox* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %28 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.SVGA3dCopyBox*, %struct.SVGA3dCopyBox** %11, align 8
  %31 = getelementptr inbounds %struct.SVGA3dCopyBox, %struct.SVGA3dCopyBox* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.SVGA3dCopyBox*, %struct.SVGA3dCopyBox** %11, align 8
  %33 = getelementptr inbounds %struct.SVGA3dCopyBox, %struct.SVGA3dCopyBox* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %35 = call i32 @drm_rect_width(%struct.drm_rect* %34)
  %36 = load %struct.SVGA3dCopyBox*, %struct.SVGA3dCopyBox** %11, align 8
  %37 = getelementptr inbounds %struct.SVGA3dCopyBox, %struct.SVGA3dCopyBox* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %39 = call i32 @drm_rect_height(%struct.drm_rect* %38)
  %40 = load %struct.SVGA3dCopyBox*, %struct.SVGA3dCopyBox** %11, align 8
  %41 = getelementptr inbounds %struct.SVGA3dCopyBox, %struct.SVGA3dCopyBox* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.SVGA3dCopyBox*, %struct.SVGA3dCopyBox** %11, align 8
  %43 = getelementptr inbounds %struct.SVGA3dCopyBox, %struct.SVGA3dCopyBox* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  ret i32 48
}

declare dso_local i32 @drm_rect_width(%struct.drm_rect*) #1

declare dso_local i32 @drm_rect_height(%struct.drm_rect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
