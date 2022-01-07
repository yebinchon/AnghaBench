; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_mmu.c_panfrost_mmu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_mmu.c_panfrost_mmu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_gem_object = type { i32, %struct.TYPE_3__, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_gem_object }
%struct.drm_gem_object = type { i32 }
%struct.panfrost_device = type { i32 }
%struct.sg_table = type { i32 }

@IOMMU_READ = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@IOMMU_NOEXEC = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @panfrost_mmu_map(%struct.panfrost_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panfrost_gem_object*, align 8
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.panfrost_device*, align 8
  %6 = alloca %struct.sg_table*, align 8
  %7 = alloca i32, align 4
  store %struct.panfrost_gem_object* %0, %struct.panfrost_gem_object** %3, align 8
  %8 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %3, align 8
  %9 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.drm_gem_object* %10, %struct.drm_gem_object** %4, align 8
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %12 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.panfrost_device* @to_panfrost_device(i32 %13)
  store %struct.panfrost_device* %14, %struct.panfrost_device** %5, align 8
  %15 = load i32, i32* @IOMMU_READ, align 4
  %16 = load i32, i32* @IOMMU_WRITE, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %3, align 8
  %19 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

24:                                               ; preds = %1
  %25 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %3, align 8
  %26 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @IOMMU_NOEXEC, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %35 = call %struct.sg_table* @drm_gem_shmem_get_pages_sgt(%struct.drm_gem_object* %34)
  store %struct.sg_table* %35, %struct.sg_table** %6, align 8
  %36 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %37 = call i32 @IS_ERR(%struct.sg_table* %36)
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %42 = call i32 @PTR_ERR(%struct.sg_table* %41)
  store i32 %42, i32* %2, align 4
  br label %59

43:                                               ; preds = %33
  %44 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %45 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %3, align 8
  %46 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %3, align 8
  %49 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PAGE_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %56 = call i32 @mmu_map_sg(%struct.panfrost_device* %44, i32 %47, i32 %53, i32 %54, %struct.sg_table* %55)
  %57 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %3, align 8
  %58 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %43, %40, %23
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.panfrost_device* @to_panfrost_device(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sg_table* @drm_gem_shmem_get_pages_sgt(%struct.drm_gem_object*) #1

declare dso_local i32 @IS_ERR(%struct.sg_table*) #1

declare dso_local i32 @PTR_ERR(%struct.sg_table*) #1

declare dso_local i32 @mmu_map_sg(%struct.panfrost_device*, i32, i32, i32, %struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
