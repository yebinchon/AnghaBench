; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_send_i2c_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_send_i2c_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_i2c_dev = type { i64, i32, i32, %struct.bsc_regs* }
%struct.bsc_regs = type { i32 }

@INT_ENABLE = common dso_local global i32 0, align 4
@BSC_IIC_EN_ENABLE_MASK = common dso_local global i32 0, align 4
@iic_enable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"intr timeout for cmd %s\0A\00", align 1
@cmd_string = common dso_local global i32* null, align 8
@CMD_RD = common dso_local global i64 0, align 8
@CMD_WR = common dso_local global i64 0, align 8
@BSC_IIC_EN_NOACK_MASK = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"controller received NOACK intr for %s\0A\00", align 1
@cnt_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmstb_i2c_dev*, i32)* @brcmstb_send_i2c_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_send_i2c_cmd(%struct.brcmstb_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmstb_i2c_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bsc_regs*, align 8
  store %struct.brcmstb_i2c_dev* %0, %struct.brcmstb_i2c_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %9 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %8, i32 0, i32 3
  %10 = load %struct.bsc_regs*, %struct.bsc_regs** %9, align 8
  store %struct.bsc_regs* %10, %struct.bsc_regs** %7, align 8
  %11 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %12 = call i32 @brcmstb_i2c_wait_if_busy(%struct.brcmstb_i2c_dev* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %89

17:                                               ; preds = %2
  %18 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %19 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %24 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %23, i32 0, i32 2
  %25 = call i32 @reinit_completion(i32* %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %28 = load i32, i32* @INT_ENABLE, align 4
  %29 = call i32 @brcmstb_i2c_enable_disable_irq(%struct.brcmstb_i2c_dev* %27, i32 %28)
  %30 = load i32, i32* @BSC_IIC_EN_ENABLE_MASK, align 4
  %31 = load %struct.bsc_regs*, %struct.bsc_regs** %7, align 8
  %32 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %36 = load %struct.bsc_regs*, %struct.bsc_regs** %7, align 8
  %37 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @iic_enable, align 4
  %40 = call i32 @bsc_writel(%struct.brcmstb_i2c_dev* %35, i32 %38, i32 %39)
  %41 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %42 = call i32 @brcmstb_i2c_wait_for_completion(%struct.brcmstb_i2c_dev* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %26
  %46 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %47 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** @cmd_string, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %81

55:                                               ; preds = %26
  %56 = load i64, i64* @CMD_RD, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* @CMD_WR, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %58, %55
  %62 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %63 = load i32, i32* @iic_enable, align 4
  %64 = call i32 @bsc_readl(%struct.brcmstb_i2c_dev* %62, i32 %63)
  %65 = load i32, i32* @BSC_IIC_EN_NOACK_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load i32, i32* @EREMOTEIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  %71 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %72 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** @cmd_string, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %68, %61, %58
  br label %81

81:                                               ; preds = %80, %45
  %82 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %83 = load i32, i32* @cnt_reg, align 4
  %84 = call i32 @bsc_writel(%struct.brcmstb_i2c_dev* %82, i32 0, i32 %83)
  %85 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %4, align 8
  %86 = load i32, i32* @iic_enable, align 4
  %87 = call i32 @bsc_writel(%struct.brcmstb_i2c_dev* %85, i32 0, i32 %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %81, %15
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @brcmstb_i2c_wait_if_busy(%struct.brcmstb_i2c_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @brcmstb_i2c_enable_disable_irq(%struct.brcmstb_i2c_dev*, i32) #1

declare dso_local i32 @bsc_writel(%struct.brcmstb_i2c_dev*, i32, i32) #1

declare dso_local i32 @brcmstb_i2c_wait_for_completion(%struct.brcmstb_i2c_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @bsc_readl(%struct.brcmstb_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
