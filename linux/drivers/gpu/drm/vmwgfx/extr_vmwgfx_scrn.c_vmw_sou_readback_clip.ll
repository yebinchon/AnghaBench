; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_sou_readback_clip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_sou_readback_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_kms_dirty = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.vmw_kms_sou_readback_blit* }
%struct.TYPE_5__ = type { i32 }
%struct.vmw_kms_sou_readback_blit = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@SVGA_CMD_BLIT_SCREEN_TO_GMRFB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_kms_dirty*)* @vmw_sou_readback_clip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_sou_readback_clip(%struct.vmw_kms_dirty* %0) #0 {
  %2 = alloca %struct.vmw_kms_dirty*, align 8
  %3 = alloca %struct.vmw_kms_sou_readback_blit*, align 8
  store %struct.vmw_kms_dirty* %0, %struct.vmw_kms_dirty** %2, align 8
  %4 = load %struct.vmw_kms_dirty*, %struct.vmw_kms_dirty** %2, align 8
  %5 = getelementptr inbounds %struct.vmw_kms_dirty, %struct.vmw_kms_dirty* %4, i32 0, i32 8
  %6 = load %struct.vmw_kms_sou_readback_blit*, %struct.vmw_kms_sou_readback_blit** %5, align 8
  store %struct.vmw_kms_sou_readback_blit* %6, %struct.vmw_kms_sou_readback_blit** %3, align 8
  %7 = load %struct.vmw_kms_dirty*, %struct.vmw_kms_dirty** %2, align 8
  %8 = getelementptr inbounds %struct.vmw_kms_dirty, %struct.vmw_kms_dirty* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.vmw_kms_sou_readback_blit*, %struct.vmw_kms_sou_readback_blit** %3, align 8
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds %struct.vmw_kms_sou_readback_blit, %struct.vmw_kms_sou_readback_blit* %10, i64 %11
  store %struct.vmw_kms_sou_readback_blit* %12, %struct.vmw_kms_sou_readback_blit** %3, align 8
  %13 = load i32, i32* @SVGA_CMD_BLIT_SCREEN_TO_GMRFB, align 4
  %14 = load %struct.vmw_kms_sou_readback_blit*, %struct.vmw_kms_sou_readback_blit** %3, align 8
  %15 = getelementptr inbounds %struct.vmw_kms_sou_readback_blit, %struct.vmw_kms_sou_readback_blit* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.vmw_kms_dirty*, %struct.vmw_kms_dirty** %2, align 8
  %17 = getelementptr inbounds %struct.vmw_kms_dirty, %struct.vmw_kms_dirty* %16, i32 0, i32 7
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vmw_kms_sou_readback_blit*, %struct.vmw_kms_sou_readback_blit** %3, align 8
  %22 = getelementptr inbounds %struct.vmw_kms_sou_readback_blit, %struct.vmw_kms_sou_readback_blit* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load %struct.vmw_kms_dirty*, %struct.vmw_kms_dirty** %2, align 8
  %25 = getelementptr inbounds %struct.vmw_kms_dirty, %struct.vmw_kms_dirty* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vmw_kms_sou_readback_blit*, %struct.vmw_kms_sou_readback_blit** %3, align 8
  %28 = getelementptr inbounds %struct.vmw_kms_sou_readback_blit, %struct.vmw_kms_sou_readback_blit* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load %struct.vmw_kms_dirty*, %struct.vmw_kms_dirty** %2, align 8
  %32 = getelementptr inbounds %struct.vmw_kms_dirty, %struct.vmw_kms_dirty* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vmw_kms_sou_readback_blit*, %struct.vmw_kms_sou_readback_blit** %3, align 8
  %35 = getelementptr inbounds %struct.vmw_kms_sou_readback_blit, %struct.vmw_kms_sou_readback_blit* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.vmw_kms_dirty*, %struct.vmw_kms_dirty** %2, align 8
  %39 = getelementptr inbounds %struct.vmw_kms_dirty, %struct.vmw_kms_dirty* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.vmw_kms_sou_readback_blit*, %struct.vmw_kms_sou_readback_blit** %3, align 8
  %42 = getelementptr inbounds %struct.vmw_kms_sou_readback_blit, %struct.vmw_kms_sou_readback_blit* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  store i32 %40, i32* %44, align 4
  %45 = load %struct.vmw_kms_dirty*, %struct.vmw_kms_dirty** %2, align 8
  %46 = getelementptr inbounds %struct.vmw_kms_dirty, %struct.vmw_kms_dirty* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vmw_kms_sou_readback_blit*, %struct.vmw_kms_sou_readback_blit** %3, align 8
  %49 = getelementptr inbounds %struct.vmw_kms_sou_readback_blit, %struct.vmw_kms_sou_readback_blit* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 4
  %52 = load %struct.vmw_kms_dirty*, %struct.vmw_kms_dirty** %2, align 8
  %53 = getelementptr inbounds %struct.vmw_kms_dirty, %struct.vmw_kms_dirty* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.vmw_kms_sou_readback_blit*, %struct.vmw_kms_sou_readback_blit** %3, align 8
  %56 = getelementptr inbounds %struct.vmw_kms_sou_readback_blit, %struct.vmw_kms_sou_readback_blit* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  %59 = load %struct.vmw_kms_dirty*, %struct.vmw_kms_dirty** %2, align 8
  %60 = getelementptr inbounds %struct.vmw_kms_dirty, %struct.vmw_kms_dirty* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.vmw_kms_sou_readback_blit*, %struct.vmw_kms_sou_readback_blit** %3, align 8
  %63 = getelementptr inbounds %struct.vmw_kms_sou_readback_blit, %struct.vmw_kms_sou_readback_blit* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 4
  %66 = load %struct.vmw_kms_dirty*, %struct.vmw_kms_dirty** %2, align 8
  %67 = getelementptr inbounds %struct.vmw_kms_dirty, %struct.vmw_kms_dirty* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
