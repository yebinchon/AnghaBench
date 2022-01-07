; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi-pstore.c___efi_pstore_scan_sysfs_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi-pstore.c___efi_pstore_scan_sysfs_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivar_entry = type { i32, i32, i64 }

@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efivar_entry*, i32)* @__efi_pstore_scan_sysfs_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__efi_pstore_scan_sysfs_exit(%struct.efivar_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efivar_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.efivar_entry* %0, %struct.efivar_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %7 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %12 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %11, i32 0, i32 1
  %13 = call i32 @list_del(i32* %12)
  %14 = call i32 (...) @efivar_entry_iter_end()
  %15 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %16 = call i32 @efivar_unregister(%struct.efivar_entry* %15)
  %17 = call i64 (...) @efivar_entry_iter_begin()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load i32, i32* @EINTR, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %10
  br label %30

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %28 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %22
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @efivar_entry_iter_end(...) #1

declare dso_local i32 @efivar_unregister(%struct.efivar_entry*) #1

declare dso_local i64 @efivar_entry_iter_begin(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
