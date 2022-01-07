; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_driver.c_cc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_driver.c_cc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i32, i32 }
%struct.device = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@HOST_IRR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Got IRR=0x%08X\0A\00", align 1
@HOST_IMR = common dso_local global i32 0, align 4
@HOST_ICR = common dso_local global i32 0, align 4
@CC_AXI_ERR_IRQ_MASK = common dso_local global i32 0, align 4
@AXIM_MON_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"AXI completion error: axim_mon_err=0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"IRR includes unknown cause bits (0x%08X)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CC_GPR0_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cc_drvdata*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.cc_drvdata*
  store %struct.cc_drvdata* %12, %struct.cc_drvdata** %6, align 8
  %13 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %14 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %13)
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call i64 @cc_pm_is_dev_suspended(%struct.device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %95

20:                                               ; preds = %2
  %21 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %22 = load i32, i32* @HOST_IRR, align 4
  %23 = call i32 @CC_REG(i32 %22)
  %24 = call i32 @cc_ioread(%struct.cc_drvdata* %21, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @dev_dbg(%struct.device* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %95

32:                                               ; preds = %20
  %33 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %34 = load i32, i32* @HOST_IMR, align 4
  %35 = call i32 @CC_REG(i32 %34)
  %36 = call i32 @cc_ioread(%struct.cc_drvdata* %33, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %38 = load i32, i32* @HOST_ICR, align 4
  %39 = call i32 @CC_REG(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @cc_iowrite(%struct.cc_drvdata* %37, i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %44 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %47 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %32
  %52 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %53 = load i32, i32* @HOST_IMR, align 4
  %54 = call i32 @CC_REG(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %57 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %55, %58
  %60 = call i32 @cc_iowrite(%struct.cc_drvdata* %52, i32 %54, i32 %59)
  %61 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %62 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %68 = call i32 @complete_request(%struct.cc_drvdata* %67)
  br label %69

69:                                               ; preds = %51, %32
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @CC_AXI_ERR_IRQ_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load %struct.cc_drvdata*, %struct.cc_drvdata** %6, align 8
  %76 = load i32, i32* @AXIM_MON_ERR, align 4
  %77 = call i32 @CC_REG(i32 %76)
  %78 = call i32 @cc_ioread(%struct.cc_drvdata* %75, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @dev_dbg(%struct.device* %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @CC_AXI_ERR_IRQ_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %74, %69
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.device*, %struct.device** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @dev_dbg_ratelimited(%struct.device* %90, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %30, %18
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i64 @cc_pm_is_dev_suspended(%struct.device*) #1

declare dso_local i32 @cc_ioread(%struct.cc_drvdata*, i32) #1

declare dso_local i32 @CC_REG(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @cc_iowrite(%struct.cc_drvdata*, i32, i32) #1

declare dso_local i32 @complete_request(%struct.cc_drvdata*) #1

declare dso_local i32 @dev_dbg_ratelimited(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
