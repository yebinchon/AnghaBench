; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_set_nonblocking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_set_nonblocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.efivar_operations* }
%struct.efivar_operations = type { i64 (i32*, i32*, i32, i64, i8*)* }

@efivars_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@__efivars = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i64, i8*)* @efivar_entry_set_nonblocking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efivar_entry_set_nonblocking(i32* %0, i32 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.efivar_operations*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = call i64 @down_trylock(i32* @efivars_lock)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %55

19:                                               ; preds = %5
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__efivars, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = call i32 @up(i32* @efivars_lock)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %55

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @ucs2_strsize(i32* %29, i32 1024)
  %31 = add i64 %28, %30
  %32 = call i64 @check_var_size_nonblocking(i32 %27, i64 %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* @EFI_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = call i32 @up(i32* @efivars_lock)
  %38 = load i32, i32* @ENOSPC, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %55

40:                                               ; preds = %26
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__efivars, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.efivar_operations*, %struct.efivar_operations** %42, align 8
  store %struct.efivar_operations* %43, %struct.efivar_operations** %12, align 8
  %44 = load %struct.efivar_operations*, %struct.efivar_operations** %12, align 8
  %45 = getelementptr inbounds %struct.efivar_operations, %struct.efivar_operations* %44, i32 0, i32 0
  %46 = load i64 (i32*, i32*, i32, i64, i8*)*, i64 (i32*, i32*, i32, i64, i8*)** %45, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i64, i64* %10, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i64 %46(i32* %47, i32* %8, i32 %48, i64 %49, i8* %50)
  store i64 %51, i64* %13, align 8
  %52 = call i32 @up(i32* @efivars_lock)
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @efi_status_to_err(i64 %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %40, %36, %22, %16
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i64 @check_var_size_nonblocking(i32, i64) #1

declare dso_local i64 @ucs2_strsize(i32*, i32) #1

declare dso_local i32 @efi_status_to_err(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
