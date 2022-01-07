; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_pages_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_pages_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_dmem_chunk = type { i64, i32, i32, i32 }

@DMEM_CHUNK_NPAGES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_drm*, i64, i64*)* @nouveau_dmem_pages_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_dmem_pages_alloc(%struct.nouveau_drm* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.nouveau_dmem_chunk*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = mul i64 %13, 8
  %15 = call i32 @memset(i64* %12, i32 255, i64 %14)
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %97, %46, %3
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %101

25:                                               ; preds = %21
  %26 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %27 = call %struct.nouveau_dmem_chunk* @nouveau_dmem_chunk_first_free_locked(%struct.nouveau_drm* %26)
  store %struct.nouveau_dmem_chunk* %27, %struct.nouveau_dmem_chunk** %8, align 8
  %28 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %8, align 8
  %29 = icmp eq %struct.nouveau_dmem_chunk* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %32 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %37 = call i32 @nouveau_dmem_chunk_alloc(%struct.nouveau_drm* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %107

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %107

46:                                               ; preds = %30
  %47 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %48 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  br label %21

52:                                               ; preds = %25
  %53 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %8, align 8
  %54 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %53, i32 0, i32 1
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %8, align 8
  %57 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* @DMEM_CHUNK_NPAGES, align 8
  %60 = call i64 @find_first_zero_bit(i32 %58, i64 %59)
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %71, %52
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @DMEM_CHUNK_NPAGES, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ult i64 %66, %67
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i1 [ false, %61 ], [ %68, %65 ]
  br i1 %70, label %71, label %97

71:                                               ; preds = %69
  %72 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %8, align 8
  %73 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %74, %75
  %77 = load i64*, i64** %7, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 %76, i64* %79, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %8, align 8
  %82 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @set_bit(i64 %80, i32 %83)
  %85 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %8, align 8
  %86 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load i64, i64* %9, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %9, align 8
  %91 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %8, align 8
  %92 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* @DMEM_CHUNK_NPAGES, align 8
  %95 = load i64, i64* %11, align 8
  %96 = call i64 @find_next_zero_bit(i32 %93, i64 %94, i64 %95)
  store i64 %96, i64* %11, align 8
  br label %61

97:                                               ; preds = %69
  %98 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %8, align 8
  %99 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %98, i32 0, i32 1
  %100 = call i32 @spin_unlock(i32* %99)
  br label %21

101:                                              ; preds = %21
  %102 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %103 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %101, %44, %43
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nouveau_dmem_chunk* @nouveau_dmem_chunk_first_free_locked(%struct.nouveau_drm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nouveau_dmem_chunk_alloc(%struct.nouveau_drm*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i64 @find_next_zero_bit(i32, i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
