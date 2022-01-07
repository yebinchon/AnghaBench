; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstm_add_connector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstm_add_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_dp_mst_topology_mgr = type { i32 }
%struct.drm_dp_mst_port = type { i32 }
%struct.nv50_mstm = type { i32 }
%struct.nv50_mstc = type { %struct.drm_connector }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_connector* (%struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_port*, i8*)* @nv50_mstm_add_connector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_connector* @nv50_mstm_add_connector(%struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_port* %1, i8* %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_dp_mst_topology_mgr*, align 8
  %6 = alloca %struct.drm_dp_mst_port*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nv50_mstm*, align 8
  %9 = alloca %struct.nv50_mstc*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_dp_mst_topology_mgr* %0, %struct.drm_dp_mst_topology_mgr** %5, align 8
  store %struct.drm_dp_mst_port* %1, %struct.drm_dp_mst_port** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.drm_dp_mst_topology_mgr*, %struct.drm_dp_mst_topology_mgr** %5, align 8
  %12 = call %struct.nv50_mstm* @nv50_mstm(%struct.drm_dp_mst_topology_mgr* %11)
  store %struct.nv50_mstm* %12, %struct.nv50_mstm** %8, align 8
  %13 = load %struct.nv50_mstm*, %struct.nv50_mstm** %8, align 8
  %14 = load %struct.drm_dp_mst_port*, %struct.drm_dp_mst_port** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @nv50_mstc_new(%struct.nv50_mstm* %13, %struct.drm_dp_mst_port* %14, i8* %15, %struct.nv50_mstc** %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store %struct.drm_connector* null, %struct.drm_connector** %4, align 8
  br label %23

20:                                               ; preds = %3
  %21 = load %struct.nv50_mstc*, %struct.nv50_mstc** %9, align 8
  %22 = getelementptr inbounds %struct.nv50_mstc, %struct.nv50_mstc* %21, i32 0, i32 0
  store %struct.drm_connector* %22, %struct.drm_connector** %4, align 8
  br label %23

23:                                               ; preds = %20, %19
  %24 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  ret %struct.drm_connector* %24
}

declare dso_local %struct.nv50_mstm* @nv50_mstm(%struct.drm_dp_mst_topology_mgr*) #1

declare dso_local i32 @nv50_mstc_new(%struct.nv50_mstm*, %struct.drm_dp_mst_port*, i8*, %struct.nv50_mstc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
