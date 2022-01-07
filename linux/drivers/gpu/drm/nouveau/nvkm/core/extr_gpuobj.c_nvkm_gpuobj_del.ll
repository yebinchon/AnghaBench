; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_gpuobj.c_nvkm_gpuobj_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_gpuobj.c_nvkm_gpuobj_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gpuobj = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_gpuobj_del(%struct.nvkm_gpuobj** %0) #0 {
  %2 = alloca %struct.nvkm_gpuobj**, align 8
  %3 = alloca %struct.nvkm_gpuobj*, align 8
  store %struct.nvkm_gpuobj** %0, %struct.nvkm_gpuobj*** %2, align 8
  %4 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %2, align 8
  %5 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %4, align 8
  store %struct.nvkm_gpuobj* %5, %struct.nvkm_gpuobj** %3, align 8
  %6 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %3, align 8
  %7 = icmp ne %struct.nvkm_gpuobj* %6, null
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %3, align 8
  %19 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %18, i32 0, i32 2
  %20 = call i32 @nvkm_mm_free(i32* %17, i32* %19)
  br label %21

21:                                               ; preds = %13, %8
  %22 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %3, align 8
  %23 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %22, i32 0, i32 1
  %24 = call i32 @nvkm_mm_fini(i32* %23)
  %25 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %3, align 8
  %26 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %25, i32 0, i32 0
  %27 = call i32 @nvkm_memory_unref(i32* %26)
  %28 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %2, align 8
  %29 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %28, align 8
  %30 = call i32 @kfree(%struct.nvkm_gpuobj* %29)
  %31 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %2, align 8
  store %struct.nvkm_gpuobj* null, %struct.nvkm_gpuobj** %31, align 8
  br label %32

32:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @nvkm_mm_free(i32*, i32*) #1

declare dso_local i32 @nvkm_mm_fini(i32*) #1

declare dso_local i32 @nvkm_memory_unref(i32*) #1

declare dso_local i32 @kfree(%struct.nvkm_gpuobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
