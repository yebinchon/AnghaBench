; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_base.c_nvkm_dma_oclass_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_base.c_nvkm_dma_oclass_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nvkm_dma = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_dma*, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_dmaobj**)* }
%struct.nvkm_dmaobj = type { %struct.nvkm_object }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_device*, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)* @nvkm_dma_oclass_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_dma_oclass_new(%struct.nvkm_device* %0, %struct.nvkm_oclass* %1, i8* %2, i32 %3, %struct.nvkm_object** %4) #0 {
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca %struct.nvkm_oclass*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_object**, align 8
  %11 = alloca %struct.nvkm_dma*, align 8
  %12 = alloca %struct.nvkm_dmaobj*, align 8
  %13 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %6, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.nvkm_object** %4, %struct.nvkm_object*** %10, align 8
  %14 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %15 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.nvkm_dma* @nvkm_dma(i32 %16)
  store %struct.nvkm_dma* %17, %struct.nvkm_dma** %11, align 8
  store %struct.nvkm_dmaobj* null, %struct.nvkm_dmaobj** %12, align 8
  %18 = load %struct.nvkm_dma*, %struct.nvkm_dma** %11, align 8
  %19 = getelementptr inbounds %struct.nvkm_dma, %struct.nvkm_dma* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.nvkm_dma*, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_dmaobj**)*, i32 (%struct.nvkm_dma*, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_dmaobj**)** %21, align 8
  %23 = load %struct.nvkm_dma*, %struct.nvkm_dma** %11, align 8
  %24 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 %22(%struct.nvkm_dma* %23, %struct.nvkm_oclass* %24, i8* %25, i32 %26, %struct.nvkm_dmaobj** %12)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.nvkm_dmaobj*, %struct.nvkm_dmaobj** %12, align 8
  %29 = icmp ne %struct.nvkm_dmaobj* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load %struct.nvkm_dmaobj*, %struct.nvkm_dmaobj** %12, align 8
  %32 = getelementptr inbounds %struct.nvkm_dmaobj, %struct.nvkm_dmaobj* %31, i32 0, i32 0
  %33 = load %struct.nvkm_object**, %struct.nvkm_object*** %10, align 8
  store %struct.nvkm_object* %32, %struct.nvkm_object** %33, align 8
  br label %34

34:                                               ; preds = %30, %5
  %35 = load i32, i32* %13, align 4
  ret i32 %35
}

declare dso_local %struct.nvkm_dma* @nvkm_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
