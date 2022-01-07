; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_mthd_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_mthd_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_uvmm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_vmm_page* }
%struct.nvkm_vmm_page = type { i64, i64 }
%union.anon = type { %struct.nvif_vmm_page_v0 }
%struct.nvif_vmm_page_v0 = type { i64, i32, i32, i32, i32, i64 }

@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NVKM_VMM_PAGE_SPARSE = common dso_local global i64 0, align 8
@NVKM_VMM_PAGE_VRAM = common dso_local global i64 0, align 8
@NVKM_VMM_PAGE_HOST = common dso_local global i64 0, align 8
@NVKM_VMM_PAGE_COMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_uvmm*, i8*, i32)* @nvkm_uvmm_mthd_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_uvmm_mthd_page(%struct.nvkm_uvmm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_uvmm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.anon*, align 8
  %9 = alloca %struct.nvkm_vmm_page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.nvkm_uvmm* %0, %struct.nvkm_uvmm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %union.anon*
  store %union.anon* %15, %union.anon** %8, align 8
  %16 = load i32, i32* @ENOSYS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.nvkm_uvmm*, %struct.nvkm_uvmm** %5, align 8
  %19 = getelementptr inbounds %struct.nvkm_uvmm, %struct.nvkm_uvmm* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %23, align 8
  store %struct.nvkm_vmm_page* %24, %struct.nvkm_vmm_page** %9, align 8
  store i64 0, i64* %13, align 8
  br label %25

25:                                               ; preds = %33, %3
  %26 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %9, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %26, i64 %27
  %29 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %13, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %13, align 8
  br label %25

36:                                               ; preds = %25
  %37 = load i32, i32* %10, align 4
  %38 = load %union.anon*, %union.anon** %8, align 8
  %39 = bitcast %union.anon* %38 to %struct.nvif_vmm_page_v0*
  %40 = call i32 @nvif_unpack(i32 %37, i8** %6, i32* %7, %struct.nvif_vmm_page_v0* byval(%struct.nvif_vmm_page_v0) align 8 %39, i32 0, i32 0, i32 0)
  store i32 %40, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %106, label %42

42:                                               ; preds = %36
  %43 = load %union.anon*, %union.anon** %8, align 8
  %44 = bitcast %union.anon* %43 to %struct.nvif_vmm_page_v0*
  %45 = getelementptr inbounds %struct.nvif_vmm_page_v0, %struct.nvif_vmm_page_v0* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp uge i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %110

52:                                               ; preds = %42
  %53 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %9, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %53, i64 %54
  %56 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %11, align 8
  %58 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %9, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %58, i64 %59
  %61 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %union.anon*, %union.anon** %8, align 8
  %64 = bitcast %union.anon* %63 to %struct.nvif_vmm_page_v0*
  %65 = getelementptr inbounds %struct.nvif_vmm_page_v0, %struct.nvif_vmm_page_v0* %64, i32 0, i32 5
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* @NVKM_VMM_PAGE_SPARSE, align 8
  %68 = and i64 %66, %67
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %union.anon*, %union.anon** %8, align 8
  %74 = bitcast %union.anon* %73 to %struct.nvif_vmm_page_v0*
  %75 = getelementptr inbounds %struct.nvif_vmm_page_v0, %struct.nvif_vmm_page_v0* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @NVKM_VMM_PAGE_VRAM, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load %union.anon*, %union.anon** %8, align 8
  %84 = bitcast %union.anon* %83 to %struct.nvif_vmm_page_v0*
  %85 = getelementptr inbounds %struct.nvif_vmm_page_v0, %struct.nvif_vmm_page_v0* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 4
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* @NVKM_VMM_PAGE_HOST, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  %90 = xor i1 %89, true
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load %union.anon*, %union.anon** %8, align 8
  %94 = bitcast %union.anon* %93 to %struct.nvif_vmm_page_v0*
  %95 = getelementptr inbounds %struct.nvif_vmm_page_v0, %struct.nvif_vmm_page_v0* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* @NVKM_VMM_PAGE_COMP, align 8
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = load %union.anon*, %union.anon** %8, align 8
  %104 = bitcast %union.anon* %103 to %struct.nvif_vmm_page_v0*
  %105 = getelementptr inbounds %struct.nvif_vmm_page_v0, %struct.nvif_vmm_page_v0* %104, i32 0, i32 4
  store i32 %102, i32* %105, align 4
  br label %109

106:                                              ; preds = %36
  %107 = load i32, i32* @ENOSYS, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %110

109:                                              ; preds = %52
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %106, %49
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, %struct.nvif_vmm_page_v0* byval(%struct.nvif_vmm_page_v0) align 8, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
