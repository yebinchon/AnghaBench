; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_mthd_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_mthd_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_uvmm = type { %struct.nvkm_vmm*, %struct.TYPE_2__ }
%struct.nvkm_vmm = type { i32 }
%struct.TYPE_2__ = type { %struct.nvkm_client* }
%struct.nvkm_client = type { i32 }
%union.anon = type { %struct.nvif_vmm_get_v0 }
%struct.nvif_vmm_get_v0 = type { i64, i32, i32, i32, i32, i32 }
%struct.nvkm_vma = type { i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@NVIF_VMM_GET_V0_PTES = common dso_local global i64 0, align 8
@NVIF_VMM_GET_V0_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_uvmm*, i8*, i32)* @nvkm_uvmm_mthd_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_uvmm_mthd_get(%struct.nvkm_uvmm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_uvmm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_client*, align 8
  %9 = alloca %union.anon*, align 8
  %10 = alloca %struct.nvkm_vmm*, align 8
  %11 = alloca %struct.nvkm_vma*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nvkm_uvmm* %0, %struct.nvkm_uvmm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.nvkm_uvmm*, %struct.nvkm_uvmm** %5, align 8
  %20 = getelementptr inbounds %struct.nvkm_uvmm, %struct.nvkm_uvmm* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.nvkm_client*, %struct.nvkm_client** %21, align 8
  store %struct.nvkm_client* %22, %struct.nvkm_client** %8, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %union.anon*
  store %union.anon* %24, %union.anon** %9, align 8
  %25 = load %struct.nvkm_uvmm*, %struct.nvkm_uvmm** %5, align 8
  %26 = getelementptr inbounds %struct.nvkm_uvmm, %struct.nvkm_uvmm* %25, i32 0, i32 0
  %27 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %26, align 8
  store %struct.nvkm_vmm* %27, %struct.nvkm_vmm** %10, align 8
  %28 = load i32, i32* @ENOSYS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %union.anon*, %union.anon** %9, align 8
  %32 = bitcast %union.anon* %31 to %struct.nvif_vmm_get_v0*
  %33 = call i32 @nvif_unpack(i32 %30, i8** %6, i32* %7, %struct.nvif_vmm_get_v0* byval(%struct.nvif_vmm_get_v0) align 8 %32, i32 0, i32 0, i32 0)
  store i32 %33, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %66, label %35

35:                                               ; preds = %3
  %36 = load %union.anon*, %union.anon** %9, align 8
  %37 = bitcast %union.anon* %36 to %struct.nvif_vmm_get_v0*
  %38 = getelementptr inbounds %struct.nvif_vmm_get_v0, %struct.nvif_vmm_get_v0* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NVIF_VMM_GET_V0_PTES, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load %union.anon*, %union.anon** %9, align 8
  %44 = bitcast %union.anon* %43 to %struct.nvif_vmm_get_v0*
  %45 = getelementptr inbounds %struct.nvif_vmm_get_v0, %struct.nvif_vmm_get_v0* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NVIF_VMM_GET_V0_ADDR, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load %union.anon*, %union.anon** %9, align 8
  %51 = bitcast %union.anon* %50 to %struct.nvif_vmm_get_v0*
  %52 = getelementptr inbounds %struct.nvif_vmm_get_v0, %struct.nvif_vmm_get_v0* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %15, align 4
  %54 = load %union.anon*, %union.anon** %9, align 8
  %55 = bitcast %union.anon* %54 to %struct.nvif_vmm_get_v0*
  %56 = getelementptr inbounds %struct.nvif_vmm_get_v0, %struct.nvif_vmm_get_v0* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %16, align 4
  %58 = load %union.anon*, %union.anon** %9, align 8
  %59 = bitcast %union.anon* %58 to %struct.nvif_vmm_get_v0*
  %60 = getelementptr inbounds %struct.nvif_vmm_get_v0, %struct.nvif_vmm_get_v0* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %17, align 4
  %62 = load %union.anon*, %union.anon** %9, align 8
  %63 = bitcast %union.anon* %62 to %struct.nvif_vmm_get_v0*
  %64 = getelementptr inbounds %struct.nvif_vmm_get_v0, %struct.nvif_vmm_get_v0* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %18, align 4
  br label %68

66:                                               ; preds = %3
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %4, align 4
  br label %103

68:                                               ; preds = %35
  %69 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %70 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %69, i32 0, i32 0
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @nvkm_vmm_get_locked(%struct.nvkm_vmm* %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, %struct.nvkm_vma** %11)
  store i32 %79, i32* %12, align 4
  %80 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %81 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %68
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %4, align 4
  br label %103

87:                                               ; preds = %68
  %88 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %89 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %union.anon*, %union.anon** %9, align 8
  %92 = bitcast %union.anon* %91 to %struct.nvif_vmm_get_v0*
  %93 = getelementptr inbounds %struct.nvif_vmm_get_v0, %struct.nvif_vmm_get_v0* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 4
  %94 = load %struct.nvkm_client*, %struct.nvkm_client** %8, align 8
  %95 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %101 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %87, %85, %66
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, %struct.nvif_vmm_get_v0* byval(%struct.nvif_vmm_get_v0) align 8, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvkm_vmm_get_locked(%struct.nvkm_vmm*, i32, i32, i32, i32, i32, i32, %struct.nvkm_vma**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
