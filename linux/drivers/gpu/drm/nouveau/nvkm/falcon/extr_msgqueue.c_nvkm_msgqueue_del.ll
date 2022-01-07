; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_nvkm_msgqueue_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_msgqueue.c_nvkm_msgqueue_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_msgqueue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_msgqueue*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_msgqueue_del(%struct.nvkm_msgqueue** %0) #0 {
  %2 = alloca %struct.nvkm_msgqueue**, align 8
  store %struct.nvkm_msgqueue** %0, %struct.nvkm_msgqueue*** %2, align 8
  %3 = load %struct.nvkm_msgqueue**, %struct.nvkm_msgqueue*** %2, align 8
  %4 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %3, align 8
  %5 = icmp ne %struct.nvkm_msgqueue* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load %struct.nvkm_msgqueue**, %struct.nvkm_msgqueue*** %2, align 8
  %8 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_msgqueue, %struct.nvkm_msgqueue* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.nvkm_msgqueue*)*, i32 (%struct.nvkm_msgqueue*)** %11, align 8
  %13 = load %struct.nvkm_msgqueue**, %struct.nvkm_msgqueue*** %2, align 8
  %14 = load %struct.nvkm_msgqueue*, %struct.nvkm_msgqueue** %13, align 8
  %15 = call i32 %12(%struct.nvkm_msgqueue* %14)
  %16 = load %struct.nvkm_msgqueue**, %struct.nvkm_msgqueue*** %2, align 8
  store %struct.nvkm_msgqueue* null, %struct.nvkm_msgqueue** %16, align 8
  br label %17

17:                                               ; preds = %6, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
