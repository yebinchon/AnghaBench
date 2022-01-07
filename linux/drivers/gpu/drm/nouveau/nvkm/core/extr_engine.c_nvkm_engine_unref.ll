; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_engine.c_nvkm_engine_unref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_engine.c_nvkm_engine_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_engine_unref(%struct.nvkm_engine** %0) #0 {
  %2 = alloca %struct.nvkm_engine**, align 8
  %3 = alloca %struct.nvkm_engine*, align 8
  store %struct.nvkm_engine** %0, %struct.nvkm_engine*** %2, align 8
  %4 = load %struct.nvkm_engine**, %struct.nvkm_engine*** %2, align 8
  %5 = load %struct.nvkm_engine*, %struct.nvkm_engine** %4, align 8
  store %struct.nvkm_engine* %5, %struct.nvkm_engine** %3, align 8
  %6 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %7 = icmp ne %struct.nvkm_engine* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %14 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  %19 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %20 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %19, i32 0, i32 1
  %21 = call i32 @nvkm_subdev_fini(%struct.TYPE_2__* %20, i32 0)
  br label %22

22:                                               ; preds = %18, %8
  %23 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %24 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.nvkm_engine**, %struct.nvkm_engine*** %2, align 8
  store %struct.nvkm_engine* null, %struct.nvkm_engine** %27, align 8
  br label %28

28:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvkm_subdev_fini(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
