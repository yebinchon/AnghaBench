; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi.c_efi_attr_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_efi.c_efi_attr_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { %struct.attribute }
%struct.TYPE_7__ = type { %struct.attribute }
%struct.kobject = type { i32 }

@efi_attr_fw_vendor = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@EFI_PARAVIRT = common dso_local global i32 0, align 4
@efi = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@EFI_INVALID_TABLE_ADDR = common dso_local global i64 0, align 8
@efi_attr_runtime = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@efi_attr_config_table = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i32)* @efi_attr_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_attr_is_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.attribute*, %struct.attribute** %6, align 8
  %9 = icmp eq %struct.attribute* %8, getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @efi_attr_fw_vendor, i32 0, i32 0)
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load i32, i32* @EFI_PARAVIRT, align 4
  %12 = call i64 @efi_enabled(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @efi, i32 0, i32 0), align 8
  %16 = load i64, i64* @EFI_INVALID_TABLE_ADDR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10
  store i32 0, i32* %4, align 4
  br label %44

19:                                               ; preds = %14
  br label %40

20:                                               ; preds = %3
  %21 = load %struct.attribute*, %struct.attribute** %6, align 8
  %22 = icmp eq %struct.attribute* %21, getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @efi_attr_runtime, i32 0, i32 0)
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @efi, i32 0, i32 1), align 8
  %25 = load i64, i64* @EFI_INVALID_TABLE_ADDR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %44

28:                                               ; preds = %23
  br label %39

29:                                               ; preds = %20
  %30 = load %struct.attribute*, %struct.attribute** %6, align 8
  %31 = icmp eq %struct.attribute* %30, getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @efi_attr_config_table, i32 0, i32 0)
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @efi, i32 0, i32 2), align 8
  %34 = load i64, i64* @EFI_INVALID_TABLE_ADDR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %44

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %29
  br label %39

39:                                               ; preds = %38, %28
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.attribute*, %struct.attribute** %6, align 8
  %42 = getelementptr inbounds %struct.attribute, %struct.attribute* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %36, %27, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @efi_enabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
