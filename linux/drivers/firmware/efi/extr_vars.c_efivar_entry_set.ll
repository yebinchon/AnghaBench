; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.efivar_operations* }
%struct.efivar_operations = type { i64 (i32*, i32*, i32, i64, i8*)* }
%struct.efivar_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.list_head = type { i32 }

@efivars_lock = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@__efivars = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@EFI_UNSUPPORTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efivar_entry_set(%struct.efivar_entry* %0, i32 %1, i64 %2, i8* %3, %struct.list_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.efivar_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.efivar_operations*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.efivar_entry* %0, %struct.efivar_entry** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.list_head* %4, %struct.list_head** %11, align 8
  %16 = load %struct.efivar_entry*, %struct.efivar_entry** %7, align 8
  %17 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %14, align 8
  %20 = load %struct.efivar_entry*, %struct.efivar_entry** %7, align 8
  %21 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %15, align 4
  %24 = call i64 @down_interruptible(i32* @efivars_lock)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @EINTR, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %79

29:                                               ; preds = %5
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__efivars, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = call i32 @up(i32* @efivars_lock)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %79

36:                                               ; preds = %29
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__efivars, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.efivar_operations*, %struct.efivar_operations** %38, align 8
  store %struct.efivar_operations* %39, %struct.efivar_operations** %12, align 8
  %40 = load %struct.list_head*, %struct.list_head** %11, align 8
  %41 = icmp ne %struct.list_head* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.list_head*, %struct.list_head** %11, align 8
  %46 = call i64 @efivar_entry_find(i32* %43, i32 %44, %struct.list_head* %45, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = call i32 @up(i32* @efivars_lock)
  %50 = load i32, i32* @EEXIST, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %79

52:                                               ; preds = %42, %36
  %53 = load i32, i32* %8, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = call i64 @ucs2_strsize(i32* %55, i32 1024)
  %57 = add i64 %54, %56
  %58 = call i64 @check_var_size(i32 %53, i64 %57)
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* @EFI_SUCCESS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %52
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* @EFI_UNSUPPORTED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62, %52
  %67 = load %struct.efivar_operations*, %struct.efivar_operations** %12, align 8
  %68 = getelementptr inbounds %struct.efivar_operations, %struct.efivar_operations* %67, i32 0, i32 0
  %69 = load i64 (i32*, i32*, i32, i64, i8*)*, i64 (i32*, i32*, i32, i64, i8*)** %68, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i64, i64* %9, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i64 %69(i32* %70, i32* %15, i32 %71, i64 %72, i8* %73)
  store i64 %74, i64* %13, align 8
  br label %75

75:                                               ; preds = %66, %62
  %76 = call i32 @up(i32* @efivars_lock)
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @efi_status_to_err(i64 %77)
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %48, %32, %26
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i64 @efivar_entry_find(i32*, i32, %struct.list_head*, i32) #1

declare dso_local i64 @check_var_size(i32, i64) #1

declare dso_local i64 @ucs2_strsize(i32*, i32) #1

declare dso_local i32 @efi_status_to_err(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
