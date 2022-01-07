; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_gpuobj.c_nvkm_gpuobj_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_gpuobj.c_nvkm_gpuobj_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gpuobj = type { i8*, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@nvkm_gpuobj_fast = common dso_local global i32 0, align 4
@nvkm_gpuobj_slow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nvkm_gpuobj*)* @nvkm_gpuobj_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nvkm_gpuobj_acquire(%struct.nvkm_gpuobj* %0) #0 {
  %2 = alloca %struct.nvkm_gpuobj*, align 8
  store %struct.nvkm_gpuobj* %0, %struct.nvkm_gpuobj** %2, align 8
  %3 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i8* @nvkm_kmap(i32 %5)
  %7 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %2, align 8
  %8 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %7, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %2, align 8
  %10 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @likely(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %2, align 8
  %16 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %2, align 8
  %19 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, i8* %17, i64 %23
  %25 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %2, align 8
  %26 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %2, align 8
  %28 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %27, i32 0, i32 1
  store i32* @nvkm_gpuobj_fast, i32** %28, align 8
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %2, align 8
  %31 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %30, i32 0, i32 1
  store i32* @nvkm_gpuobj_slow, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %14
  %33 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %2, align 8
  %34 = getelementptr inbounds %struct.nvkm_gpuobj, %struct.nvkm_gpuobj* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  ret i8* %35
}

declare dso_local i8* @nvkm_kmap(i32) #1

declare dso_local i64 @likely(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
