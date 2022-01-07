; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivar_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivar_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.efi_variable = type { i32, i32* }
%struct.compat_efi_variable = type { i32, i32* }
%struct.efivar_entry = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@efivar_sysfs_list = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @efivar_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efivar_delete(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.efi_variable*, align 8
  %15 = alloca %struct.compat_efi_variable*, align 8
  %16 = alloca %struct.efivar_entry*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = bitcast i8* %20 to %struct.efi_variable*
  store %struct.efi_variable* %21, %struct.efi_variable** %14, align 8
  store i32 0, i32* %19, align 4
  %22 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %23 = call i32 @capable(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @EACCES, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %102

28:                                               ; preds = %6
  %29 = call i64 (...) @in_compat_syscall()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %32, 16
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %102

37:                                               ; preds = %31
  %38 = load i8*, i8** %11, align 8
  %39 = bitcast i8* %38 to %struct.compat_efi_variable*
  store %struct.compat_efi_variable* %39, %struct.compat_efi_variable** %15, align 8
  %40 = load %struct.compat_efi_variable*, %struct.compat_efi_variable** %15, align 8
  %41 = getelementptr inbounds %struct.compat_efi_variable, %struct.compat_efi_variable* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %17, align 8
  %43 = load %struct.compat_efi_variable*, %struct.compat_efi_variable** %15, align 8
  %44 = getelementptr inbounds %struct.compat_efi_variable, %struct.compat_efi_variable* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %18, align 4
  br label %59

46:                                               ; preds = %28
  %47 = load i64, i64* %13, align 8
  %48 = icmp ne i64 %47, 16
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %102

52:                                               ; preds = %46
  %53 = load %struct.efi_variable*, %struct.efi_variable** %14, align 8
  %54 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %17, align 8
  %56 = load %struct.efi_variable*, %struct.efi_variable** %14, align 8
  %57 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %18, align 4
  br label %59

59:                                               ; preds = %52, %37
  %60 = call i64 (...) @efivar_entry_iter_begin()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @EINTR, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %102

65:                                               ; preds = %59
  %66 = load i32*, i32** %17, align 8
  %67 = load i32, i32* %18, align 4
  %68 = call %struct.efivar_entry* @efivar_entry_find(i32* %66, i32 %67, i32* @efivar_sysfs_list, i32 1)
  store %struct.efivar_entry* %68, %struct.efivar_entry** %16, align 8
  %69 = load %struct.efivar_entry*, %struct.efivar_entry** %16, align 8
  %70 = icmp ne %struct.efivar_entry* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %19, align 4
  br label %82

74:                                               ; preds = %65
  %75 = load %struct.efivar_entry*, %struct.efivar_entry** %16, align 8
  %76 = call i64 @__efivar_entry_delete(%struct.efivar_entry* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %19, align 4
  br label %81

81:                                               ; preds = %78, %74
  br label %82

82:                                               ; preds = %81, %71
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = call i32 (...) @efivar_entry_iter_end()
  %87 = load i32, i32* %19, align 4
  store i32 %87, i32* %7, align 4
  br label %102

88:                                               ; preds = %82
  %89 = load %struct.efivar_entry*, %struct.efivar_entry** %16, align 8
  %90 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = call i32 (...) @efivar_entry_iter_end()
  %95 = load %struct.efivar_entry*, %struct.efivar_entry** %16, align 8
  %96 = call i32 @efivar_unregister(%struct.efivar_entry* %95)
  br label %99

97:                                               ; preds = %88
  %98 = call i32 (...) @efivar_entry_iter_end()
  br label %99

99:                                               ; preds = %97, %93
  %100 = load i64, i64* %13, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %99, %85, %62, %49, %34, %25
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @in_compat_syscall(...) #1

declare dso_local i64 @efivar_entry_iter_begin(...) #1

declare dso_local %struct.efivar_entry* @efivar_entry_find(i32*, i32, i32*, i32) #1

declare dso_local i64 @__efivar_entry_delete(%struct.efivar_entry*) #1

declare dso_local i32 @efivar_entry_iter_end(...) #1

declare dso_local i32 @efivar_unregister(%struct.efivar_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
