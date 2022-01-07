; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_mthd_pfnmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_mthd_pfnmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_uvmm = type { %struct.nvkm_vmm*, %struct.TYPE_2__ }
%struct.nvkm_vmm = type { i32 }
%struct.TYPE_2__ = type { %struct.nvkm_client* }
%struct.nvkm_client = type { i32 }
%union.anon = type { %struct.nvif_vmm_pfnmap_v0 }
%struct.nvif_vmm_pfnmap_v0 = type { i32, i32, i32, i32* }

@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_uvmm*, i8*, i32)* @nvkm_uvmm_mthd_pfnmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_uvmm_mthd_pfnmap(%struct.nvkm_uvmm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_uvmm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_client*, align 8
  %9 = alloca %union.anon*, align 8
  %10 = alloca %struct.nvkm_vmm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.nvkm_uvmm* %0, %struct.nvkm_uvmm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.nvkm_uvmm*, %struct.nvkm_uvmm** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_uvmm, %struct.nvkm_uvmm* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.nvkm_client*, %struct.nvkm_client** %18, align 8
  store %struct.nvkm_client* %19, %struct.nvkm_client** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %union.anon*
  store %union.anon* %21, %union.anon** %9, align 8
  %22 = load %struct.nvkm_uvmm*, %struct.nvkm_uvmm** %5, align 8
  %23 = getelementptr inbounds %struct.nvkm_uvmm, %struct.nvkm_uvmm* %22, i32 0, i32 0
  %24 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %23, align 8
  store %struct.nvkm_vmm* %24, %struct.nvkm_vmm** %10, align 8
  %25 = load i32, i32* @ENOSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load %union.anon*, %union.anon** %9, align 8
  %29 = bitcast %union.anon* %28 to %struct.nvif_vmm_pfnmap_v0*
  %30 = call i32 @nvif_unpack(i32 %27, i8** %6, i32* %7, %struct.nvif_vmm_pfnmap_v0* byval(%struct.nvif_vmm_pfnmap_v0) align 8 %29, i32 0, i32 0, i32 1)
  store i32 %30, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %61, label %32

32:                                               ; preds = %3
  %33 = load %union.anon*, %union.anon** %9, align 8
  %34 = bitcast %union.anon* %33 to %struct.nvif_vmm_pfnmap_v0*
  %35 = getelementptr inbounds %struct.nvif_vmm_pfnmap_v0, %struct.nvif_vmm_pfnmap_v0* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %15, align 4
  %37 = load %union.anon*, %union.anon** %9, align 8
  %38 = bitcast %union.anon* %37 to %struct.nvif_vmm_pfnmap_v0*
  %39 = getelementptr inbounds %struct.nvif_vmm_pfnmap_v0, %struct.nvif_vmm_pfnmap_v0* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %union.anon*, %union.anon** %9, align 8
  %42 = bitcast %union.anon* %41 to %struct.nvif_vmm_pfnmap_v0*
  %43 = getelementptr inbounds %struct.nvif_vmm_pfnmap_v0, %struct.nvif_vmm_pfnmap_v0* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %13, align 4
  %45 = load %union.anon*, %union.anon** %9, align 8
  %46 = bitcast %union.anon* %45 to %struct.nvif_vmm_pfnmap_v0*
  %47 = getelementptr inbounds %struct.nvif_vmm_pfnmap_v0, %struct.nvif_vmm_pfnmap_v0* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %14, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %15, align 4
  %53 = ashr i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %32
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %89

60:                                               ; preds = %32
  br label %63

61:                                               ; preds = %3
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %89

63:                                               ; preds = %60
  %64 = load %struct.nvkm_client*, %struct.nvkm_client** %8, align 8
  %65 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %89

71:                                               ; preds = %63
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %76 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %75, i32 0, i32 0
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = call i32 @nvkm_vmm_pfn_map(%struct.nvkm_vmm* %78, i32 %79, i32 %80, i32 %81, i32* %82)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %85 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  br label %87

87:                                               ; preds = %74, %71
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %68, %61, %57
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, %struct.nvif_vmm_pfnmap_v0* byval(%struct.nvif_vmm_pfnmap_v0) align 8, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvkm_vmm_pfn_map(%struct.nvkm_vmm*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
