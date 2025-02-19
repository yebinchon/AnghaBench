; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_runtime-wrappers.c_virt_efi_query_capsule_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_runtime-wrappers.c_virt_efi_query_capsule_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@efi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EFI_2_00_SYSTEM_TABLE_REVISION = common dso_local global i64 0, align 8
@EFI_UNSUPPORTED = common dso_local global i32 0, align 4
@efi_runtime_lock = common dso_local global i32 0, align 4
@EFI_ABORTED = common dso_local global i32 0, align 4
@EFI_QUERY_CAPSULE_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i64, i32*, i32*)* @virt_efi_query_capsule_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virt_efi_query_capsule_caps(i32** %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 0), align 8
  %12 = load i64, i64* @EFI_2_00_SYSTEM_TABLE_REVISION, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @EFI_UNSUPPORTED, align 4
  store i32 %15, i32* %5, align 4
  br label %29

16:                                               ; preds = %4
  %17 = call i64 @down_interruptible(i32* @efi_runtime_lock)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @EFI_ABORTED, align 4
  store i32 %20, i32* %5, align 4
  br label %29

21:                                               ; preds = %16
  %22 = load i32, i32* @EFI_QUERY_CAPSULE_CAPS, align 4
  %23 = load i32**, i32*** %6, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @efi_queue_work(i32 %22, i32** %23, i64* %7, i32* %24, i32* %25, i32* null)
  store i32 %26, i32* %10, align 4
  %27 = call i32 @up(i32* @efi_runtime_lock)
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %21, %19, %14
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @efi_queue_work(i32, i32**, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
