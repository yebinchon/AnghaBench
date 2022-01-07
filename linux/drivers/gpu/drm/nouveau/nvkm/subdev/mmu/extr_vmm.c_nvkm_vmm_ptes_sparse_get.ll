; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ptes_sparse_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ptes_sparse_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_vmm_page = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NVKM_VMM_PAGE_SPARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sparse ref\00", align 1
@nvkm_vmm_sparse_ref_ptes = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i64, i64)* @nvkm_vmm_ptes_sparse_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_vmm_ptes_sparse_get(%struct.nvkm_vmm* %0, %struct.nvkm_vmm_page* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_vmm*, align 8
  %7 = alloca %struct.nvkm_vmm_page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %6, align 8
  store %struct.nvkm_vmm_page* %1, %struct.nvkm_vmm_page** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %7, align 8
  %12 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NVKM_VMM_PAGE_SPARSE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %4
  %18 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %19 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @nvkm_vmm_sparse_ref_ptes, align 4
  %23 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %7, align 8
  %24 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @nvkm_vmm_iter(%struct.nvkm_vmm* %18, %struct.nvkm_vmm_page* %19, i64 %20, i64 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1, i32 0, i32 %22, i32* null, i32* null, i32 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, -1
  br i1 %32, label %33, label %47

33:                                               ; preds = %17
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = sub i64 %34, %35
  store i64 %36, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %40 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @nvkm_vmm_ptes_sparse_put(%struct.nvkm_vmm* %39, %struct.nvkm_vmm_page* %40, i64 %41, i64 %42)
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %51

47:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %51

48:                                               ; preds = %4
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %47, %44
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i64 @nvkm_vmm_iter(%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i64, i64, i8*, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @nvkm_vmm_ptes_sparse_put(%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
