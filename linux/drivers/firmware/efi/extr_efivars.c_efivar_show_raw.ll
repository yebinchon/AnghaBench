; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivar_show_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivar_show_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivar_entry = type { %struct.efi_variable }
%struct.efi_variable = type { i32, i32, i32, %struct.efi_variable*, %struct.efi_variable* }
%struct.compat_efi_variable = type { i8*, i8*, i32, i32, i32 }

@EIO = common dso_local global i64 0, align 8
@EFI_VAR_NAME_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.efivar_entry*, i8*)* @efivar_show_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @efivar_show_raw(%struct.efivar_entry* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.efivar_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.efi_variable*, align 8
  %7 = alloca %struct.compat_efi_variable*, align 8
  %8 = alloca i64, align 8
  store %struct.efivar_entry* %0, %struct.efivar_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %10 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %9, i32 0, i32 0
  store %struct.efi_variable* %10, %struct.efi_variable** %6, align 8
  %11 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %12 = icmp ne %struct.efivar_entry* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %2
  store i64 0, i64* %3, align 8
  br label %79

17:                                               ; preds = %13
  %18 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %19 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %18, i32 0, i32 0
  store i32 1024, i32* %19, align 8
  %20 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %21 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %22 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %22, i32 0, i32 1
  %24 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %25 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %25, i32 0, i32 0
  %27 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %28 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %28, i32 0, i32 3
  %30 = load %struct.efi_variable*, %struct.efi_variable** %29, align 8
  %31 = call i64 @efivar_entry_get(%struct.efivar_entry* %20, i32* %23, i32* %26, %struct.efi_variable* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load i64, i64* @EIO, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %3, align 8
  br label %79

36:                                               ; preds = %17
  %37 = call i64 (...) @in_compat_syscall()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8
  %41 = bitcast i8* %40 to %struct.compat_efi_variable*
  store %struct.compat_efi_variable* %41, %struct.compat_efi_variable** %7, align 8
  store i64 32, i64* %8, align 8
  %42 = load %struct.compat_efi_variable*, %struct.compat_efi_variable** %7, align 8
  %43 = getelementptr inbounds %struct.compat_efi_variable, %struct.compat_efi_variable* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %46 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %45, i32 0, i32 4
  %47 = load %struct.efi_variable*, %struct.efi_variable** %46, align 8
  %48 = load i64, i64* @EFI_VAR_NAME_LEN, align 8
  %49 = call i32 @memcpy(i8* %44, %struct.efi_variable* %47, i64 %48)
  %50 = load %struct.compat_efi_variable*, %struct.compat_efi_variable** %7, align 8
  %51 = getelementptr inbounds %struct.compat_efi_variable, %struct.compat_efi_variable* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %54 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %53, i32 0, i32 3
  %55 = load %struct.efi_variable*, %struct.efi_variable** %54, align 8
  %56 = call i32 @memcpy(i8* %52, %struct.efi_variable* %55, i64 8)
  %57 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %58 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.compat_efi_variable*, %struct.compat_efi_variable** %7, align 8
  %61 = getelementptr inbounds %struct.compat_efi_variable, %struct.compat_efi_variable* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %63 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.compat_efi_variable*, %struct.compat_efi_variable** %7, align 8
  %66 = getelementptr inbounds %struct.compat_efi_variable, %struct.compat_efi_variable* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %68 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.compat_efi_variable*, %struct.compat_efi_variable** %7, align 8
  %71 = getelementptr inbounds %struct.compat_efi_variable, %struct.compat_efi_variable* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  br label %77

72:                                               ; preds = %36
  store i64 32, i64* %8, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @memcpy(i8* %73, %struct.efi_variable* %74, i64 %75)
  br label %77

77:                                               ; preds = %72, %39
  %78 = load i64, i64* %8, align 8
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %77, %33, %16
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i64 @efivar_entry_get(%struct.efivar_entry*, i32*, i32*, %struct.efi_variable*) #1

declare dso_local i64 @in_compat_syscall(...) #1

declare dso_local i32 @memcpy(i8*, %struct.efi_variable*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
