; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivar_update_sysfs_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivar_update_sysfs_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.efivar_entry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@efivar_update_sysfs_entry = common dso_local global i32 0, align 4
@efivar_sysfs_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @efivar_update_sysfs_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efivar_update_sysfs_entries(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.efivar_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  br label %5

5:                                                ; preds = %1, %18
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.efivar_entry* @kzalloc(i32 4, i32 %6)
  store %struct.efivar_entry* %7, %struct.efivar_entry** %3, align 8
  %8 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %9 = icmp ne %struct.efivar_entry* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %24

11:                                               ; preds = %5
  %12 = load i32, i32* @efivar_update_sysfs_entry, align 4
  %13 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %14 = call i32 @efivar_init(i32 %12, %struct.efivar_entry* %13, i32 0, i32* @efivar_sysfs_list)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %21

18:                                               ; preds = %11
  %19 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %20 = call i32 @efivar_create_sysfs_entry(%struct.efivar_entry* %19)
  br label %5

21:                                               ; preds = %17
  %22 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %23 = call i32 @kfree(%struct.efivar_entry* %22)
  br label %24

24:                                               ; preds = %21, %10
  ret void
}

declare dso_local %struct.efivar_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @efivar_init(i32, %struct.efivar_entry*, i32, i32*) #1

declare dso_local i32 @efivar_create_sysfs_entry(%struct.efivar_entry*) #1

declare dso_local i32 @kfree(%struct.efivar_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
