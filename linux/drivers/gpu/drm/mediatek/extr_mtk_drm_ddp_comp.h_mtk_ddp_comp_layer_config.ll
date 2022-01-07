; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp_comp.h_mtk_ddp_comp_layer_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp_comp.h_mtk_ddp_comp_layer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ddp_comp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mtk_ddp_comp*, i32, %struct.mtk_plane_state*)* }
%struct.mtk_plane_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_ddp_comp*, i32, %struct.mtk_plane_state*)* @mtk_ddp_comp_layer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_ddp_comp_layer_config(%struct.mtk_ddp_comp* %0, i32 %1, %struct.mtk_plane_state* %2) #0 {
  %4 = alloca %struct.mtk_ddp_comp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_plane_state*, align 8
  store %struct.mtk_ddp_comp* %0, %struct.mtk_ddp_comp** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mtk_plane_state* %2, %struct.mtk_plane_state** %6, align 8
  %7 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %8 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %13 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.mtk_ddp_comp*, i32, %struct.mtk_plane_state*)*, i32 (%struct.mtk_ddp_comp*, i32, %struct.mtk_plane_state*)** %15, align 8
  %17 = icmp ne i32 (%struct.mtk_ddp_comp*, i32, %struct.mtk_plane_state*)* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.mtk_ddp_comp*, i32, %struct.mtk_plane_state*)*, i32 (%struct.mtk_ddp_comp*, i32, %struct.mtk_plane_state*)** %22, align 8
  %24 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %6, align 8
  %27 = call i32 %23(%struct.mtk_ddp_comp* %24, i32 %25, %struct.mtk_plane_state* %26)
  br label %28

28:                                               ; preds = %18, %11, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
