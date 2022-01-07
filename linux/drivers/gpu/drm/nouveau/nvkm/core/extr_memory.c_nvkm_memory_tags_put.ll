; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_memory.c_nvkm_memory_tags_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_memory.c_nvkm_memory_tags_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_memory = type { i32* }
%struct.nvkm_device = type { %struct.nvkm_fb* }
%struct.nvkm_fb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_tags = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_memory_tags_put(%struct.nvkm_memory* %0, %struct.nvkm_device* %1, %struct.nvkm_tags** %2) #0 {
  %4 = alloca %struct.nvkm_memory*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.nvkm_tags**, align 8
  %7 = alloca %struct.nvkm_fb*, align 8
  %8 = alloca %struct.nvkm_tags*, align 8
  store %struct.nvkm_memory* %0, %struct.nvkm_memory** %4, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %5, align 8
  store %struct.nvkm_tags** %2, %struct.nvkm_tags*** %6, align 8
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %10 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %9, i32 0, i32 0
  %11 = load %struct.nvkm_fb*, %struct.nvkm_fb** %10, align 8
  store %struct.nvkm_fb* %11, %struct.nvkm_fb** %7, align 8
  %12 = load %struct.nvkm_tags**, %struct.nvkm_tags*** %6, align 8
  %13 = load %struct.nvkm_tags*, %struct.nvkm_tags** %12, align 8
  store %struct.nvkm_tags* %13, %struct.nvkm_tags** %8, align 8
  %14 = load %struct.nvkm_tags*, %struct.nvkm_tags** %8, align 8
  %15 = icmp ne %struct.nvkm_tags* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %3
  %17 = load %struct.nvkm_fb*, %struct.nvkm_fb** %7, align 8
  %18 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.nvkm_tags*, %struct.nvkm_tags** %8, align 8
  %22 = getelementptr inbounds %struct.nvkm_tags, %struct.nvkm_tags* %21, i32 0, i32 1
  %23 = call i64 @refcount_dec_and_test(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = load %struct.nvkm_fb*, %struct.nvkm_fb** %7, align 8
  %27 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %26, i32 0, i32 1
  %28 = load %struct.nvkm_tags*, %struct.nvkm_tags** %8, align 8
  %29 = getelementptr inbounds %struct.nvkm_tags, %struct.nvkm_tags* %28, i32 0, i32 0
  %30 = call i32 @nvkm_mm_free(i32* %27, i32* %29)
  %31 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %32 = getelementptr inbounds %struct.nvkm_memory, %struct.nvkm_memory* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %36 = getelementptr inbounds %struct.nvkm_memory, %struct.nvkm_memory* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %25, %16
  %38 = load %struct.nvkm_fb*, %struct.nvkm_fb** %7, align 8
  %39 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.nvkm_tags**, %struct.nvkm_tags*** %6, align 8
  store %struct.nvkm_tags* null, %struct.nvkm_tags** %42, align 8
  br label %43

43:                                               ; preds = %37, %3
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @nvkm_mm_free(i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
