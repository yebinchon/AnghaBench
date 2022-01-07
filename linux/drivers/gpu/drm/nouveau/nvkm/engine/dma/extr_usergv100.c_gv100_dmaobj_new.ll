; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usergv100.c_gv100_dmaobj_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_usergv100.c_gv100_dmaobj_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_dma = type { i32 }
%struct.nvkm_oclass = type { %struct.nvkm_object* }
%struct.nvkm_object = type { i32 }
%struct.nvkm_dmaobj = type { i32 }
%union.anon = type { %struct.gf119_dma_v0 }
%struct.gf119_dma_v0 = type { i64, i64, i32 }
%struct.gv100_dmaobj = type { i32, %struct.nvkm_dmaobj }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gv100_dmaobj_func = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"create gv100 dma size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"create gv100 dma vers %d page %d kind %02x\0A\00", align 1
@GF119_DMA_V0_PAGE_SP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv100_dmaobj_new(%struct.nvkm_dma* %0, %struct.nvkm_oclass* %1, i8* %2, i32 %3, %struct.nvkm_dmaobj** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_dma*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_dmaobj**, align 8
  %12 = alloca %union.anon*, align 8
  %13 = alloca %struct.nvkm_object*, align 8
  %14 = alloca %struct.gv100_dmaobj*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nvkm_dma* %0, %struct.nvkm_dma** %7, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_dmaobj** %4, %struct.nvkm_dmaobj*** %11, align 8
  %18 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %19 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %18, i32 0, i32 0
  %20 = load %struct.nvkm_object*, %struct.nvkm_object** %19, align 8
  store %struct.nvkm_object* %20, %struct.nvkm_object** %13, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.gv100_dmaobj* @kzalloc(i32 8, i32 %21)
  store %struct.gv100_dmaobj* %22, %struct.gv100_dmaobj** %14, align 8
  %23 = icmp ne %struct.gv100_dmaobj* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %132

27:                                               ; preds = %5
  %28 = load %struct.gv100_dmaobj*, %struct.gv100_dmaobj** %14, align 8
  %29 = getelementptr inbounds %struct.gv100_dmaobj, %struct.gv100_dmaobj* %28, i32 0, i32 1
  %30 = load %struct.nvkm_dmaobj**, %struct.nvkm_dmaobj*** %11, align 8
  store %struct.nvkm_dmaobj* %29, %struct.nvkm_dmaobj** %30, align 8
  %31 = load %struct.nvkm_dma*, %struct.nvkm_dma** %7, align 8
  %32 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %33 = load %struct.gv100_dmaobj*, %struct.gv100_dmaobj** %14, align 8
  %34 = getelementptr inbounds %struct.gv100_dmaobj, %struct.gv100_dmaobj* %33, i32 0, i32 1
  %35 = call i32 @nvkm_dmaobj_ctor(i32* @gv100_dmaobj_func, %struct.nvkm_dma* %31, %struct.nvkm_oclass* %32, i8** %9, i32* %10, %struct.nvkm_dmaobj* %34)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %17, align 4
  store i32 %39, i32* %6, align 4
  br label %132

40:                                               ; preds = %27
  %41 = load i32, i32* @ENOSYS, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %17, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = bitcast i8* %43 to %union.anon*
  store %union.anon* %44, %union.anon** %12, align 8
  %45 = load %struct.nvkm_object*, %struct.nvkm_object** %13, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %17, align 4
  %49 = load %union.anon*, %union.anon** %12, align 8
  %50 = bitcast %union.anon* %49 to %struct.gf119_dma_v0*
  %51 = call i32 @nvif_unpack(i32 %48, i8** %9, i32* %10, %struct.gf119_dma_v0* byval(%struct.gf119_dma_v0) align 8 %50, i32 0, i32 0, i32 0)
  store i32 %51, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %80, label %53

53:                                               ; preds = %40
  %54 = load %struct.nvkm_object*, %struct.nvkm_object** %13, align 8
  %55 = load %union.anon*, %union.anon** %12, align 8
  %56 = bitcast %union.anon* %55 to %struct.gf119_dma_v0*
  %57 = getelementptr inbounds %struct.gf119_dma_v0, %struct.gf119_dma_v0* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %union.anon*, %union.anon** %12, align 8
  %60 = bitcast %union.anon* %59 to %struct.gf119_dma_v0*
  %61 = getelementptr inbounds %struct.gf119_dma_v0, %struct.gf119_dma_v0* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %union.anon*, %union.anon** %12, align 8
  %64 = bitcast %union.anon* %63 to %struct.gf119_dma_v0*
  %65 = getelementptr inbounds %struct.gf119_dma_v0, %struct.gf119_dma_v0* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %58, i64 %62, i64 %66)
  %68 = load %union.anon*, %union.anon** %12, align 8
  %69 = bitcast %union.anon* %68 to %struct.gf119_dma_v0*
  %70 = getelementptr inbounds %struct.gf119_dma_v0, %struct.gf119_dma_v0* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %15, align 4
  %74 = load %union.anon*, %union.anon** %12, align 8
  %75 = bitcast %union.anon* %74 to %struct.gf119_dma_v0*
  %76 = getelementptr inbounds %struct.gf119_dma_v0, %struct.gf119_dma_v0* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %16, align 4
  br label %88

80:                                               ; preds = %40
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  store i32 0, i32* %15, align 4
  %84 = load i32, i32* @GF119_DMA_V0_PAGE_SP, align 4
  store i32 %84, i32* %16, align 4
  br label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %17, align 4
  store i32 %86, i32* %6, align 4
  br label %132

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %53
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load %struct.gv100_dmaobj*, %struct.gv100_dmaobj** %14, align 8
  %93 = getelementptr inbounds %struct.gv100_dmaobj, %struct.gv100_dmaobj* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, 1048576
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %91, %88
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.gv100_dmaobj*, %struct.gv100_dmaobj** %14, align 8
  %101 = getelementptr inbounds %struct.gv100_dmaobj, %struct.gv100_dmaobj* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, 64
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %99, %96
  %105 = load %struct.gv100_dmaobj*, %struct.gv100_dmaobj** %14, align 8
  %106 = getelementptr inbounds %struct.gv100_dmaobj, %struct.gv100_dmaobj* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, 4
  store i32 %108, i32* %106, align 4
  %109 = load %struct.gv100_dmaobj*, %struct.gv100_dmaobj** %14, align 8
  %110 = getelementptr inbounds %struct.gv100_dmaobj, %struct.gv100_dmaobj* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.nvkm_dmaobj, %struct.nvkm_dmaobj* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %128 [
    i32 128, label %113
    i32 130, label %118
    i32 129, label %123
  ]

113:                                              ; preds = %104
  %114 = load %struct.gv100_dmaobj*, %struct.gv100_dmaobj** %14, align 8
  %115 = getelementptr inbounds %struct.gv100_dmaobj, %struct.gv100_dmaobj* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %131

118:                                              ; preds = %104
  %119 = load %struct.gv100_dmaobj*, %struct.gv100_dmaobj** %14, align 8
  %120 = getelementptr inbounds %struct.gv100_dmaobj, %struct.gv100_dmaobj* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, 2
  store i32 %122, i32* %120, align 4
  br label %131

123:                                              ; preds = %104
  %124 = load %struct.gv100_dmaobj*, %struct.gv100_dmaobj** %14, align 8
  %125 = getelementptr inbounds %struct.gv100_dmaobj, %struct.gv100_dmaobj* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, 3
  store i32 %127, i32* %125, align 4
  br label %131

128:                                              ; preds = %104
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %6, align 4
  br label %132

131:                                              ; preds = %123, %118, %113
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %131, %128, %85, %38, %24
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local %struct.gv100_dmaobj* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_dmaobj_ctor(i32*, %struct.nvkm_dma*, %struct.nvkm_oclass*, i8**, i32*, %struct.nvkm_dmaobj*) #1

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32, ...) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, %struct.gf119_dma_v0* byval(%struct.gf119_dma_v0) align 8, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
