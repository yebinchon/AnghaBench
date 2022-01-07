; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_cli_work_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_cli_work_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_cli = type { i32, i32 }
%struct.dma_fence = type { i32 }
%struct.nouveau_cli_work = type { i32, i32, %struct.nouveau_cli*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_cli_work_queue(%struct.nouveau_cli* %0, %struct.dma_fence* %1, %struct.nouveau_cli_work* %2) #0 {
  %4 = alloca %struct.nouveau_cli*, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca %struct.nouveau_cli_work*, align 8
  store %struct.nouveau_cli* %0, %struct.nouveau_cli** %4, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %5, align 8
  store %struct.nouveau_cli_work* %2, %struct.nouveau_cli_work** %6, align 8
  %7 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %8 = call i32 @dma_fence_get(%struct.dma_fence* %7)
  %9 = load %struct.nouveau_cli_work*, %struct.nouveau_cli_work** %6, align 8
  %10 = getelementptr inbounds %struct.nouveau_cli_work, %struct.nouveau_cli_work* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %12 = load %struct.nouveau_cli_work*, %struct.nouveau_cli_work** %6, align 8
  %13 = getelementptr inbounds %struct.nouveau_cli_work, %struct.nouveau_cli_work* %12, i32 0, i32 2
  store %struct.nouveau_cli* %11, %struct.nouveau_cli** %13, align 8
  %14 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %15 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.nouveau_cli_work*, %struct.nouveau_cli_work** %6, align 8
  %18 = getelementptr inbounds %struct.nouveau_cli_work, %struct.nouveau_cli_work* %17, i32 0, i32 1
  %19 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %20 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %19, i32 0, i32 1
  %21 = call i32 @list_add_tail(i32* %18, i32* %20)
  %22 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %23 = load %struct.nouveau_cli_work*, %struct.nouveau_cli_work** %6, align 8
  %24 = getelementptr inbounds %struct.nouveau_cli_work, %struct.nouveau_cli_work* %23, i32 0, i32 0
  %25 = call i64 @dma_fence_add_callback(%struct.dma_fence* %22, i32* %24, i32 (%struct.dma_fence*, i32*)* @nouveau_cli_work_fence)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %29 = load %struct.nouveau_cli_work*, %struct.nouveau_cli_work** %6, align 8
  %30 = getelementptr inbounds %struct.nouveau_cli_work, %struct.nouveau_cli_work* %29, i32 0, i32 0
  %31 = call i32 @nouveau_cli_work_fence(%struct.dma_fence* %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %3
  %33 = load %struct.nouveau_cli*, %struct.nouveau_cli** %4, align 8
  %34 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  ret void
}

declare dso_local i32 @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @dma_fence_add_callback(%struct.dma_fence*, i32*, i32 (%struct.dma_fence*, i32*)*) #1

declare dso_local i32 @nouveau_cli_work_fence(%struct.dma_fence*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
