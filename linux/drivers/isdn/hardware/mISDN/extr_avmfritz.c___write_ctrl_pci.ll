; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c___write_ctrl_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_avmfritz.c___write_ctrl_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritzcard = type { i64 }
%struct.hdlc_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AVM_HDLC_2 = common dso_local global i32 0, align 4
@AVM_HDLC_1 = common dso_local global i32 0, align 4
@CHIP_INDEX = common dso_local global i64 0, align 8
@CHIP_WINDOW = common dso_local global i64 0, align 8
@HDLC_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fritzcard*, %struct.hdlc_hw*, i32)* @__write_ctrl_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__write_ctrl_pci(%struct.fritzcard* %0, %struct.hdlc_hw* %1, i32 %2) #0 {
  %4 = alloca %struct.fritzcard*, align 8
  %5 = alloca %struct.hdlc_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fritzcard* %0, %struct.fritzcard** %4, align 8
  store %struct.hdlc_hw* %1, %struct.hdlc_hw** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @AVM_HDLC_2, align 4
  br label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @AVM_HDLC_1, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.fritzcard*, %struct.fritzcard** %4, align 8
  %18 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CHIP_INDEX, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outl(i32 %16, i64 %21)
  %23 = load %struct.hdlc_hw*, %struct.hdlc_hw** %5, align 8
  %24 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fritzcard*, %struct.fritzcard** %4, align 8
  %28 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CHIP_WINDOW, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @HDLC_STATUS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outl(i32 %26, i64 %33)
  ret void
}

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
