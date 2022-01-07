; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_ummu.c_nvkm_ummu_sclass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_ummu.c_nvkm_ummu_sclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_oclass = type { i32, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.nvkm_mmu = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.nvkm_mmu* }

@nvkm_umem_new = common dso_local global i32 0, align 4
@nvkm_uvmm_new = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)* @nvkm_ummu_sclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_ummu_sclass(%struct.nvkm_object* %0, i32 %1, %struct.nvkm_oclass* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_oclass*, align 8
  %8 = alloca %struct.nvkm_mmu*, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %7, align 8
  %9 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %10 = call %struct.TYPE_12__* @nvkm_ummu(%struct.nvkm_object* %9)
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %11, align 8
  store %struct.nvkm_mmu* %12, %struct.nvkm_mmu** %8, align 8
  %13 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %8, align 8
  %14 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %3
  %22 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %23 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %22, i32 0, i32 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %34 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %33, i32 0, i32 1
  %35 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %8, align 8
  %36 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = bitcast %struct.TYPE_9__* %34 to i8*
  %41 = bitcast %struct.TYPE_9__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false)
  %42 = load i32, i32* @nvkm_umem_new, align 4
  %43 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %44 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %4, align 4
  br label %76

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %21, %3
  %47 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %8, align 8
  %48 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %6, align 4
  %58 = icmp eq i32 %56, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %61 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %60, i32 0, i32 1
  %62 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %8, align 8
  %63 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = bitcast %struct.TYPE_9__* %61 to i8*
  %68 = bitcast %struct.TYPE_9__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 8, i1 false)
  %69 = load i32, i32* @nvkm_uvmm_new, align 4
  %70 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %71 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %4, align 4
  br label %76

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %46
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %59, %32
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_12__* @nvkm_ummu(%struct.nvkm_object*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
