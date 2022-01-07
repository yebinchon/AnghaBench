; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_memory.c_nvkm_memory_tags_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_memory.c_nvkm_memory_tags_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_memory = type { %struct.nvkm_tags* }
%struct.nvkm_tags = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.nvkm_device = type { %struct.nvkm_fb* }
%struct.nvkm_fb = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_memory_tags_get(%struct.nvkm_memory* %0, %struct.nvkm_device* %1, i64 %2, void (%struct.nvkm_device*, i64, i64)* %3, %struct.nvkm_tags** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_memory*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca void (%struct.nvkm_device*, i64, i64)*, align 8
  %11 = alloca %struct.nvkm_tags**, align 8
  %12 = alloca %struct.nvkm_fb*, align 8
  %13 = alloca %struct.nvkm_tags*, align 8
  store %struct.nvkm_memory* %0, %struct.nvkm_memory** %7, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store void (%struct.nvkm_device*, i64, i64)* %3, void (%struct.nvkm_device*, i64, i64)** %10, align 8
  store %struct.nvkm_tags** %4, %struct.nvkm_tags*** %11, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %15 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %14, i32 0, i32 0
  %16 = load %struct.nvkm_fb*, %struct.nvkm_fb** %15, align 8
  store %struct.nvkm_fb* %16, %struct.nvkm_fb** %12, align 8
  %17 = load %struct.nvkm_fb*, %struct.nvkm_fb** %12, align 8
  %18 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.nvkm_memory*, %struct.nvkm_memory** %7, align 8
  %22 = getelementptr inbounds %struct.nvkm_memory, %struct.nvkm_memory* %21, i32 0, i32 0
  %23 = load %struct.nvkm_tags*, %struct.nvkm_tags** %22, align 8
  store %struct.nvkm_tags* %23, %struct.nvkm_tags** %13, align 8
  %24 = icmp ne %struct.nvkm_tags* %23, null
  br i1 %24, label %25, label %55

25:                                               ; preds = %5
  %26 = load %struct.nvkm_tags*, %struct.nvkm_tags** %13, align 8
  %27 = getelementptr inbounds %struct.nvkm_tags, %struct.nvkm_tags* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.nvkm_tags*, %struct.nvkm_tags** %13, align 8
  %32 = getelementptr inbounds %struct.nvkm_tags, %struct.nvkm_tags* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.nvkm_fb*, %struct.nvkm_fb** %12, align 8
  %40 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %105

45:                                               ; preds = %30, %25
  %46 = load %struct.nvkm_tags*, %struct.nvkm_tags** %13, align 8
  %47 = getelementptr inbounds %struct.nvkm_tags, %struct.nvkm_tags* %46, i32 0, i32 0
  %48 = call i32 @refcount_inc(i32* %47)
  %49 = load %struct.nvkm_fb*, %struct.nvkm_fb** %12, align 8
  %50 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.nvkm_tags*, %struct.nvkm_tags** %13, align 8
  %54 = load %struct.nvkm_tags**, %struct.nvkm_tags*** %11, align 8
  store %struct.nvkm_tags* %53, %struct.nvkm_tags** %54, align 8
  store i32 0, i32* %6, align 4
  br label %105

55:                                               ; preds = %5
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.nvkm_tags* @kmalloc(i32 16, i32 %56)
  store %struct.nvkm_tags* %57, %struct.nvkm_tags** %13, align 8
  %58 = icmp ne %struct.nvkm_tags* %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load %struct.nvkm_fb*, %struct.nvkm_fb** %12, align 8
  %61 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %105

66:                                               ; preds = %55
  %67 = load %struct.nvkm_fb*, %struct.nvkm_fb** %12, align 8
  %68 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %67, i32 0, i32 1
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.nvkm_tags*, %struct.nvkm_tags** %13, align 8
  %72 = getelementptr inbounds %struct.nvkm_tags, %struct.nvkm_tags* %71, i32 0, i32 1
  %73 = call i32 @nvkm_mm_head(i32* %68, i32 0, i32 1, i64 %69, i64 %70, i32 1, %struct.TYPE_4__** %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %66
  %76 = load void (%struct.nvkm_device*, i64, i64)*, void (%struct.nvkm_device*, i64, i64)** %10, align 8
  %77 = icmp ne void (%struct.nvkm_device*, i64, i64)* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load void (%struct.nvkm_device*, i64, i64)*, void (%struct.nvkm_device*, i64, i64)** %10, align 8
  %80 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %81 = load %struct.nvkm_tags*, %struct.nvkm_tags** %13, align 8
  %82 = getelementptr inbounds %struct.nvkm_tags, %struct.nvkm_tags* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.nvkm_tags*, %struct.nvkm_tags** %13, align 8
  %87 = getelementptr inbounds %struct.nvkm_tags, %struct.nvkm_tags* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  call void %79(%struct.nvkm_device* %80, i64 %85, i64 %90)
  br label %91

91:                                               ; preds = %78, %75
  br label %95

92:                                               ; preds = %66
  %93 = load %struct.nvkm_tags*, %struct.nvkm_tags** %13, align 8
  %94 = getelementptr inbounds %struct.nvkm_tags, %struct.nvkm_tags* %93, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %94, align 8
  br label %95

95:                                               ; preds = %92, %91
  %96 = load %struct.nvkm_tags*, %struct.nvkm_tags** %13, align 8
  %97 = getelementptr inbounds %struct.nvkm_tags, %struct.nvkm_tags* %96, i32 0, i32 0
  %98 = call i32 @refcount_set(i32* %97, i32 1)
  %99 = load %struct.nvkm_fb*, %struct.nvkm_fb** %12, align 8
  %100 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load %struct.nvkm_tags*, %struct.nvkm_tags** %13, align 8
  %104 = load %struct.nvkm_tags**, %struct.nvkm_tags*** %11, align 8
  store %struct.nvkm_tags* %103, %struct.nvkm_tags** %104, align 8
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %95, %59, %45, %38
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local %struct.nvkm_tags* @kmalloc(i32, i32) #1

declare dso_local i32 @nvkm_mm_head(i32*, i32, i32, i64, i64, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
