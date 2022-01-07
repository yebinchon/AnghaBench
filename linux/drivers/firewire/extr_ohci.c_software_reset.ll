; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_software_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_software_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32 }

@OHCI1394_HCControlSet = common dso_local global i32 0, align 4
@OHCI1394_HCControl_softReset = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_ohci*)* @software_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @software_reset(%struct.fw_ohci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_ohci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fw_ohci* %0, %struct.fw_ohci** %3, align 8
  %6 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %7 = load i32, i32* @OHCI1394_HCControlSet, align 4
  %8 = load i32, i32* @OHCI1394_HCControl_softReset, align 4
  %9 = call i32 @reg_write(%struct.fw_ohci* %6, i32 %7, i32 %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 500
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %15 = load i32, i32* @OHCI1394_HCControlSet, align 4
  %16 = call i32 @reg_read(%struct.fw_ohci* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = xor i32 %17, -1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %37

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @OHCI1394_HCControl_softReset, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %37

29:                                               ; preds = %23
  %30 = call i32 @msleep(i32 1)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %10

34:                                               ; preds = %10
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %28, %20
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
