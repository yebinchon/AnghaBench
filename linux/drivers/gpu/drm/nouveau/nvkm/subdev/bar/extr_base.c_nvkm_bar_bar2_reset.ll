; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_base.c_nvkm_bar_bar2_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_base.c_nvkm_bar_bar2_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.nvkm_bar* }
%struct.nvkm_bar = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.nvkm_bar*)*, i32 (%struct.nvkm_bar*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_bar_bar2_reset(%struct.nvkm_device* %0) #0 {
  %2 = alloca %struct.nvkm_device*, align 8
  %3 = alloca %struct.nvkm_bar*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %2, align 8
  %4 = load %struct.nvkm_device*, %struct.nvkm_device** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %4, i32 0, i32 0
  %6 = load %struct.nvkm_bar*, %struct.nvkm_bar** %5, align 8
  store %struct.nvkm_bar* %6, %struct.nvkm_bar** %3, align 8
  %7 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %8 = icmp ne %struct.nvkm_bar* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32 (%struct.nvkm_bar*)*, i32 (%struct.nvkm_bar*)** %19, align 8
  %21 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %22 = call i32 %20(%struct.nvkm_bar* %21)
  %23 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %24 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.nvkm_bar*)*, i32 (%struct.nvkm_bar*)** %27, align 8
  %29 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %30 = call i32 %28(%struct.nvkm_bar* %29)
  br label %31

31:                                               ; preds = %14, %9, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
