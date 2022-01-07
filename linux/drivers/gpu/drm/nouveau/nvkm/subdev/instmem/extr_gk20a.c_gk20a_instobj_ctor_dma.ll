; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_gk20a.c_gk20a_instobj_ctor_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_gk20a.c_gk20a_instobj_ctor_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk20a_instmem = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.gk20a_instobj = type { %struct.TYPE_7__*, i32, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.gk20a_instobj_dma = type { i32, %struct.TYPE_7__, %struct.gk20a_instobj }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gk20a_instobj_func_dma = common dso_local global i32 0, align 4
@gk20a_instobj_ptrs = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot allocate DMA memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"memory not aligned as requested: %pad (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gk20a_instmem*, i32, i32, %struct.gk20a_instobj**)* @gk20a_instobj_ctor_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk20a_instobj_ctor_dma(%struct.gk20a_instmem* %0, i32 %1, i32 %2, %struct.gk20a_instobj** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gk20a_instmem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gk20a_instobj**, align 8
  %10 = alloca %struct.gk20a_instobj_dma*, align 8
  %11 = alloca %struct.nvkm_subdev*, align 8
  %12 = alloca %struct.device*, align 8
  store %struct.gk20a_instmem* %0, %struct.gk20a_instmem** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.gk20a_instobj** %3, %struct.gk20a_instobj*** %9, align 8
  %13 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %6, align 8
  %14 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %11, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %11, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %12, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.gk20a_instobj_dma* @kzalloc(i32 40, i32 %21)
  store %struct.gk20a_instobj_dma* %22, %struct.gk20a_instobj_dma** %10, align 8
  %23 = icmp ne %struct.gk20a_instobj_dma* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %101

27:                                               ; preds = %4
  %28 = load %struct.gk20a_instobj_dma*, %struct.gk20a_instobj_dma** %10, align 8
  %29 = getelementptr inbounds %struct.gk20a_instobj_dma, %struct.gk20a_instobj_dma* %28, i32 0, i32 2
  %30 = load %struct.gk20a_instobj**, %struct.gk20a_instobj*** %9, align 8
  store %struct.gk20a_instobj* %29, %struct.gk20a_instobj** %30, align 8
  %31 = load %struct.gk20a_instobj_dma*, %struct.gk20a_instobj_dma** %10, align 8
  %32 = getelementptr inbounds %struct.gk20a_instobj_dma, %struct.gk20a_instobj_dma* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.gk20a_instobj, %struct.gk20a_instobj* %32, i32 0, i32 2
  %34 = call i32 @nvkm_memory_ctor(i32* @gk20a_instobj_func_dma, %struct.TYPE_8__* %33)
  %35 = load %struct.gk20a_instobj_dma*, %struct.gk20a_instobj_dma** %10, align 8
  %36 = getelementptr inbounds %struct.gk20a_instobj_dma, %struct.gk20a_instobj_dma* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.gk20a_instobj, %struct.gk20a_instobj* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32* @gk20a_instobj_ptrs, i32** %38, align 8
  %39 = load %struct.device*, %struct.device** %12, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @PAGE_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load %struct.gk20a_instobj_dma*, %struct.gk20a_instobj_dma** %10, align 8
  %44 = getelementptr inbounds %struct.gk20a_instobj_dma, %struct.gk20a_instobj_dma* %43, i32 0, i32 0
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %6, align 8
  %47 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dma_alloc_attrs(%struct.device* %39, i32 %42, i32* %44, i32 %45, i32 %48)
  %50 = load %struct.gk20a_instobj_dma*, %struct.gk20a_instobj_dma** %10, align 8
  %51 = getelementptr inbounds %struct.gk20a_instobj_dma, %struct.gk20a_instobj_dma* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.gk20a_instobj, %struct.gk20a_instobj* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = load %struct.gk20a_instobj_dma*, %struct.gk20a_instobj_dma** %10, align 8
  %54 = getelementptr inbounds %struct.gk20a_instobj_dma, %struct.gk20a_instobj_dma* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.gk20a_instobj, %struct.gk20a_instobj* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %27
  %59 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %11, align 8
  %60 = call i32 @nvkm_error(%struct.nvkm_subdev* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %101

63:                                               ; preds = %27
  %64 = load %struct.gk20a_instobj_dma*, %struct.gk20a_instobj_dma** %10, align 8
  %65 = getelementptr inbounds %struct.gk20a_instobj_dma, %struct.gk20a_instobj_dma* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, 1
  %69 = and i32 %66, %68
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %11, align 8
  %74 = load %struct.gk20a_instobj_dma*, %struct.gk20a_instobj_dma** %10, align 8
  %75 = getelementptr inbounds %struct.gk20a_instobj_dma, %struct.gk20a_instobj_dma* %74, i32 0, i32 0
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @nvkm_warn(%struct.nvkm_subdev* %73, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %63
  %79 = load %struct.gk20a_instobj_dma*, %struct.gk20a_instobj_dma** %10, align 8
  %80 = getelementptr inbounds %struct.gk20a_instobj_dma, %struct.gk20a_instobj_dma* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 12, i32* %81, align 4
  %82 = load %struct.gk20a_instobj_dma*, %struct.gk20a_instobj_dma** %10, align 8
  %83 = getelementptr inbounds %struct.gk20a_instobj_dma, %struct.gk20a_instobj_dma* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = ashr i32 %84, 12
  %86 = load %struct.gk20a_instobj_dma*, %struct.gk20a_instobj_dma** %10, align 8
  %87 = getelementptr inbounds %struct.gk20a_instobj_dma, %struct.gk20a_instobj_dma* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @PAGE_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = ashr i32 %91, 12
  %93 = load %struct.gk20a_instobj_dma*, %struct.gk20a_instobj_dma** %10, align 8
  %94 = getelementptr inbounds %struct.gk20a_instobj_dma, %struct.gk20a_instobj_dma* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 4
  %96 = load %struct.gk20a_instobj_dma*, %struct.gk20a_instobj_dma** %10, align 8
  %97 = getelementptr inbounds %struct.gk20a_instobj_dma, %struct.gk20a_instobj_dma* %96, i32 0, i32 1
  %98 = load %struct.gk20a_instobj_dma*, %struct.gk20a_instobj_dma** %10, align 8
  %99 = getelementptr inbounds %struct.gk20a_instobj_dma, %struct.gk20a_instobj_dma* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.gk20a_instobj, %struct.gk20a_instobj* %99, i32 0, i32 0
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %100, align 8
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %78, %58, %24
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.gk20a_instobj_dma* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_memory_ctor(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @dma_alloc_attrs(%struct.device*, i32, i32*, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
