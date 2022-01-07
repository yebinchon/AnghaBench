; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_hp_release_drhd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_hp_release_drhd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_dmar_header = type { i32 }
%struct.dmar_drhd_unit = type { i32 }
%struct.acpi_dmar_hardware_unit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_dmar_header*, i8*)* @dmar_hp_release_drhd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_hp_release_drhd(%struct.acpi_dmar_header* %0, i8* %1) #0 {
  %3 = alloca %struct.acpi_dmar_header*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dmar_drhd_unit*, align 8
  store %struct.acpi_dmar_header* %0, %struct.acpi_dmar_header** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.acpi_dmar_header*, %struct.acpi_dmar_header** %3, align 8
  %7 = bitcast %struct.acpi_dmar_header* %6 to %struct.acpi_dmar_hardware_unit*
  %8 = call %struct.dmar_drhd_unit* @dmar_find_dmaru(%struct.acpi_dmar_hardware_unit* %7)
  store %struct.dmar_drhd_unit* %8, %struct.dmar_drhd_unit** %5, align 8
  %9 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %5, align 8
  %10 = icmp ne %struct.dmar_drhd_unit* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %5, align 8
  %13 = getelementptr inbounds %struct.dmar_drhd_unit, %struct.dmar_drhd_unit* %12, i32 0, i32 0
  %14 = call i32 @list_del_rcu(i32* %13)
  %15 = call i32 (...) @synchronize_rcu()
  %16 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %5, align 8
  %17 = call i32 @dmar_free_drhd(%struct.dmar_drhd_unit* %16)
  br label %18

18:                                               ; preds = %11, %2
  ret i32 0
}

declare dso_local %struct.dmar_drhd_unit* @dmar_find_dmaru(%struct.acpi_dmar_hardware_unit*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @dmar_free_drhd(%struct.dmar_drhd_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
