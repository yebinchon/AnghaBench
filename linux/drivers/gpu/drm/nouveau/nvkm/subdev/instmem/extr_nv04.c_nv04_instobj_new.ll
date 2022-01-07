; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv04.c_nv04_instobj_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv04.c_nv04_instobj_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_instmem = type { i32 }
%struct.nvkm_memory = type { i32* }
%struct.nv04_instmem = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nv04_instobj = type { i32, %struct.nv04_instmem*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_memory }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv04_instobj_func = common dso_local global i32 0, align 4
@nv04_instobj_ptrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_instmem*, i32, i32, i32, %struct.nvkm_memory**)* @nv04_instobj_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_instobj_new(%struct.nvkm_instmem* %0, i32 %1, i32 %2, i32 %3, %struct.nvkm_memory** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_instmem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_memory**, align 8
  %12 = alloca %struct.nv04_instmem*, align 8
  %13 = alloca %struct.nv04_instobj*, align 8
  %14 = alloca i32, align 4
  store %struct.nvkm_instmem* %0, %struct.nvkm_instmem** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_memory** %4, %struct.nvkm_memory*** %11, align 8
  %15 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %7, align 8
  %16 = call %struct.nv04_instmem* @nv04_instmem(%struct.nvkm_instmem* %15)
  store %struct.nv04_instmem* %16, %struct.nv04_instmem** %12, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.nv04_instobj* @kzalloc(i32 24, i32 %17)
  store %struct.nv04_instobj* %18, %struct.nv04_instobj** %13, align 8
  %19 = icmp ne %struct.nv04_instobj* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %65

23:                                               ; preds = %5
  %24 = load %struct.nv04_instobj*, %struct.nv04_instobj** %13, align 8
  %25 = getelementptr inbounds %struct.nv04_instobj, %struct.nv04_instobj* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.nvkm_memory**, %struct.nvkm_memory*** %11, align 8
  store %struct.nvkm_memory* %26, %struct.nvkm_memory** %27, align 8
  %28 = load %struct.nv04_instmem*, %struct.nv04_instmem** %12, align 8
  %29 = getelementptr inbounds %struct.nv04_instmem, %struct.nv04_instmem* %28, i32 0, i32 0
  %30 = load %struct.nv04_instobj*, %struct.nv04_instobj** %13, align 8
  %31 = getelementptr inbounds %struct.nv04_instobj, %struct.nv04_instobj* %30, i32 0, i32 2
  %32 = call i32 @nvkm_instobj_ctor(i32* @nv04_instobj_func, %struct.TYPE_5__* %29, %struct.TYPE_6__* %31)
  %33 = load %struct.nv04_instobj*, %struct.nv04_instobj** %13, align 8
  %34 = getelementptr inbounds %struct.nv04_instobj, %struct.nv04_instobj* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.nvkm_memory, %struct.nvkm_memory* %35, i32 0, i32 0
  store i32* @nv04_instobj_ptrs, i32** %36, align 8
  %37 = load %struct.nv04_instmem*, %struct.nv04_instmem** %12, align 8
  %38 = load %struct.nv04_instobj*, %struct.nv04_instobj** %13, align 8
  %39 = getelementptr inbounds %struct.nv04_instobj, %struct.nv04_instobj* %38, i32 0, i32 1
  store %struct.nv04_instmem* %37, %struct.nv04_instmem** %39, align 8
  %40 = load %struct.nv04_instmem*, %struct.nv04_instmem** %12, align 8
  %41 = getelementptr inbounds %struct.nv04_instmem, %struct.nv04_instmem* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.nv04_instmem*, %struct.nv04_instmem** %12, align 8
  %46 = getelementptr inbounds %struct.nv04_instmem, %struct.nv04_instmem* %45, i32 0, i32 1
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %23
  %52 = load i32, i32* %9, align 4
  br label %54

53:                                               ; preds = %23
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 1, %53 ]
  %56 = load %struct.nv04_instobj*, %struct.nv04_instobj** %13, align 8
  %57 = getelementptr inbounds %struct.nv04_instobj, %struct.nv04_instobj* %56, i32 0, i32 0
  %58 = call i32 @nvkm_mm_head(i32* %46, i32 0, i32 1, i32 %47, i32 %48, i32 %55, i32* %57)
  store i32 %58, i32* %14, align 4
  %59 = load %struct.nv04_instmem*, %struct.nv04_instmem** %12, align 8
  %60 = getelementptr inbounds %struct.nv04_instmem, %struct.nv04_instmem* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %54, %20
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.nv04_instmem* @nv04_instmem(%struct.nvkm_instmem*) #1

declare dso_local %struct.nv04_instobj* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_instobj_ctor(i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvkm_mm_head(i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
