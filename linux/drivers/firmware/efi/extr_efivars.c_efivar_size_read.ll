; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivar_size_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivar_size_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivar_entry = type { %struct.efi_variable }
%struct.efi_variable = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efivar_entry*, i8*)* @efivar_size_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efivar_size_read(%struct.efivar_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efivar_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.efi_variable*, align 8
  %7 = alloca i8*, align 8
  store %struct.efivar_entry* %0, %struct.efivar_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %9 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %8, i32 0, i32 0
  store %struct.efi_variable* %9, %struct.efi_variable** %6, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %12 = icmp ne %struct.efivar_entry* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %50

19:                                               ; preds = %13
  %20 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %21 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %20, i32 0, i32 0
  store i32 1024, i32* %21, align 4
  %22 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %23 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %24 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %23, i32 0, i32 2
  %25 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %26 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %25, i32 0, i32 0
  %27 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %28 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @efivar_entry_get(%struct.efivar_entry* %22, i32* %24, i32* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %50

35:                                               ; preds = %19
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.efi_variable*, %struct.efi_variable** %6, align 8
  %38 = getelementptr inbounds %struct.efi_variable, %struct.efi_variable* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i8*, i8** %7, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %35, %32, %16
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @efivar_entry_get(%struct.efivar_entry*, i32*, i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
