; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_configure_1394a_enhancements.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_configure_1394a_enhancements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32 }

@OHCI1394_HCControlSet = common dso_local global i32 0, align 4
@OHCI1394_HCControl_programPhyEnable = common dso_local global i32 0, align 4
@PHY_EXTENDED_REGISTERS = common dso_local global i32 0, align 4
@QUIRK_NO_1394A = common dso_local global i32 0, align 4
@PHY_ENABLE_ACCEL = common dso_local global i32 0, align 4
@PHY_ENABLE_MULTI = common dso_local global i32 0, align 4
@OHCI1394_HCControlClear = common dso_local global i32 0, align 4
@OHCI1394_HCControl_aPhyEnhanceEnable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_ohci*)* @configure_1394a_enhancements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_1394a_enhancements(%struct.fw_ohci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_ohci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fw_ohci* %0, %struct.fw_ohci** %3, align 8
  %9 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %10 = load i32, i32* @OHCI1394_HCControlSet, align 4
  %11 = call i32 @reg_read(%struct.fw_ohci* %9, i32 %10)
  %12 = load i32, i32* @OHCI1394_HCControl_programPhyEnable, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %17 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %18 = call i32 @read_phy_reg(%struct.fw_ohci* %17, i32 2)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %85

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PHY_EXTENDED_REGISTERS, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @PHY_EXTENDED_REGISTERS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %31 = call i32 @read_paged_phy_reg(%struct.fw_ohci* %30, i32 1, i32 8)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %85

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = icmp sge i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %36
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %43 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @QUIRK_NO_1394A, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  %53 = load i32, i32* @PHY_ENABLE_ACCEL, align 4
  %54 = load i32, i32* @PHY_ENABLE_MULTI, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %7, align 4
  br label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @PHY_ENABLE_ACCEL, align 4
  %58 = load i32, i32* @PHY_ENABLE_MULTI, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @update_phy_reg(%struct.fw_ohci* %61, i32 5, i32 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %85

69:                                               ; preds = %60
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @OHCI1394_HCControlSet, align 4
  store i32 %73, i32* %8, align 4
  br label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @OHCI1394_HCControlClear, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @OHCI1394_HCControl_aPhyEnhanceEnable, align 4
  %80 = call i32 @reg_write(%struct.fw_ohci* %77, i32 %78, i32 %79)
  %81 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %82 = load i32, i32* @OHCI1394_HCControlClear, align 4
  %83 = load i32, i32* @OHCI1394_HCControl_programPhyEnable, align 4
  %84 = call i32 @reg_write(%struct.fw_ohci* %81, i32 %82, i32 %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %76, %67, %34, %21, %15
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i32 @read_phy_reg(%struct.fw_ohci*, i32) #1

declare dso_local i32 @read_paged_phy_reg(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @update_phy_reg(%struct.fw_ohci*, i32, i32, i32) #1

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
