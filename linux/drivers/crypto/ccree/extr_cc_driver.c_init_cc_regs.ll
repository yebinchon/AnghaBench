; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_driver.c_init_cc_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_driver.c_init_cc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i64, i32, i64 }
%struct.device = type { i32 }

@CC_HW_REV_712 = common dso_local global i64 0, align 8
@AXIM_CFG = common dso_local global i32 0, align 4
@CC_AXI_IRQ_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"AXIM_CFG=0x%08X\0A\00", align 1
@HOST_IRR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"IRR=0x%08X\0A\00", align 1
@HOST_ICR = common dso_local global i32 0, align 4
@CC_AXI_ERR_IRQ_MASK = common dso_local global i32 0, align 4
@CC_GPR0_IRQ_MASK = common dso_local global i32 0, align 4
@HOST_IMR = common dso_local global i32 0, align 4
@CC_COHERENT_CACHE_PARAMS = common dso_local global i32 0, align 4
@AXIM_CACHE_PARAMS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Cache params previous: 0x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Cache params current: 0x%08X (expect: 0x%08X)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_cc_regs(%struct.cc_drvdata* %0, i32 %1) #0 {
  %3 = alloca %struct.cc_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %9 = call %struct.device* @drvdata_to_dev(%struct.cc_drvdata* %8)
  store %struct.device* %9, %struct.device** %7, align 8
  %10 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %11 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CC_HW_REV_712, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %17 = load i32, i32* @AXIM_CFG, align 4
  %18 = call i32 @CC_REG(i32 %17)
  %19 = call i32 @cc_ioread(%struct.cc_drvdata* %16, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %21 = load i32, i32* @AXIM_CFG, align 4
  %22 = call i32 @CC_REG(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @CC_AXI_IRQ_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i32 @cc_iowrite(%struct.cc_drvdata* %20, i32 %22, i32 %26)
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %30 = load i32, i32* @AXIM_CFG, align 4
  %31 = call i32 @CC_REG(i32 %30)
  %32 = call i32 @cc_ioread(%struct.cc_drvdata* %29, i32 %31)
  %33 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %15, %2
  %35 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %36 = load i32, i32* @HOST_IRR, align 4
  %37 = call i32 @CC_REG(i32 %36)
  %38 = call i32 @cc_ioread(%struct.cc_drvdata* %35, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %43 = load i32, i32* @HOST_ICR, align 4
  %44 = call i32 @CC_REG(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @cc_iowrite(%struct.cc_drvdata* %42, i32 %44, i32 %45)
  %47 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %48 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CC_AXI_ERR_IRQ_MASK, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %5, align 4
  %52 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %53 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CC_HW_REV_712, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %34
  %58 = load i32, i32* @CC_GPR0_IRQ_MASK, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %34
  %62 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %63 = load i32, i32* @HOST_IMR, align 4
  %64 = call i32 @CC_REG(i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = xor i32 %65, -1
  %67 = call i32 @cc_iowrite(%struct.cc_drvdata* %62, i32 %64, i32 %66)
  %68 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %69 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @CC_COHERENT_CACHE_PARAMS, align 4
  br label %75

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  store i32 %76, i32* %6, align 4
  %77 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %78 = load i32, i32* @AXIM_CACHE_PARAMS, align 4
  %79 = call i32 @CC_REG(i32 %78)
  %80 = call i32 @cc_ioread(%struct.cc_drvdata* %77, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load %struct.device*, %struct.device** %7, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %83, %75
  %88 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %89 = load i32, i32* @AXIM_CACHE_PARAMS, align 4
  %90 = call i32 @CC_REG(i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @cc_iowrite(%struct.cc_drvdata* %88, i32 %90, i32 %91)
  %93 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %94 = load i32, i32* @AXIM_CACHE_PARAMS, align 4
  %95 = call i32 @CC_REG(i32 %94)
  %96 = call i32 @cc_ioread(%struct.cc_drvdata* %93, i32 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %87
  %100 = load %struct.device*, %struct.device** %7, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %100, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %87
  ret i32 0
}

declare dso_local %struct.device* @drvdata_to_dev(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_ioread(%struct.cc_drvdata*, i32) #1

declare dso_local i32 @CC_REG(i32) #1

declare dso_local i32 @cc_iowrite(%struct.cc_drvdata*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
