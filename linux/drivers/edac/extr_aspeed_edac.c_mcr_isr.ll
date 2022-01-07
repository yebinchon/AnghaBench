; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_aspeed_edac.c_mcr_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_aspeed_edac.c_mcr_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }

@aspeed_regmap = common dso_local global i32 0, align 4
@ASPEED_MCR_INTR_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"received edac interrupt w/ mcr register 50: 0x%x\0A\00", align 1
@ASPEED_MCR_INTR_CTRL_CNT_REC = common dso_local global i32 0, align 4
@ASPEED_MCR_INTR_CTRL_CNT_UNREC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"%d recoverable interrupts and %d unrecoverable interrupts\0A\00", align 1
@ASPEED_MCR_ADDR_UNREC = common dso_local global i32 0, align 4
@ASPEED_MCR_ADDR_REC = common dso_local global i32 0, align 4
@ASPEED_MCR_INTR_CTRL_CLEAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"received edac interrupt, but did not find any ECC counters\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"edac interrupt handled. mcr reg 50 is now: 0x%x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mcr_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcr_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.mem_ctl_info*
  store %struct.mem_ctl_info* %14, %struct.mem_ctl_info** %5, align 8
  %15 = load i32, i32* @aspeed_regmap, align 4
  %16 = load i32, i32* @ASPEED_MCR_INTR_CTRL, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %8)
  %18 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %19 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i32, i8*, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @ASPEED_MCR_INTR_CTRL_CNT_REC, align 4
  %25 = and i32 %23, %24
  %26 = ashr i32 %25, 16
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ASPEED_MCR_INTR_CTRL_CNT_UNREC, align 4
  %29 = and i32 %27, %28
  %30 = ashr i32 %29, 12
  store i32 %30, i32* %12, align 4
  %31 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %32 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 (i32, i8*, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* @aspeed_regmap, align 4
  %38 = load i32, i32* @ASPEED_MCR_ADDR_UNREC, align 4
  %39 = call i32 @regmap_read(i32 %37, i32 %38, i32* %10)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @aspeed_regmap, align 4
  %42 = load i32, i32* @ASPEED_MCR_ADDR_REC, align 4
  %43 = call i32 @regmap_read(i32 %41, i32 %42, i32* %9)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @aspeed_regmap, align 4
  %46 = load i32, i32* @ASPEED_MCR_INTR_CTRL, align 4
  %47 = load i32, i32* @ASPEED_MCR_INTR_CTRL_CLEAR, align 4
  %48 = load i32, i32* @ASPEED_MCR_INTR_CTRL_CLEAR, align 4
  %49 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @aspeed_regmap, align 4
  %51 = load i32, i32* @ASPEED_MCR_INTR_CTRL, align 4
  %52 = load i32, i32* @ASPEED_MCR_INTR_CTRL_CLEAR, align 4
  %53 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %52, i32 0)
  %54 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @count_rec(%struct.mem_ctl_info* %54, i32 %55, i32 %56)
  %58 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @count_un_rec(%struct.mem_ctl_info* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %2
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %69 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @dev_dbg(i32 %70, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %64, %2
  %73 = load i32, i32* @aspeed_regmap, align 4
  %74 = load i32, i32* @ASPEED_MCR_INTR_CTRL, align 4
  %75 = call i32 @regmap_read(i32 %73, i32 %74, i32* %8)
  %76 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %77 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i32, i8*, ...) @dev_dbg(i32 %78, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %81
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @count_rec(%struct.mem_ctl_info*, i32, i32) #1

declare dso_local i32 @count_un_rec(%struct.mem_ctl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
