; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_intel_pasid_get_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_intel_pasid_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasid_entry = type { i32 }
%struct.device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_domain_info* }
%struct.device_domain_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pasid_table = type { %struct.pasid_dir_entry* }
%struct.pasid_dir_entry = type { i32 }

@PASID_PDE_SHIFT = common dso_local global i32 0, align 4
@PASID_PTE_MASK = common dso_local global i32 0, align 4
@pasid_lock = common dso_local global i32 0, align 4
@PASID_PTE_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pasid_entry* @intel_pasid_get_entry(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.pasid_entry*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_domain_info*, align 8
  %7 = alloca %struct.pasid_table*, align 8
  %8 = alloca %struct.pasid_dir_entry*, align 8
  %9 = alloca %struct.pasid_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.pasid_table* @intel_pasid_get_table(%struct.device* %12)
  store %struct.pasid_table* %13, %struct.pasid_table** %7, align 8
  %14 = load %struct.pasid_table*, %struct.pasid_table** %7, align 8
  %15 = icmp ne %struct.pasid_table* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @intel_pasid_get_dev_max_id(%struct.device* %21)
  %23 = icmp sge i32 %20, %22
  br label %24

24:                                               ; preds = %19, %16, %2
  %25 = phi i1 [ true, %16 ], [ true, %2 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store %struct.pasid_entry* null, %struct.pasid_entry** %3, align 8
  br label %82

30:                                               ; preds = %24
  %31 = load %struct.pasid_table*, %struct.pasid_table** %7, align 8
  %32 = getelementptr inbounds %struct.pasid_table, %struct.pasid_table* %31, i32 0, i32 0
  %33 = load %struct.pasid_dir_entry*, %struct.pasid_dir_entry** %32, align 8
  store %struct.pasid_dir_entry* %33, %struct.pasid_dir_entry** %8, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.device_domain_info*, %struct.device_domain_info** %36, align 8
  store %struct.device_domain_info* %37, %struct.device_domain_info** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PASID_PDE_SHIFT, align 4
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @PASID_PTE_MASK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %11, align 4
  %44 = call i32 @spin_lock(i32* @pasid_lock)
  %45 = load %struct.pasid_dir_entry*, %struct.pasid_dir_entry** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.pasid_dir_entry, %struct.pasid_dir_entry* %45, i64 %47
  %49 = call %struct.pasid_entry* @get_pasid_table_from_pde(%struct.pasid_dir_entry* %48)
  store %struct.pasid_entry* %49, %struct.pasid_entry** %9, align 8
  %50 = load %struct.pasid_entry*, %struct.pasid_entry** %9, align 8
  %51 = icmp ne %struct.pasid_entry* %50, null
  br i1 %51, label %76, label %52

52:                                               ; preds = %30
  %53 = load %struct.device_domain_info*, %struct.device_domain_info** %6, align 8
  %54 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.pasid_entry* @alloc_pgtable_page(i32 %57)
  store %struct.pasid_entry* %58, %struct.pasid_entry** %9, align 8
  %59 = load %struct.pasid_entry*, %struct.pasid_entry** %9, align 8
  %60 = icmp ne %struct.pasid_entry* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %52
  %62 = call i32 @spin_unlock(i32* @pasid_lock)
  store %struct.pasid_entry* null, %struct.pasid_entry** %3, align 8
  br label %82

63:                                               ; preds = %52
  %64 = load %struct.pasid_dir_entry*, %struct.pasid_dir_entry** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.pasid_dir_entry, %struct.pasid_dir_entry* %64, i64 %66
  %68 = getelementptr inbounds %struct.pasid_dir_entry, %struct.pasid_dir_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pasid_entry*, %struct.pasid_entry** %9, align 8
  %71 = call i64 @virt_to_phys(%struct.pasid_entry* %70)
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @PASID_PTE_PRESENT, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @WRITE_ONCE(i32 %69, i32 %74)
  br label %76

76:                                               ; preds = %63, %30
  %77 = call i32 @spin_unlock(i32* @pasid_lock)
  %78 = load %struct.pasid_entry*, %struct.pasid_entry** %9, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.pasid_entry, %struct.pasid_entry* %78, i64 %80
  store %struct.pasid_entry* %81, %struct.pasid_entry** %3, align 8
  br label %82

82:                                               ; preds = %76, %61, %29
  %83 = load %struct.pasid_entry*, %struct.pasid_entry** %3, align 8
  ret %struct.pasid_entry* %83
}

declare dso_local %struct.pasid_table* @intel_pasid_get_table(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_pasid_get_dev_max_id(%struct.device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.pasid_entry* @get_pasid_table_from_pde(%struct.pasid_dir_entry*) #1

declare dso_local %struct.pasid_entry* @alloc_pgtable_page(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i64 @virt_to_phys(%struct.pasid_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
