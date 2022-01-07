; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_read_phy_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_read_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32 }

@OHCI1394_PhyControl = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@OHCI1394_PhyControl_ReadDone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to read phy reg %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_ohci*, i32)* @read_phy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_phy_reg(%struct.fw_ohci* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_ohci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fw_ohci* %0, %struct.fw_ohci** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %9 = load i32, i32* @OHCI1394_PhyControl, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @OHCI1394_PhyControl_Read(i32 %10)
  %12 = call i32 @reg_write(%struct.fw_ohci* %8, i32 %9, i32 %11)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %40, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 103
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %18 = load i32, i32* @OHCI1394_PhyControl, align 4
  %19 = call i32 @reg_read(%struct.fw_ohci* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = xor i32 %20, -1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %50

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @OHCI1394_PhyControl_ReadDone, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @OHCI1394_PhyControl_ReadData(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 3
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @msleep(i32 1)
  br label %39

39:                                               ; preds = %37, %34
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @ohci_err(%struct.fw_ohci* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = call i32 (...) @dump_stack()
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %31, %23
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @OHCI1394_PhyControl_Read(i32) #1

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i32 @OHCI1394_PhyControl_ReadData(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ohci_err(%struct.fw_ohci*, i8*, i32) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
