; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_mthd_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_mthd_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_uvmm = type { %struct.nvkm_vmm*, %struct.TYPE_2__ }
%struct.nvkm_vmm = type { i32 }
%struct.TYPE_2__ = type { %struct.nvkm_client* }
%struct.nvkm_client = type { i32 }
%union.anon = type { %struct.nvif_vmm_unmap_v0 }
%struct.nvif_vmm_unmap_v0 = type { i64 }
%struct.nvkm_vma = type { i64, i32, i64, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"lookup %016llx: %016llx\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"denied %016llx: %d %d %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"unmapped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_uvmm*, i8*, i32)* @nvkm_uvmm_mthd_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_uvmm_mthd_unmap(%struct.nvkm_uvmm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_uvmm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_client*, align 8
  %9 = alloca %union.anon*, align 8
  %10 = alloca %struct.nvkm_vmm*, align 8
  %11 = alloca %struct.nvkm_vma*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.nvkm_uvmm* %0, %struct.nvkm_uvmm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.nvkm_uvmm*, %struct.nvkm_uvmm** %5, align 8
  %15 = getelementptr inbounds %struct.nvkm_uvmm, %struct.nvkm_uvmm* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_client*, %struct.nvkm_client** %16, align 8
  store %struct.nvkm_client* %17, %struct.nvkm_client** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %union.anon*
  store %union.anon* %19, %union.anon** %9, align 8
  %20 = load %struct.nvkm_uvmm*, %struct.nvkm_uvmm** %5, align 8
  %21 = getelementptr inbounds %struct.nvkm_uvmm, %struct.nvkm_uvmm* %20, i32 0, i32 0
  %22 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %21, align 8
  store %struct.nvkm_vmm* %22, %struct.nvkm_vmm** %10, align 8
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load %union.anon*, %union.anon** %9, align 8
  %27 = bitcast %union.anon* %26 to %struct.nvif_vmm_unmap_v0*
  %28 = getelementptr inbounds %struct.nvif_vmm_unmap_v0, %struct.nvif_vmm_unmap_v0* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @nvif_unpack(i32 %25, i8** %6, i32* %7, i64 %29, i32 0, i32 0, i32 0)
  store i32 %30, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %3
  %33 = load %union.anon*, %union.anon** %9, align 8
  %34 = bitcast %union.anon* %33 to %struct.nvif_vmm_unmap_v0*
  %35 = getelementptr inbounds %struct.nvif_vmm_unmap_v0, %struct.nvif_vmm_unmap_v0* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %13, align 8
  br label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %126

39:                                               ; preds = %32
  %40 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %41 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %44 = load i64, i64* %13, align 8
  %45 = call %struct.nvkm_vma* @nvkm_vmm_node_search(%struct.nvkm_vmm* %43, i64 %44)
  store %struct.nvkm_vma* %45, %struct.nvkm_vma** %11, align 8
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %12, align 4
  %48 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %49 = icmp ne %struct.nvkm_vma* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %39
  %51 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %52 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %13, align 8
  %55 = icmp ne i64 %53, %54
  br label %56

56:                                               ; preds = %50, %39
  %57 = phi i1 [ true, %39 ], [ %55, %50 ]
  br i1 %57, label %58, label %71

58:                                               ; preds = %56
  %59 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %62 = icmp ne %struct.nvkm_vma* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %65 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  br label %68

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i64 [ %66, %63 ], [ -1, %67 ]
  %70 = call i32 (%struct.nvkm_vmm*, i8*, ...) @VMM_DEBUG(%struct.nvkm_vmm* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %60, i64 %69)
  br label %121

71:                                               ; preds = %56
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  %74 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %75 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = load %struct.nvkm_client*, %struct.nvkm_client** %8, align 8
  %80 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78, %71
  %84 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %85 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ true, %78 ], [ %87, %83 ]
  br i1 %89, label %90, label %106

90:                                               ; preds = %88
  %91 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %94 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.nvkm_client*, %struct.nvkm_client** %8, align 8
  %97 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %103 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (%struct.nvkm_vmm*, i8*, ...) @VMM_DEBUG(%struct.nvkm_vmm* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %92, i32 %95, i32 %101, i64 %104)
  br label %121

106:                                              ; preds = %88
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %12, align 4
  %109 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %110 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %116 = call i32 (%struct.nvkm_vmm*, i8*, ...) @VMM_DEBUG(%struct.nvkm_vmm* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %121

117:                                              ; preds = %106
  %118 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %119 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %120 = call i32 @nvkm_vmm_unmap_locked(%struct.nvkm_vmm* %118, %struct.nvkm_vma* %119, i32 0)
  store i32 0, i32* %12, align 4
  br label %121

121:                                              ; preds = %117, %114, %90, %68
  %122 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %123 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %121, %37
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nvkm_vma* @nvkm_vmm_node_search(%struct.nvkm_vmm*, i64) #1

declare dso_local i32 @VMM_DEBUG(%struct.nvkm_vmm*, i8*, ...) #1

declare dso_local i32 @nvkm_vmm_unmap_locked(%struct.nvkm_vmm*, %struct.nvkm_vma*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
