; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_mthd_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_mthd_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_uvmm = type { %struct.nvkm_vmm*, %struct.TYPE_2__ }
%struct.nvkm_vmm = type { i32 }
%struct.TYPE_2__ = type { %struct.nvkm_client* }
%struct.nvkm_client = type { i32 }
%union.anon = type { %struct.nvif_vmm_put_v0 }
%struct.nvif_vmm_put_v0 = type { i64 }
%struct.nvkm_vma = type { i64, i64, i32, i64 }

@ENOSYS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"lookup %016llx: %016llx %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"denied %016llx: %d %d %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_uvmm*, i8*, i32)* @nvkm_uvmm_mthd_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_uvmm_mthd_put(%struct.nvkm_uvmm* %0, i8* %1, i32 %2) #0 {
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
  %27 = bitcast %union.anon* %26 to %struct.nvif_vmm_put_v0*
  %28 = getelementptr inbounds %struct.nvif_vmm_put_v0, %struct.nvif_vmm_put_v0* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @nvif_unpack(i32 %25, i8** %6, i32* %7, i64 %29, i32 0, i32 0, i32 0)
  store i32 %30, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %3
  %33 = load %union.anon*, %union.anon** %9, align 8
  %34 = bitcast %union.anon* %33 to %struct.nvif_vmm_put_v0*
  %35 = getelementptr inbounds %struct.nvif_vmm_put_v0, %struct.nvif_vmm_put_v0* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %13, align 8
  br label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %134

39:                                               ; preds = %32
  %40 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %41 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %44 = load %union.anon*, %union.anon** %9, align 8
  %45 = bitcast %union.anon* %44 to %struct.nvif_vmm_put_v0*
  %46 = getelementptr inbounds %struct.nvif_vmm_put_v0, %struct.nvif_vmm_put_v0* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.nvkm_vma* @nvkm_vmm_node_search(%struct.nvkm_vmm* %43, i64 %47)
  store %struct.nvkm_vma* %48, %struct.nvkm_vma** %11, align 8
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  %51 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %52 = icmp ne %struct.nvkm_vma* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %39
  %54 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %55 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %61 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %59, %53, %39
  %65 = phi i1 [ true, %53 ], [ true, %39 ], [ %63, %59 ]
  br i1 %65, label %66, label %89

66:                                               ; preds = %64
  %67 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %70 = icmp ne %struct.nvkm_vma* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %73 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  br label %76

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i64 [ %74, %71 ], [ -1, %75 ]
  %78 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %79 = icmp ne %struct.nvkm_vma* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %82 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  br label %85

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi i64 [ %83, %80 ], [ 0, %84 ]
  %87 = trunc i64 %86 to i32
  %88 = call i32 (%struct.nvkm_vmm*, i8*, i64, i64, i32, ...) @VMM_DEBUG(%struct.nvkm_vmm* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %77, i32 %87)
  br label %129

89:                                               ; preds = %64
  %90 = load i32, i32* @ENOENT, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %12, align 4
  %92 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %93 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load %struct.nvkm_client*, %struct.nvkm_client** %8, align 8
  %98 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96, %89
  %102 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %103 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br label %106

106:                                              ; preds = %101, %96
  %107 = phi i1 [ true, %96 ], [ %105, %101 ]
  br i1 %107, label %108, label %125

108:                                              ; preds = %106
  %109 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %112 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = load %struct.nvkm_client*, %struct.nvkm_client** %8, align 8
  %116 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %122 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 (%struct.nvkm_vmm*, i8*, i64, i64, i32, ...) @VMM_DEBUG(%struct.nvkm_vmm* %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %110, i64 %114, i32 %120, i64 %123)
  br label %129

125:                                              ; preds = %106
  %126 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %127 = load %struct.nvkm_vma*, %struct.nvkm_vma** %11, align 8
  %128 = call i32 @nvkm_vmm_put_locked(%struct.nvkm_vmm* %126, %struct.nvkm_vma* %127)
  store i32 0, i32* %12, align 4
  br label %129

129:                                              ; preds = %125, %108, %85
  %130 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %131 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %130, i32 0, i32 0
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %129, %37
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nvkm_vma* @nvkm_vmm_node_search(%struct.nvkm_vmm*, i64) #1

declare dso_local i32 @VMM_DEBUG(%struct.nvkm_vmm*, i8*, i64, i64, i32, ...) #1

declare dso_local i32 @nvkm_vmm_put_locked(%struct.nvkm_vmm*, %struct.nvkm_vma*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
