; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_sou_bo_populate_clip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_sou_bo_populate_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_du_update_plane = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.vmw_kms_sou_bo_blit = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@SVGA_CMD_BLIT_GMRFB_TO_SCREEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_du_update_plane*, i8*, %struct.drm_rect*, i32, i32)* @vmw_sou_bo_populate_clip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_sou_bo_populate_clip(%struct.vmw_du_update_plane* %0, i8* %1, %struct.drm_rect* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vmw_du_update_plane*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_rect*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmw_kms_sou_bo_blit*, align 8
  store %struct.vmw_du_update_plane* %0, %struct.vmw_du_update_plane** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.drm_rect* %2, %struct.drm_rect** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.vmw_kms_sou_bo_blit*
  store %struct.vmw_kms_sou_bo_blit* %13, %struct.vmw_kms_sou_bo_blit** %11, align 8
  %14 = load i32, i32* @SVGA_CMD_BLIT_GMRFB_TO_SCREEN, align 4
  %15 = load %struct.vmw_kms_sou_bo_blit*, %struct.vmw_kms_sou_bo_blit** %11, align 8
  %16 = getelementptr inbounds %struct.vmw_kms_sou_bo_blit, %struct.vmw_kms_sou_bo_blit* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.vmw_du_update_plane*, %struct.vmw_du_update_plane** %6, align 8
  %18 = getelementptr inbounds %struct.vmw_du_update_plane, %struct.vmw_du_update_plane* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vmw_kms_sou_bo_blit*, %struct.vmw_kms_sou_bo_blit** %11, align 8
  %23 = getelementptr inbounds %struct.vmw_kms_sou_bo_blit, %struct.vmw_kms_sou_bo_blit* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.vmw_kms_sou_bo_blit*, %struct.vmw_kms_sou_bo_blit** %11, align 8
  %27 = getelementptr inbounds %struct.vmw_kms_sou_bo_blit, %struct.vmw_kms_sou_bo_blit* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.vmw_kms_sou_bo_blit*, %struct.vmw_kms_sou_bo_blit** %11, align 8
  %32 = getelementptr inbounds %struct.vmw_kms_sou_bo_blit, %struct.vmw_kms_sou_bo_blit* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 4
  %35 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %36 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vmw_kms_sou_bo_blit*, %struct.vmw_kms_sou_bo_blit** %11, align 8
  %39 = getelementptr inbounds %struct.vmw_kms_sou_bo_blit, %struct.vmw_kms_sou_bo_blit* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  store i32 %37, i32* %41, align 4
  %42 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %43 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vmw_kms_sou_bo_blit*, %struct.vmw_kms_sou_bo_blit** %11, align 8
  %46 = getelementptr inbounds %struct.vmw_kms_sou_bo_blit, %struct.vmw_kms_sou_bo_blit* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  store i32 %44, i32* %48, align 4
  %49 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %50 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vmw_kms_sou_bo_blit*, %struct.vmw_kms_sou_bo_blit** %11, align 8
  %53 = getelementptr inbounds %struct.vmw_kms_sou_bo_blit, %struct.vmw_kms_sou_bo_blit* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  %56 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %57 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vmw_kms_sou_bo_blit*, %struct.vmw_kms_sou_bo_blit** %11, align 8
  %60 = getelementptr inbounds %struct.vmw_kms_sou_bo_blit, %struct.vmw_kms_sou_bo_blit* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  ret i32 32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
