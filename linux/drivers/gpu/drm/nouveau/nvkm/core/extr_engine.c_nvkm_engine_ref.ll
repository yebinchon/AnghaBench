; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_engine.c_nvkm_engine_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_engine.c_nvkm_engine_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvkm_engine* @nvkm_engine_ref(%struct.nvkm_engine* %0) #0 {
  %2 = alloca %struct.nvkm_engine*, align 8
  %3 = alloca %struct.nvkm_engine*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %3, align 8
  %5 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %6 = icmp ne %struct.nvkm_engine* %5, null
  br i1 %6, label %7, label %40

7:                                                ; preds = %1
  %8 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %35

17:                                               ; preds = %7
  %18 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %18, i32 0, i32 1
  %20 = call i32 @nvkm_subdev_init(%struct.TYPE_2__* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %25 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %29 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.nvkm_engine* @ERR_PTR(i32 %32)
  store %struct.nvkm_engine* %33, %struct.nvkm_engine** %2, align 8
  br label %42

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34, %7
  %36 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %37 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  br label %40

40:                                               ; preds = %35, %1
  %41 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  store %struct.nvkm_engine* %41, %struct.nvkm_engine** %2, align 8
  br label %42

42:                                               ; preds = %40, %23
  %43 = load %struct.nvkm_engine*, %struct.nvkm_engine** %2, align 8
  ret %struct.nvkm_engine* %43
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvkm_subdev_init(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.nvkm_engine* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
