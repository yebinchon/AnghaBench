; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi-pstore.c_efi_pstore_erase_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi-pstore.c_efi_pstore_erase_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efivar_entry = type { i32 }

@DUMP_NAME_LEN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@efi_pstore_erase_func = common dso_local global i32 0, align 4
@efivar_sysfs_list = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @efi_pstore_erase_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_pstore_erase_name(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.efivar_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.efivar_entry* null, %struct.efivar_entry** %4, align 8
  %10 = load i32, i32* @DUMP_NAME_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %36, %1
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @DUMP_NAME_LEN, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %13, i64 %25
  store i8 %23, i8* %26, align 1
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  br label %39

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %14

39:                                               ; preds = %34, %14
  %40 = call i64 (...) @efivar_entry_iter_begin()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @EINTR, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %68

45:                                               ; preds = %39
  %46 = load i32, i32* @efi_pstore_erase_func, align 4
  %47 = call i32 @__efivar_entry_iter(i32 %46, i32* @efivar_sysfs_list, i8* %13, %struct.efivar_entry** %4)
  store i32 %47, i32* %7, align 4
  %48 = call i32 (...) @efivar_entry_iter_end()
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %53 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load %struct.efivar_entry*, %struct.efivar_entry** %4, align 8
  %58 = call i32 @efivar_unregister(%struct.efivar_entry* %57)
  br label %59

59:                                               ; preds = %56, %51, %45
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  br label %66

66:                                               ; preds = %63, %62
  %67 = phi i32 [ 0, %62 ], [ %65, %63 ]
  store i32 %67, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %68

68:                                               ; preds = %66, %42
  %69 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @efivar_entry_iter_begin(...) #2

declare dso_local i32 @__efivar_entry_iter(i32, i32*, i8*, %struct.efivar_entry**) #2

declare dso_local i32 @efivar_entry_iter_end(...) #2

declare dso_local i32 @efivar_unregister(%struct.efivar_entry*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
