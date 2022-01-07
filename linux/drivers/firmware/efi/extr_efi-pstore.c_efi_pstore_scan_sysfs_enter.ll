; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi-pstore.c_efi_pstore_scan_sysfs_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi-pstore.c_efi_pstore_scan_sysfs_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivar_entry = type { i32, %struct.list_head }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efivar_entry*, %struct.efivar_entry*, %struct.list_head*)* @efi_pstore_scan_sysfs_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efi_pstore_scan_sysfs_enter(%struct.efivar_entry* %0, %struct.efivar_entry* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.efivar_entry*, align 8
  %5 = alloca %struct.efivar_entry*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.efivar_entry* %0, %struct.efivar_entry** %4, align 8
  store %struct.efivar_entry* %1, %struct.efivar_entry** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %7 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %8 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.efivar_entry*, %struct.efivar_entry** %5, align 8
  %10 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %9, i32 0, i32 1
  %11 = load %struct.list_head*, %struct.list_head** %6, align 8
  %12 = icmp ne %struct.list_head* %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.efivar_entry*, %struct.efivar_entry** %5, align 8
  %15 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
