; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_mmu.c_panfrost_mmu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_mmu.c_panfrost_mmu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_gem_object = type { i32, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, %struct.io_pgtable_ops* }
%struct.io_pgtable_ops = type { i64 (%struct.io_pgtable_ops*, i64, i64, i32*)*, i64 (%struct.io_pgtable_ops*, i64)* }
%struct.TYPE_4__ = type { %struct.drm_gem_object }
%struct.drm_gem_object = type { i32 }
%struct.panfrost_device = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"unmap: as=%d, iova=%llx, len=%zx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @panfrost_mmu_unmap(%struct.panfrost_gem_object* %0) #0 {
  %2 = alloca %struct.panfrost_gem_object*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.panfrost_device*, align 8
  %5 = alloca %struct.io_pgtable_ops*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.panfrost_gem_object* %0, %struct.panfrost_gem_object** %2, align 8
  %11 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %2, align 8
  %12 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.drm_gem_object* %13, %struct.drm_gem_object** %3, align 8
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %15 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.panfrost_device* @to_panfrost_device(i32 %16)
  store %struct.panfrost_device* %17, %struct.panfrost_device** %4, align 8
  %18 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %2, align 8
  %19 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %21, align 8
  store %struct.io_pgtable_ops* %22, %struct.io_pgtable_ops** %5, align 8
  %23 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %2, align 8
  %24 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = shl i64 %26, %27
  store i64 %28, i64* %6, align 8
  %29 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %2, align 8
  %30 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PAGE_SHIFT, align 8
  %34 = shl i64 %32, %33
  store i64 %34, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %35 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %2, align 8
  %36 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %1
  br label %108

44:                                               ; preds = %1
  %45 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %46 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %2, align 8
  %49 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %52, i64 %53, i64 %54)
  br label %56

56:                                               ; preds = %86, %44
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %56
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = sub i64 %62, %63
  %65 = call i64 @get_pgsize(i64 %61, i64 %64)
  store i64 %65, i64* %10, align 8
  %66 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %5, align 8
  %67 = getelementptr inbounds %struct.io_pgtable_ops, %struct.io_pgtable_ops* %66, i32 0, i32 1
  %68 = load i64 (%struct.io_pgtable_ops*, i64)*, i64 (%struct.io_pgtable_ops*, i64)** %67, align 8
  %69 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i64 %68(%struct.io_pgtable_ops* %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %60
  %74 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %5, align 8
  %75 = getelementptr inbounds %struct.io_pgtable_ops, %struct.io_pgtable_ops* %74, i32 0, i32 0
  %76 = load i64 (%struct.io_pgtable_ops*, i64, i64, i32*)*, i64 (%struct.io_pgtable_ops*, i64, i64, i32*)** %75, align 8
  %77 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i64 %76(%struct.io_pgtable_ops* %77, i64 %78, i64 %79, i32* null)
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i64 @WARN_ON(i32 %84)
  br label %86

86:                                               ; preds = %73, %60
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %6, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %8, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %8, align 8
  br label %56

93:                                               ; preds = %56
  %94 = load %struct.panfrost_device*, %struct.panfrost_device** %4, align 8
  %95 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %2, align 8
  %96 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %95, i32 0, i32 2
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %2, align 8
  %99 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PAGE_SHIFT, align 8
  %103 = shl i64 %101, %102
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @panfrost_mmu_flush_range(%struct.panfrost_device* %94, %struct.TYPE_6__* %97, i64 %103, i64 %104)
  %106 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %2, align 8
  %107 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  br label %108

108:                                              ; preds = %93, %43
  ret void
}

declare dso_local %struct.panfrost_device* @to_panfrost_device(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i64) #1

declare dso_local i64 @get_pgsize(i64, i64) #1

declare dso_local i32 @panfrost_mmu_flush_range(%struct.panfrost_device*, %struct.TYPE_6__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
