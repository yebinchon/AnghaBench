; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp_comp.h_mtk_ddp_comp_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp_comp.h_mtk_ddp_comp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ddp_comp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mtk_ddp_comp*, i32, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_ddp_comp*, i32, i32, i32, i32)* @mtk_ddp_comp_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_ddp_comp_config(%struct.mtk_ddp_comp* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mtk_ddp_comp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mtk_ddp_comp* %0, %struct.mtk_ddp_comp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %6, align 8
  %12 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %5
  %16 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %6, align 8
  %17 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.mtk_ddp_comp*, i32, i32, i32, i32)*, i32 (%struct.mtk_ddp_comp*, i32, i32, i32, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.mtk_ddp_comp*, i32, i32, i32, i32)* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %6, align 8
  %24 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.mtk_ddp_comp*, i32, i32, i32, i32)*, i32 (%struct.mtk_ddp_comp*, i32, i32, i32, i32)** %26, align 8
  %28 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 %27(%struct.mtk_ddp_comp* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %22, %15, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
