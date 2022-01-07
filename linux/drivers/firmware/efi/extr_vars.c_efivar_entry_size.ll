; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.efivar_operations* }
%struct.efivar_operations = type { i64 (i32, i32*, i32*, i64*, i32*)* }
%struct.efivar_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@efivars_lock = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@__efivars = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efivar_entry_size(%struct.efivar_entry* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efivar_entry*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.efivar_operations*, align 8
  %7 = alloca i64, align 8
  store %struct.efivar_entry* %0, %struct.efivar_entry** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i64*, i64** %5, align 8
  store i64 0, i64* %8, align 8
  %9 = call i64 @down_interruptible(i32* @efivars_lock)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINTR, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__efivars, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = call i32 @up(i32* @efivars_lock)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %45

21:                                               ; preds = %14
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__efivars, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.efivar_operations*, %struct.efivar_operations** %23, align 8
  store %struct.efivar_operations* %24, %struct.efivar_operations** %6, align 8
  %25 = load %struct.efivar_operations*, %struct.efivar_operations** %6, align 8
  %26 = getelementptr inbounds %struct.efivar_operations, %struct.efivar_operations* %25, i32 0, i32 0
  %27 = load i64 (i32, i32*, i32*, i64*, i32*)*, i64 (i32, i32*, i32*, i64*, i32*)** %26, align 8
  %28 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %29 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %33 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64*, i64** %5, align 8
  %36 = call i64 %27(i32 %31, i32* %34, i32* null, i64* %35, i32* null)
  store i64 %36, i64* %7, align 8
  %37 = call i32 @up(i32* @efivars_lock)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %21
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @efi_status_to_err(i64 %42)
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %41, %17, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @efi_status_to_err(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
