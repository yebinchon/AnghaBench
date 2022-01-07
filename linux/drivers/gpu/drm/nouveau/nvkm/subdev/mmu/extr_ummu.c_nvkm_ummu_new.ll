; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_ummu.c_nvkm_ummu_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_ummu.c_nvkm_ummu_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.nvkm_mmu* }
%struct.nvkm_mmu = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_mmu*, i32*)* }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%union.anon = type { %struct.nvif_mmu_v0 }
%struct.nvif_mmu_v0 = type { i32, i32, i32, i32 }
%struct.nvkm_ummu = type { %struct.nvkm_object, %struct.nvkm_mmu* }

@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvkm_ummu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_ummu_new(%struct.nvkm_device* %0, %struct.nvkm_oclass* %1, i8* %2, i32 %3, %struct.nvkm_object** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_object**, align 8
  %12 = alloca %union.anon*, align 8
  %13 = alloca %struct.nvkm_mmu*, align 8
  %14 = alloca %struct.nvkm_ummu*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %7, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_object** %4, %struct.nvkm_object*** %11, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %union.anon*
  store %union.anon* %18, %union.anon** %12, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %20 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %19, i32 0, i32 0
  %21 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %20, align 8
  store %struct.nvkm_mmu* %21, %struct.nvkm_mmu** %13, align 8
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %13, align 8
  %25 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.nvkm_mmu*, i32*)*, i32 (%struct.nvkm_mmu*, i32*)** %27, align 8
  %29 = icmp ne i32 (%struct.nvkm_mmu*, i32*)* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %5
  %31 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %13, align 8
  %32 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.nvkm_mmu*, i32*)*, i32 (%struct.nvkm_mmu*, i32*)** %34, align 8
  %36 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %13, align 8
  %37 = call i32 %35(%struct.nvkm_mmu* %36, i32* %16)
  br label %38

38:                                               ; preds = %30, %5
  %39 = load i32, i32* %15, align 4
  %40 = load %union.anon*, %union.anon** %12, align 8
  %41 = bitcast %union.anon* %40 to %struct.nvif_mmu_v0*
  %42 = bitcast %struct.nvif_mmu_v0* %41 to { i64, i64 }*
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 4
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %42, i32 0, i32 1
  %46 = load i64, i64* %45, align 4
  %47 = call i32 @nvif_unpack(i32 %39, i8** %9, i32* %10, i64 %44, i64 %46, i32 0, i32 0, i32 0)
  store i32 %47, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %72, label %49

49:                                               ; preds = %38
  %50 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %13, align 8
  %51 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %union.anon*, %union.anon** %12, align 8
  %54 = bitcast %union.anon* %53 to %struct.nvif_mmu_v0*
  %55 = getelementptr inbounds %struct.nvif_mmu_v0, %struct.nvif_mmu_v0* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  %56 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %13, align 8
  %57 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %union.anon*, %union.anon** %12, align 8
  %60 = bitcast %union.anon* %59 to %struct.nvif_mmu_v0*
  %61 = getelementptr inbounds %struct.nvif_mmu_v0, %struct.nvif_mmu_v0* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 4
  %62 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %13, align 8
  %63 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %union.anon*, %union.anon** %12, align 8
  %66 = bitcast %union.anon* %65 to %struct.nvif_mmu_v0*
  %67 = getelementptr inbounds %struct.nvif_mmu_v0, %struct.nvif_mmu_v0* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load %union.anon*, %union.anon** %12, align 8
  %70 = bitcast %union.anon* %69 to %struct.nvif_mmu_v0*
  %71 = getelementptr inbounds %struct.nvif_mmu_v0, %struct.nvif_mmu_v0* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  br label %74

72:                                               ; preds = %38
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %6, align 4
  br label %92

74:                                               ; preds = %49
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.nvkm_ummu* @kzalloc(i32 16, i32 %75)
  store %struct.nvkm_ummu* %76, %struct.nvkm_ummu** %14, align 8
  %77 = icmp ne %struct.nvkm_ummu* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %92

81:                                               ; preds = %74
  %82 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %83 = load %struct.nvkm_ummu*, %struct.nvkm_ummu** %14, align 8
  %84 = getelementptr inbounds %struct.nvkm_ummu, %struct.nvkm_ummu* %83, i32 0, i32 0
  %85 = call i32 @nvkm_object_ctor(i32* @nvkm_ummu, %struct.nvkm_oclass* %82, %struct.nvkm_object* %84)
  %86 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %13, align 8
  %87 = load %struct.nvkm_ummu*, %struct.nvkm_ummu** %14, align 8
  %88 = getelementptr inbounds %struct.nvkm_ummu, %struct.nvkm_ummu* %87, i32 0, i32 1
  store %struct.nvkm_mmu* %86, %struct.nvkm_mmu** %88, align 8
  %89 = load %struct.nvkm_ummu*, %struct.nvkm_ummu** %14, align 8
  %90 = getelementptr inbounds %struct.nvkm_ummu, %struct.nvkm_ummu* %89, i32 0, i32 0
  %91 = load %struct.nvkm_object**, %struct.nvkm_object*** %11, align 8
  store %struct.nvkm_object* %90, %struct.nvkm_object** %91, align 8
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %81, %78, %72
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.nvkm_ummu* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, %struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
