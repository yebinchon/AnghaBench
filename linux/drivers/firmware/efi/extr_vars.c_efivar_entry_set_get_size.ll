; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_set_get_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_set_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.efivar_operations* }
%struct.efivar_operations = type { i64 (i32*, i32*, i32, i64, i8*)*, i64 (i32*, i32*, i32*, i64*, i32*)* }
%struct.efivar_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@efivars_lock = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@__efivars = common dso_local global %struct.TYPE_4__* null, align 8
@EFI_SUCCESS = common dso_local global i64 0, align 8
@EFI_UNSUPPORTED = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@EFI_NOT_FOUND = common dso_local global i64 0, align 8
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efivar_entry_set_get_size(%struct.efivar_entry* %0, i32 %1, i64* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.efivar_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.efivar_operations*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.efivar_entry* %0, %struct.efivar_entry** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.efivar_entry*, %struct.efivar_entry** %7, align 8
  %18 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %13, align 8
  %21 = load %struct.efivar_entry*, %struct.efivar_entry** %7, align 8
  %22 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %11, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %14, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @efivar_validate(i32 %26, i32* %27, i8* %28, i64 %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %131

36:                                               ; preds = %5
  %37 = call i64 @down_interruptible(i32* @efivars_lock)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EINTR, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %131

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__efivars, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %16, align 4
  br label %128

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = load i64*, i64** %9, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = call i64 @ucs2_strsize(i32* %52, i32 1024)
  %54 = add i64 %51, %53
  %55 = call i64 @check_var_size(i32 %49, i64 %54)
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* @EFI_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %48
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* @EFI_UNSUPPORTED, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, i64* %15, align 8
  %65 = call i32 @efi_status_to_err(i64 %64)
  store i32 %65, i32* %16, align 4
  br label %128

66:                                               ; preds = %59
  %67 = load i64*, i64** %9, align 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp ugt i64 %68, 65536
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @ENOSPC, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %16, align 4
  br label %128

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %48
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__efivars, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.efivar_operations*, %struct.efivar_operations** %76, align 8
  store %struct.efivar_operations* %77, %struct.efivar_operations** %12, align 8
  %78 = load %struct.efivar_operations*, %struct.efivar_operations** %12, align 8
  %79 = getelementptr inbounds %struct.efivar_operations, %struct.efivar_operations* %78, i32 0, i32 0
  %80 = load i64 (i32*, i32*, i32, i64, i8*)*, i64 (i32*, i32*, i32, i64, i8*)** %79, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = call i64 %80(i32* %81, i32* %82, i32 %83, i64 %85, i8* %86)
  store i64 %87, i64* %15, align 8
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* @EFI_SUCCESS, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %74
  %92 = load i64, i64* %15, align 8
  %93 = call i32 @efi_status_to_err(i64 %92)
  store i32 %93, i32* %16, align 4
  br label %128

94:                                               ; preds = %74
  %95 = load i32*, i32** %11, align 8
  store i32 1, i32* %95, align 4
  %96 = load i64*, i64** %9, align 8
  store i64 0, i64* %96, align 8
  %97 = load %struct.efivar_operations*, %struct.efivar_operations** %12, align 8
  %98 = getelementptr inbounds %struct.efivar_operations, %struct.efivar_operations* %97, i32 0, i32 1
  %99 = load i64 (i32*, i32*, i32*, i64*, i32*)*, i64 (i32*, i32*, i32*, i64*, i32*)** %98, align 8
  %100 = load %struct.efivar_entry*, %struct.efivar_entry** %7, align 8
  %101 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.efivar_entry*, %struct.efivar_entry** %7, align 8
  %105 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64*, i64** %9, align 8
  %108 = call i64 %99(i32* %103, i32* %106, i32* null, i64* %107, i32* null)
  store i64 %108, i64* %15, align 8
  %109 = load i64, i64* %15, align 8
  %110 = load i64, i64* @EFI_NOT_FOUND, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %94
  %113 = load %struct.efivar_entry*, %struct.efivar_entry** %7, align 8
  %114 = call i32 @efivar_entry_list_del_unlock(%struct.efivar_entry* %113)
  br label %117

115:                                              ; preds = %94
  %116 = call i32 @up(i32* @efivars_lock)
  br label %117

117:                                              ; preds = %115, %112
  %118 = load i64, i64* %15, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i64, i64* %15, align 8
  %122 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i64, i64* %15, align 8
  %126 = call i32 @efi_status_to_err(i64 %125)
  store i32 %126, i32* %6, align 4
  br label %131

127:                                              ; preds = %120, %117
  store i32 0, i32* %6, align 4
  br label %131

128:                                              ; preds = %91, %70, %63, %45
  %129 = call i32 @up(i32* @efivars_lock)
  %130 = load i32, i32* %16, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %128, %127, %124, %39, %33
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @efivar_validate(i32, i32*, i8*, i64) #1

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i64 @check_var_size(i32, i64) #1

declare dso_local i64 @ucs2_strsize(i32*, i32) #1

declare dso_local i32 @efi_status_to_err(i64) #1

declare dso_local i32 @efivar_entry_list_del_unlock(%struct.efivar_entry*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
