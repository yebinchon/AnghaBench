; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usernv04.c_nv04_dmaobj_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usernv04.c_nv04_dmaobj_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_dma = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.nvkm_oclass = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nvkm_dmaobj = type { i32, i32 }
%struct.nv04_dmaobj = type { i32, i32, i32, %struct.nvkm_dmaobj }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv04_dmaobj_func = common dso_local global i32 0, align 4
@NV_MEM_TARGET_VM = common dso_local global i32 0, align 4
@nv04_mmu = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_dmaobj_new(%struct.nvkm_dma* %0, %struct.nvkm_oclass* %1, i8* %2, i32 %3, %struct.nvkm_dmaobj** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_dma*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_dmaobj**, align 8
  %12 = alloca %struct.nvkm_device*, align 8
  %13 = alloca %struct.nv04_dmaobj*, align 8
  %14 = alloca i32, align 4
  store %struct.nvkm_dma* %0, %struct.nvkm_dma** %7, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_dmaobj** %4, %struct.nvkm_dmaobj*** %11, align 8
  %15 = load %struct.nvkm_dma*, %struct.nvkm_dma** %7, align 8
  %16 = getelementptr inbounds %struct.nvkm_dma, %struct.nvkm_dma* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %12, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.nv04_dmaobj* @kzalloc(i32 20, i32 %20)
  store %struct.nv04_dmaobj* %21, %struct.nv04_dmaobj** %13, align 8
  %22 = icmp ne %struct.nv04_dmaobj* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %116

26:                                               ; preds = %5
  %27 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %13, align 8
  %28 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %27, i32 0, i32 3
  %29 = load %struct.nvkm_dmaobj**, %struct.nvkm_dmaobj*** %11, align 8
  store %struct.nvkm_dmaobj* %28, %struct.nvkm_dmaobj** %29, align 8
  %30 = load %struct.nvkm_dma*, %struct.nvkm_dma** %7, align 8
  %31 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %32 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %13, align 8
  %33 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %32, i32 0, i32 3
  %34 = call i32 @nvkm_dmaobj_ctor(i32* @nv04_dmaobj_func, %struct.nvkm_dma* %30, %struct.nvkm_oclass* %31, i8** %9, i32* %10, %struct.nvkm_dmaobj* %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  br label %116

39:                                               ; preds = %26
  %40 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %13, align 8
  %41 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.nvkm_dmaobj, %struct.nvkm_dmaobj* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NV_MEM_TARGET_VM, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  %48 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, @nv04_mmu
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %13, align 8
  %55 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %46
  %57 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %13, align 8
  %58 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.nvkm_dmaobj, %struct.nvkm_dmaobj* %58, i32 0, i32 0
  store i32 130, i32* %59, align 4
  %60 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %13, align 8
  %61 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.nvkm_dmaobj, %struct.nvkm_dmaobj* %61, i32 0, i32 1
  store i32 132, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %39
  %64 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %65 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %13, align 8
  %69 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %13, align 8
  %71 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.nvkm_dmaobj, %struct.nvkm_dmaobj* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %89 [
    i32 128, label %74
    i32 130, label %79
    i32 129, label %84
  ]

74:                                               ; preds = %63
  %75 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %13, align 8
  %76 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, 12288
  store i32 %78, i32* %76, align 4
  br label %92

79:                                               ; preds = %63
  %80 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %13, align 8
  %81 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, 143360
  store i32 %83, i32* %81, align 4
  br label %92

84:                                               ; preds = %63
  %85 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %13, align 8
  %86 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, 208896
  store i32 %88, i32* %86, align 4
  br label %92

89:                                               ; preds = %63
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %116

92:                                               ; preds = %84, %79, %74
  %93 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %13, align 8
  %94 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.nvkm_dmaobj, %struct.nvkm_dmaobj* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %112 [
    i32 133, label %97
    i32 131, label %102
    i32 132, label %107
  ]

97:                                               ; preds = %92
  %98 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %13, align 8
  %99 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, 16384
  store i32 %101, i32* %99, align 4
  br label %115

102:                                              ; preds = %92
  %103 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %13, align 8
  %104 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, 32768
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %92, %102
  %108 = load %struct.nv04_dmaobj*, %struct.nv04_dmaobj** %13, align 8
  %109 = getelementptr inbounds %struct.nv04_dmaobj, %struct.nv04_dmaobj* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, 2
  store i32 %111, i32* %109, align 4
  br label %115

112:                                              ; preds = %92
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %6, align 4
  br label %116

115:                                              ; preds = %107, %97
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %115, %112, %89, %37, %23
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local %struct.nv04_dmaobj* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_dmaobj_ctor(i32*, %struct.nvkm_dma*, %struct.nvkm_oclass*, i8**, i32*, %struct.nvkm_dmaobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
