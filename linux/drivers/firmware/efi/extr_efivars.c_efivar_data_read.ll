; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivar_data_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivar_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivar_entry = type { %struct.efi_variable }
%struct.efi_variable = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efivar_entry*, i8*)* @efivar_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efivar_data_read(%struct.efivar_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efivar_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.efi_variable*, align 8
  store %struct.efivar_entry* %0, %struct.efivar_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %8 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %7, i32 0, i32 0
  store %struct.efi_variable* %8, %struct.efi_variable** %6, align 8
  %9 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %10 = icmp ne %struct.efivar_entry* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %11
  %18 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %19 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %18, i32 0, i32 0
  store i32 1024, i32* %19, align 4
  %20 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %21 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %22 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %21, i32 0, i32 2
  %23 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %24 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %23, i32 0, i32 0
  %25 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %26 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @efivar_entry_get(%struct.efivar_entry* %20, i32* %22, i32* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %17
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %36 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %39 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i8* %34, i32 %37, i32 %40)
  %42 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %43 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %33, %30, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @efivar_entry_get(%struct.efivar_entry*, i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
