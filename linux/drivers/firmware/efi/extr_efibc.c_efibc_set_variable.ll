; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efibc.c_efibc_set_variable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efibc.c_efibc_set_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivar_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32* }

@LINUX_EFI_LOADER_ENTRY_GUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"value is too large (%zu bytes) for '%s' EFI variable\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"failed to allocate efivar entry for '%s' EFI variable\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EFI_VARIABLE_NON_VOLATILE = common dso_local global i32 0, align 4
@EFI_VARIABLE_BOOTSERVICE_ACCESS = common dso_local global i32 0, align 4
@EFI_VARIABLE_RUNTIME_ACCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to set %s EFI variable: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @efibc_set_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efibc_set_variable(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.efivar_entry*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @LINUX_EFI_LOADER_ENTRY_GUID, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ugt i64 %16, 8
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i64, i64* %9, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %19, i8* %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %81

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.efivar_entry* @kmalloc(i32 24, i32 %25)
  store %struct.efivar_entry* %26, %struct.efivar_entry** %8, align 8
  %27 = load %struct.efivar_entry*, %struct.efivar_entry** %8, align 8
  %28 = icmp ne %struct.efivar_entry* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %81

34:                                               ; preds = %24
  %35 = load i8*, i8** %4, align 8
  %36 = load %struct.efivar_entry*, %struct.efivar_entry** %8, align 8
  %37 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @efibc_str_to_str16(i8* %35, i32* %39)
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.efivar_entry*, %struct.efivar_entry** %8, align 8
  %43 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = call i32 @efibc_str_to_str16(i8* %41, i32* %46)
  %48 = load %struct.efivar_entry*, %struct.efivar_entry** %8, align 8
  %49 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = call i32 @memcpy(i32* %50, i32* %7, i32 4)
  %52 = load %struct.efivar_entry*, %struct.efivar_entry** %8, align 8
  %53 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.efivar_entry*, %struct.efivar_entry** %8, align 8
  %57 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @EFI_VARIABLE_NON_VOLATILE, align 4
  %61 = load i32, i32* @EFI_VARIABLE_BOOTSERVICE_ACCESS, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @EFI_VARIABLE_RUNTIME_ACCESS, align 4
  %64 = or i32 %62, %63
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.efivar_entry*, %struct.efivar_entry** %8, align 8
  %67 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @efivar_entry_set_safe(i32* %55, i32 %59, i32 %64, i32 0, i64 %65, i64 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %34
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %34
  %78 = load %struct.efivar_entry*, %struct.efivar_entry** %8, align 8
  %79 = call i32 @kfree(%struct.efivar_entry* %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %29, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.efivar_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @efibc_str_to_str16(i8*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @efivar_entry_set_safe(i32*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @kfree(%struct.efivar_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
