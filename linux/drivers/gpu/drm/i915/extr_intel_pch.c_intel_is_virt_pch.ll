; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pch.c_intel_is_virt_pch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pch.c_intel_is_virt_pch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEL_PCH_P2X_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@INTEL_PCH_P3X_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@INTEL_PCH_QEMU_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@PCI_SUBVENDOR_ID_REDHAT_QUMRANET = common dso_local global i16 0, align 2
@PCI_SUBDEVICE_ID_QEMU = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, i16, i16)* @intel_is_virt_pch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_is_virt_pch(i16 zeroext %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store i16 %0, i16* %4, align 2
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %7 = load i16, i16* %4, align 2
  %8 = zext i16 %7 to i32
  %9 = load i16, i16* @INTEL_PCH_P2X_DEVICE_ID_TYPE, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %38, label %12

12:                                               ; preds = %3
  %13 = load i16, i16* %4, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @INTEL_PCH_P3X_DEVICE_ID_TYPE, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %38, label %18

18:                                               ; preds = %12
  %19 = load i16, i16* %4, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @INTEL_PCH_QEMU_DEVICE_ID_TYPE, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i16, i16* %5, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @PCI_SUBVENDOR_ID_REDHAT_QUMRANET, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i16, i16* %6, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* @PCI_SUBDEVICE_ID_QEMU, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp eq i32 %32, %34
  br label %36

36:                                               ; preds = %30, %24, %18
  %37 = phi i1 [ false, %24 ], [ false, %18 ], [ %35, %30 ]
  br label %38

38:                                               ; preds = %36, %12, %3
  %39 = phi i1 [ true, %12 ], [ true, %3 ], [ %37, %36 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
