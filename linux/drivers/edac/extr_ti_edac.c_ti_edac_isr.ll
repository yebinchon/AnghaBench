; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ti_edac.c_ti_edac_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ti_edac.c_ti_edac_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.ti_edac* }
%struct.ti_edac = type { i32 }

@EMIF_IRQ_STATUS = common dso_local global i32 0, align 4
@EMIF_1B_ECC_ERR = common dso_local global i32 0, align 4
@EMIF_1B_ECC_ERR_ADDR_LOG = common dso_local global i32 0, align 4
@EMIF_1B_ECC_ERR_CNT = common dso_local global i32 0, align 4
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"1B\00", align 1
@EMIF_2B_ECC_ERR = common dso_local global i32 0, align 4
@EMIF_2B_ECC_ERR_ADDR_LOG = common dso_local global i32 0, align 4
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"2B\00", align 1
@EMIF_WR_ECC_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"WR\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ti_edac_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_edac_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.ti_edac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.mem_ctl_info*
  store %struct.mem_ctl_info* %11, %struct.mem_ctl_info** %5, align 8
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 1
  %14 = load %struct.ti_edac*, %struct.ti_edac** %13, align 8
  store %struct.ti_edac* %14, %struct.ti_edac** %6, align 8
  %15 = load %struct.ti_edac*, %struct.ti_edac** %6, align 8
  %16 = load i32, i32* @EMIF_IRQ_STATUS, align 4
  %17 = call i32 @ti_edac_readl(%struct.ti_edac* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @EMIF_1B_ECC_ERR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %2
  %23 = load %struct.ti_edac*, %struct.ti_edac** %6, align 8
  %24 = load i32, i32* @EMIF_1B_ECC_ERR_ADDR_LOG, align 4
  %25 = call i32 @ti_edac_readl(%struct.ti_edac* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.ti_edac*, %struct.ti_edac** %6, align 8
  %27 = load i32, i32* @EMIF_1B_ECC_ERR_CNT, align 4
  %28 = call i32 @ti_edac_readl(%struct.ti_edac* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ti_edac*, %struct.ti_edac** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @EMIF_1B_ECC_ERR_CNT, align 4
  %32 = call i32 @ti_edac_writel(%struct.ti_edac* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %34 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PAGE_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @PAGE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %44 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @edac_mc_handle_error(i32 %33, %struct.mem_ctl_info* %34, i32 %35, i32 %38, i32 %42, i32 -1, i32 0, i32 0, i32 0, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %22, %2
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @EMIF_2B_ECC_ERR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load %struct.ti_edac*, %struct.ti_edac** %6, align 8
  %54 = load i32, i32* @EMIF_2B_ECC_ERR_ADDR_LOG, align 4
  %55 = call i32 @ti_edac_readl(%struct.ti_edac* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %57 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @PAGE_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @PAGE_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %66 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @edac_mc_handle_error(i32 %56, %struct.mem_ctl_info* %57, i32 1, i32 %60, i32 %64, i32 -1, i32 0, i32 0, i32 0, i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %52, %47
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @EMIF_WR_ECC_ERR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %76 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %77 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %78 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @edac_mc_handle_error(i32 %75, %struct.mem_ctl_info* %76, i32 1, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %74, %69
  %82 = load %struct.ti_edac*, %struct.ti_edac** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @EMIF_IRQ_STATUS, align 4
  %85 = call i32 @ti_edac_writel(%struct.ti_edac* %82, i32 %83, i32 %84)
  %86 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %86
}

declare dso_local i32 @ti_edac_readl(%struct.ti_edac*, i32) #1

declare dso_local i32 @ti_edac_writel(%struct.ti_edac*, i32, i32) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
