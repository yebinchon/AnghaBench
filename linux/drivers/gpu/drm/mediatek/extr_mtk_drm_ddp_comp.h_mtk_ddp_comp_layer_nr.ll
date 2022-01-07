; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp_comp.h_mtk_ddp_comp_layer_nr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp_comp.h_mtk_ddp_comp_layer_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ddp_comp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_ddp_comp*)* @mtk_ddp_comp_layer_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_ddp_comp_layer_nr(%struct.mtk_ddp_comp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_ddp_comp*, align 8
  store %struct.mtk_ddp_comp* %0, %struct.mtk_ddp_comp** %3, align 8
  %4 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %3, align 8
  %5 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %3, align 8
  %10 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.mtk_ddp_comp*)**
  %14 = load i32 (%struct.mtk_ddp_comp*)*, i32 (%struct.mtk_ddp_comp*)** %13, align 8
  %15 = icmp ne i32 (%struct.mtk_ddp_comp*)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %3, align 8
  %18 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.mtk_ddp_comp*)**
  %22 = load i32 (%struct.mtk_ddp_comp*)*, i32 (%struct.mtk_ddp_comp*)** %21, align 8
  %23 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %3, align 8
  %24 = call i32 %22(%struct.mtk_ddp_comp* %23)
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
