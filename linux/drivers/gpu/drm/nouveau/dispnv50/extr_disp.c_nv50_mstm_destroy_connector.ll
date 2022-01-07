; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstm_destroy_connector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstm_destroy_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_mst_topology_mgr = type { i32 }
%struct.drm_connector = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nv50_mstc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_dp_mst_topology_mgr*, %struct.drm_connector*)* @nv50_mstm_destroy_connector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_mstm_destroy_connector(%struct.drm_dp_mst_topology_mgr* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nv50_mstc*, align 8
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nouveau_drm* @nouveau_drm(i32 %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %5, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call %struct.nv50_mstc* @nv50_mstc(%struct.drm_connector* %11)
  store %struct.nv50_mstc* %12, %struct.nv50_mstc** %6, align 8
  %13 = load %struct.nv50_mstc*, %struct.nv50_mstc** %6, align 8
  %14 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %13, i32 0, i32 0
  %15 = call i32 @drm_connector_unregister(i32* %14)
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.nv50_mstc*, %struct.nv50_mstc** %6, align 8
  %21 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %20, i32 0, i32 0
  %22 = call i32 @drm_fb_helper_remove_one_connector(i32* %19, i32* %21)
  %23 = load %struct.nv50_mstc*, %struct.nv50_mstc** %6, align 8
  %24 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %23, i32 0, i32 0
  %25 = call i32 @drm_connector_put(i32* %24)
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local %struct.nv50_mstc* @nv50_mstc(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_unregister(i32*) #1

declare dso_local i32 @drm_fb_helper_remove_one_connector(i32*, i32*) #1

declare dso_local i32 @drm_connector_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
