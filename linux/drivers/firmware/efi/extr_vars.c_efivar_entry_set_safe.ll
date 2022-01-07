; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_set_safe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_set_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.efivar_operations* }
%struct.efivar_operations = type { i64 (i32*, i32*, i32, i64, i8*)*, i64, i32 }

@__efivars = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@efivars_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efivar_entry_set_safe(i32* %0, i32 %1, i32 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.efivar_operations*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__efivars, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %90

21:                                               ; preds = %6
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__efivars, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.efivar_operations*, %struct.efivar_operations** %23, align 8
  store %struct.efivar_operations* %24, %struct.efivar_operations** %14, align 8
  %25 = load %struct.efivar_operations*, %struct.efivar_operations** %14, align 8
  %26 = getelementptr inbounds %struct.efivar_operations, %struct.efivar_operations* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %90

32:                                               ; preds = %21
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = load %struct.efivar_operations*, %struct.efivar_operations** %14, align 8
  %37 = getelementptr inbounds %struct.efivar_operations, %struct.efivar_operations* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i64, i64* %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @efivar_entry_set_nonblocking(i32* %41, i32 %42, i32 %43, i64 %44, i8* %45)
  store i32 %46, i32* %7, align 4
  br label %90

47:                                               ; preds = %35, %32
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = call i64 @down_trylock(i32* @efivars_lock)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %90

56:                                               ; preds = %50
  br label %64

57:                                               ; preds = %47
  %58 = call i64 @down_interruptible(i32* @efivars_lock)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EINTR, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %90

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %56
  %65 = load i32, i32* %10, align 4
  %66 = load i64, i64* %12, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = call i64 @ucs2_strsize(i32* %67, i32 1024)
  %69 = add i64 %66, %68
  %70 = call i64 @check_var_size(i32 %65, i64 %69)
  store i64 %70, i64* %15, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* @EFI_SUCCESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = call i32 @up(i32* @efivars_lock)
  %76 = load i32, i32* @ENOSPC, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %90

78:                                               ; preds = %64
  %79 = load %struct.efivar_operations*, %struct.efivar_operations** %14, align 8
  %80 = getelementptr inbounds %struct.efivar_operations, %struct.efivar_operations* %79, i32 0, i32 0
  %81 = load i64 (i32*, i32*, i32, i64, i8*)*, i64 (i32*, i32*, i32, i64, i8*)** %80, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i64, i64* %12, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = call i64 %81(i32* %82, i32* %9, i32 %83, i64 %84, i8* %85)
  store i64 %86, i64* %15, align 8
  %87 = call i32 @up(i32* @efivars_lock)
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @efi_status_to_err(i64 %88)
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %78, %74, %60, %53, %40, %29, %18
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @efivar_entry_set_nonblocking(i32*, i32, i32, i64, i8*) #1

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i64 @check_var_size(i32, i64) #1

declare dso_local i64 @ucs2_strsize(i32*, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @efi_status_to_err(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
