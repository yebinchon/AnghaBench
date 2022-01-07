; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.efivar_operations* }
%struct.efivar_operations = type { i64 (i32, i32*, i32, i32, i32*)* }
%struct.efivar_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@efivars_lock = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@__efivars = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@EFI_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efivar_entry_delete(%struct.efivar_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efivar_entry*, align 8
  %4 = alloca %struct.efivar_operations*, align 8
  %5 = alloca i64, align 8
  store %struct.efivar_entry* %0, %struct.efivar_entry** %3, align 8
  %6 = call i64 @down_interruptible(i32* @efivars_lock)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EINTR, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__efivars, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = call i32 @up(i32* @efivars_lock)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %47

18:                                               ; preds = %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__efivars, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.efivar_operations*, %struct.efivar_operations** %20, align 8
  store %struct.efivar_operations* %21, %struct.efivar_operations** %4, align 8
  %22 = load %struct.efivar_operations*, %struct.efivar_operations** %4, align 8
  %23 = getelementptr inbounds %struct.efivar_operations, %struct.efivar_operations* %22, i32 0, i32 0
  %24 = load i64 (i32, i32*, i32, i32, i32*)*, i64 (i32, i32*, i32, i32, i32*)** %23, align 8
  %25 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %26 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %30 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i64 %24(i32 %28, i32* %31, i32 0, i32 0, i32* null)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @EFI_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %18
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @EFI_NOT_FOUND, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = call i32 @up(i32* @efivars_lock)
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @efi_status_to_err(i64 %42)
  store i32 %43, i32* %2, align 4
  br label %47

44:                                               ; preds = %36, %18
  %45 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %46 = call i32 @efivar_entry_list_del_unlock(%struct.efivar_entry* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %40, %14, %8
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @efi_status_to_err(i64) #1

declare dso_local i32 @efivar_entry_list_del_unlock(%struct.efivar_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
