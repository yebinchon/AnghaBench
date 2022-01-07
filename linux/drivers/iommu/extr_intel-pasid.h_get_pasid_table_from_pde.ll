; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.h_get_pasid_table_from_pde.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.h_get_pasid_table_from_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasid_entry = type { i32 }
%struct.pasid_dir_entry = type { i32 }

@PDE_PFN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pasid_entry* (%struct.pasid_dir_entry*)* @get_pasid_table_from_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pasid_entry* @get_pasid_table_from_pde(%struct.pasid_dir_entry* %0) #0 {
  %2 = alloca %struct.pasid_entry*, align 8
  %3 = alloca %struct.pasid_dir_entry*, align 8
  store %struct.pasid_dir_entry* %0, %struct.pasid_dir_entry** %3, align 8
  %4 = load %struct.pasid_dir_entry*, %struct.pasid_dir_entry** %3, align 8
  %5 = call i32 @pasid_pde_is_present(%struct.pasid_dir_entry* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.pasid_entry* null, %struct.pasid_entry** %2, align 8
  br label %16

8:                                                ; preds = %1
  %9 = load %struct.pasid_dir_entry*, %struct.pasid_dir_entry** %3, align 8
  %10 = getelementptr inbounds %struct.pasid_dir_entry, %struct.pasid_dir_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @READ_ONCE(i32 %11)
  %13 = load i32, i32* @PDE_PFN_MASK, align 4
  %14 = and i32 %12, %13
  %15 = call %struct.pasid_entry* @phys_to_virt(i32 %14)
  store %struct.pasid_entry* %15, %struct.pasid_entry** %2, align 8
  br label %16

16:                                               ; preds = %8, %7
  %17 = load %struct.pasid_entry*, %struct.pasid_entry** %2, align 8
  ret %struct.pasid_entry* %17
}

declare dso_local i32 @pasid_pde_is_present(%struct.pasid_dir_entry*) #1

declare dso_local %struct.pasid_entry* @phys_to_virt(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
