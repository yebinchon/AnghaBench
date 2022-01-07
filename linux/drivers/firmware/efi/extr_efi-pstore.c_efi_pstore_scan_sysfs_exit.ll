; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi-pstore.c_efi_pstore_scan_sysfs_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi-pstore.c_efi_pstore_scan_sysfs_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivar_entry = type { %struct.list_head }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efivar_entry*, %struct.efivar_entry*, %struct.list_head*, i32)* @efi_pstore_scan_sysfs_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_pstore_scan_sysfs_exit(%struct.efivar_entry* %0, %struct.efivar_entry* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efivar_entry*, align 8
  %7 = alloca %struct.efivar_entry*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.efivar_entry* %0, %struct.efivar_entry** %6, align 8
  store %struct.efivar_entry* %1, %struct.efivar_entry** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.efivar_entry*, %struct.efivar_entry** %6, align 8
  %12 = call i32 @__efi_pstore_scan_sysfs_exit(%struct.efivar_entry* %11, i32 1)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %5, align 4
  br label %30

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.efivar_entry*, %struct.efivar_entry** %7, align 8
  %22 = load %struct.efivar_entry*, %struct.efivar_entry** %7, align 8
  %23 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %22, i32 0, i32 0
  %24 = load %struct.list_head*, %struct.list_head** %8, align 8
  %25 = icmp ne %struct.list_head* %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @__efi_pstore_scan_sysfs_exit(%struct.efivar_entry* %21, i32 %26)
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %20, %17
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %15
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @__efi_pstore_scan_sysfs_exit(%struct.efivar_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
