; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_intel_pasid_free_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_intel_pasid_free_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_domain_info* }
%struct.device_domain_info = type { %struct.pasid_table* }
%struct.pasid_table = type { i32, i32, %struct.pasid_dir_entry*, i32 }
%struct.pasid_dir_entry = type { i32 }
%struct.pasid_entry = type { i32 }

@PASID_PDE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pasid_free_table(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.device_domain_info*, align 8
  %4 = alloca %struct.pasid_table*, align 8
  %5 = alloca %struct.pasid_dir_entry*, align 8
  %6 = alloca %struct.pasid_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device_domain_info*, %struct.device_domain_info** %11, align 8
  store %struct.device_domain_info* %12, %struct.device_domain_info** %3, align 8
  %13 = load %struct.device_domain_info*, %struct.device_domain_info** %3, align 8
  %14 = icmp ne %struct.device_domain_info* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = call i32 @dev_is_pci(%struct.device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.device_domain_info*, %struct.device_domain_info** %3, align 8
  %21 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %20, i32 0, i32 0
  %22 = load %struct.pasid_table*, %struct.pasid_table** %21, align 8
  %23 = icmp ne %struct.pasid_table* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %15, %1
  br label %72

25:                                               ; preds = %19
  %26 = load %struct.device_domain_info*, %struct.device_domain_info** %3, align 8
  %27 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %26, i32 0, i32 0
  %28 = load %struct.pasid_table*, %struct.pasid_table** %27, align 8
  store %struct.pasid_table* %28, %struct.pasid_table** %4, align 8
  %29 = load %struct.device_domain_info*, %struct.device_domain_info** %3, align 8
  %30 = load %struct.pasid_table*, %struct.pasid_table** %4, align 8
  %31 = call i32 @device_detach_pasid_table(%struct.device_domain_info* %29, %struct.pasid_table* %30)
  %32 = load %struct.pasid_table*, %struct.pasid_table** %4, align 8
  %33 = getelementptr inbounds %struct.pasid_table, %struct.pasid_table* %32, i32 0, i32 3
  %34 = call i32 @list_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  br label %72

37:                                               ; preds = %25
  %38 = load %struct.pasid_table*, %struct.pasid_table** %4, align 8
  %39 = getelementptr inbounds %struct.pasid_table, %struct.pasid_table* %38, i32 0, i32 2
  %40 = load %struct.pasid_dir_entry*, %struct.pasid_dir_entry** %39, align 8
  store %struct.pasid_dir_entry* %40, %struct.pasid_dir_entry** %5, align 8
  %41 = load %struct.pasid_table*, %struct.pasid_table** %4, align 8
  %42 = getelementptr inbounds %struct.pasid_table, %struct.pasid_table* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PASID_PDE_SHIFT, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %58, %37
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.pasid_dir_entry*, %struct.pasid_dir_entry** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.pasid_dir_entry, %struct.pasid_dir_entry* %51, i64 %53
  %55 = call %struct.pasid_entry* @get_pasid_table_from_pde(%struct.pasid_dir_entry* %54)
  store %struct.pasid_entry* %55, %struct.pasid_entry** %6, align 8
  %56 = load %struct.pasid_entry*, %struct.pasid_entry** %6, align 8
  %57 = call i32 @free_pgtable_page(%struct.pasid_entry* %56)
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %46

61:                                               ; preds = %46
  %62 = load %struct.pasid_table*, %struct.pasid_table** %4, align 8
  %63 = getelementptr inbounds %struct.pasid_table, %struct.pasid_table* %62, i32 0, i32 2
  %64 = load %struct.pasid_dir_entry*, %struct.pasid_dir_entry** %63, align 8
  %65 = ptrtoint %struct.pasid_dir_entry* %64 to i64
  %66 = load %struct.pasid_table*, %struct.pasid_table** %4, align 8
  %67 = getelementptr inbounds %struct.pasid_table, %struct.pasid_table* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @free_pages(i64 %65, i32 %68)
  %70 = load %struct.pasid_table*, %struct.pasid_table** %4, align 8
  %71 = call i32 @kfree(%struct.pasid_table* %70)
  br label %72

72:                                               ; preds = %61, %36, %24
  ret void
}

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @device_detach_pasid_table(%struct.device_domain_info*, %struct.pasid_table*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.pasid_entry* @get_pasid_table_from_pde(%struct.pasid_dir_entry*) #1

declare dso_local i32 @free_pgtable_page(%struct.pasid_entry*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @kfree(%struct.pasid_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
