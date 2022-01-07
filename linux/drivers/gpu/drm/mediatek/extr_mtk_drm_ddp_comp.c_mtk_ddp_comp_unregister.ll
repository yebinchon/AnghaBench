; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp_comp.c_mtk_ddp_comp_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp_comp.c_mtk_ddp_comp_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.mtk_drm_private* }
%struct.mtk_drm_private = type { i32** }
%struct.mtk_ddp_comp = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_ddp_comp_unregister(%struct.drm_device* %0, %struct.mtk_ddp_comp* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.mtk_ddp_comp*, align 8
  %5 = alloca %struct.mtk_drm_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.mtk_ddp_comp* %1, %struct.mtk_ddp_comp** %4, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %7, align 8
  store %struct.mtk_drm_private* %8, %struct.mtk_drm_private** %5, align 8
  %9 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %5, align 8
  %10 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %9, i32 0, i32 0
  %11 = load i32**, i32*** %10, align 8
  %12 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %13 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32*, i32** %11, i64 %14
  store i32* null, i32** %15, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
