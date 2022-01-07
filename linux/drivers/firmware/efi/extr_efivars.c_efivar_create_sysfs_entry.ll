; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivar_create_sysfs_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efivars.c_efivar_create_sysfs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivar_entry = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@EFI_VARIABLE_GUID_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@efivars_kset = common dso_local global i32 0, align 4
@efivar_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@efivar_sysfs_list = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efivar_entry*)* @efivar_create_sysfs_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efivar_create_sysfs_entry(%struct.efivar_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efivar_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.efivar_entry* %0, %struct.efivar_entry** %3, align 8
  %9 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %10 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @ucs2_utf8size(i32* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %15, 1
  %17 = load i64, i64* @EFI_VARIABLE_GUID_LEN, align 8
  %18 = add i64 %16, %17
  %19 = add i64 %18, 1
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i32 %21, i32 %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %73

29:                                               ; preds = %1
  %30 = load i8*, i8** %5, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @ucs2_as_utf8(i8* %30, i32* %31, i32 %32)
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 45, i8* %36, align 1
  %37 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %38 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = call i32 @efi_guid_to_str(i32* %39, i8* %43)
  %45 = load i32, i32* @efivars_kset, align 4
  %46 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %47 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %50 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %49, i32 0, i32 0
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @kobject_init_and_add(%struct.TYPE_5__* %50, i32* @efivar_ktype, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @kfree(i8* %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %29
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %73

59:                                               ; preds = %29
  %60 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %61 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %60, i32 0, i32 0
  %62 = load i32, i32* @KOBJ_ADD, align 4
  %63 = call i32 @kobject_uevent(%struct.TYPE_5__* %61, i32 %62)
  %64 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %65 = call i64 @efivar_entry_add(%struct.efivar_entry* %64, i32* @efivar_sysfs_list)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.efivar_entry*, %struct.efivar_entry** %3, align 8
  %69 = call i32 @efivar_unregister(%struct.efivar_entry* %68)
  %70 = load i32, i32* @EINTR, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %67, %57, %26
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @ucs2_utf8size(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ucs2_as_utf8(i8*, i32*, i32) #1

declare dso_local i32 @efi_guid_to_str(i32*, i8*) #1

declare dso_local i32 @kobject_init_and_add(%struct.TYPE_5__*, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @kobject_uevent(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @efivar_entry_add(%struct.efivar_entry*, i32*) #1

declare dso_local i32 @efivar_unregister(%struct.efivar_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
