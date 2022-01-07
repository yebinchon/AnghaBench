; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_base.c_nvkm_dma_oclass_base_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/dma/extr_base.c_nvkm_dma_oclass_base_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_sclass = type { i32 }
%struct.nvkm_device_oclass = type { i32 }
%struct.nvkm_oclass = type { %struct.nvkm_sclass*, %struct.nvkm_sclass }

@nvkm_dma_sclass = common dso_local global %struct.nvkm_sclass* null, align 8
@nvkm_dma_oclass_base = common dso_local global %struct.nvkm_device_oclass zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_oclass*, i32, %struct.nvkm_device_oclass**)* @nvkm_dma_oclass_base_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_dma_oclass_base_get(%struct.nvkm_oclass* %0, i32 %1, %struct.nvkm_device_oclass** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_oclass*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_device_oclass**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_sclass*, align 8
  store %struct.nvkm_oclass* %0, %struct.nvkm_oclass** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_device_oclass** %2, %struct.nvkm_device_oclass*** %7, align 8
  %10 = load %struct.nvkm_sclass*, %struct.nvkm_sclass** @nvkm_dma_sclass, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.nvkm_sclass* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.nvkm_sclass*, %struct.nvkm_sclass** @nvkm_dma_sclass, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.nvkm_sclass, %struct.nvkm_sclass* %16, i64 %18
  store %struct.nvkm_sclass* %19, %struct.nvkm_sclass** %9, align 8
  %20 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %21 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %20, i32 0, i32 1
  %22 = load %struct.nvkm_sclass*, %struct.nvkm_sclass** %9, align 8
  %23 = getelementptr inbounds %struct.nvkm_sclass, %struct.nvkm_sclass* %22, i64 0
  %24 = bitcast %struct.nvkm_sclass* %21 to i8*
  %25 = bitcast %struct.nvkm_sclass* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load %struct.nvkm_sclass*, %struct.nvkm_sclass** %9, align 8
  %27 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %28 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %27, i32 0, i32 0
  store %struct.nvkm_sclass* %26, %struct.nvkm_sclass** %28, align 8
  %29 = load %struct.nvkm_device_oclass**, %struct.nvkm_device_oclass*** %7, align 8
  store %struct.nvkm_device_oclass* @nvkm_dma_oclass_base, %struct.nvkm_device_oclass** %29, align 8
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %15
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @ARRAY_SIZE(%struct.nvkm_sclass*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
