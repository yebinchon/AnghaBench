; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_entry_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32*, i32*, i64*, i8*)* }
%struct.efivar_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@efivars_lock = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@__efivars = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efivar_entry_get(%struct.efivar_entry* %0, i32* %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efivar_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.efivar_entry* %0, %struct.efivar_entry** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = call i64 @down_interruptible(i32* @efivars_lock)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @EINTR, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %43

16:                                               ; preds = %4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @__efivars, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = call i32 @up(i32* @efivars_lock)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %43

23:                                               ; preds = %16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @__efivars, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32*, i32*, i64*, i8*)*, i32 (i32, i32*, i32*, i64*, i8*)** %27, align 8
  %29 = load %struct.efivar_entry*, %struct.efivar_entry** %6, align 8
  %30 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.efivar_entry*, %struct.efivar_entry** %6, align 8
  %34 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %7, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 %28(i32 %32, i32* %35, i32* %36, i64* %37, i8* %38)
  store i32 %39, i32* %10, align 4
  %40 = call i32 @up(i32* @efivars_lock)
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @efi_status_to_err(i32 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %23, %19, %13
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @efi_status_to_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
