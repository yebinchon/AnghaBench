; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_base.c_nvkm_bar_bar2_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_base.c_nvkm_bar_bar2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.nvkm_bar* }
%struct.nvkm_bar = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.nvkm_bar*)*, i32 (%struct.nvkm_bar*)* }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_bar_bar2_init(%struct.nvkm_device* %0) #0 {
  %2 = alloca %struct.nvkm_device*, align 8
  %3 = alloca %struct.nvkm_bar*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %2, align 8
  %4 = load %struct.nvkm_device*, %struct.nvkm_device** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %4, i32 0, i32 0
  %6 = load %struct.nvkm_bar*, %struct.nvkm_bar** %5, align 8
  store %struct.nvkm_bar* %6, %struct.nvkm_bar** %3, align 8
  %7 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %8 = icmp ne %struct.nvkm_bar* %7, null
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %9
  %16 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %17 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %15
  %21 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %22 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32 (%struct.nvkm_bar*)*, i32 (%struct.nvkm_bar*)** %25, align 8
  %27 = icmp ne i32 (%struct.nvkm_bar*)* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %20
  %29 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %30 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32 (%struct.nvkm_bar*)*, i32 (%struct.nvkm_bar*)** %33, align 8
  %35 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %36 = call i32 %34(%struct.nvkm_bar* %35)
  %37 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %38 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32 (%struct.nvkm_bar*)*, i32 (%struct.nvkm_bar*)** %41, align 8
  %43 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %44 = call i32 %42(%struct.nvkm_bar* %43)
  %45 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %46 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %28, %20, %15, %9, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
