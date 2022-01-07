; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_secureboot.c_efi_get_secureboot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_secureboot.c_efi_get_secureboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@efi_SecureBoot_name = common dso_local global i32 0, align 4
@efi_variable_guid = common dso_local global i32 0, align 4
@EFI_NOT_FOUND = common dso_local global i64 0, align 8
@efi_secureboot_mode_disabled = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@efi_SetupMode_name = common dso_local global i32 0, align 4
@shim_MokSBState_name = common dso_local global i32 0, align 4
@shim_guid = common dso_local global i32 0, align 4
@EFI_VARIABLE_RUNTIME_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"UEFI Secure Boot is enabled.\0A\00", align 1
@efi_secureboot_mode_enabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not determine UEFI Secure Boot status.\0A\00", align 1
@efi_secureboot_mode_unknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_get_secureboot(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 8, i64* %8, align 8
  %10 = load i32, i32* @efi_SecureBoot_name, align 4
  %11 = call i64 @get_efi_var(i32 %10, i32* @efi_variable_guid, i32* null, i64* %8, i64* %5)
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* @EFI_NOT_FOUND, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @efi_secureboot_mode_disabled, align 4
  store i32 %16, i32* %2, align 4
  br label %63

17:                                               ; preds = %1
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @EFI_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %59

22:                                               ; preds = %17
  store i64 8, i64* %8, align 8
  %23 = load i32, i32* @efi_SetupMode_name, align 4
  %24 = call i64 @get_efi_var(i32 %23, i32* @efi_variable_guid, i32* null, i64* %8, i64* %6)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @EFI_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %59

29:                                               ; preds = %22
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @efi_secureboot_mode_disabled, align 4
  store i32 %36, i32* %2, align 4
  br label %63

37:                                               ; preds = %32
  store i64 8, i64* %8, align 8
  %38 = load i32, i32* @shim_MokSBState_name, align 4
  %39 = call i64 @get_efi_var(i32 %38, i32* @shim_guid, i32* %4, i64* %8, i64* %7)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @EFI_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %55

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @EFI_VARIABLE_RUNTIME_ACCESS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @efi_secureboot_mode_disabled, align 4
  store i32 %53, i32* %2, align 4
  br label %63

54:                                               ; preds = %49, %44
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @pr_efi(i32* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @efi_secureboot_mode_enabled, align 4
  store i32 %58, i32* %2, align 4
  br label %63

59:                                               ; preds = %28, %21
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @pr_efi_err(i32* %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @efi_secureboot_mode_unknown, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %55, %52, %35, %15
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @get_efi_var(i32, i32*, i32*, i64*, i64*) #1

declare dso_local i32 @pr_efi(i32*, i8*) #1

declare dso_local i32 @pr_efi_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
