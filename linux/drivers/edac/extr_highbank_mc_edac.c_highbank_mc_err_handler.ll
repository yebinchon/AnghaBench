; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_highbank_mc_edac.c_highbank_mc_err_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_highbank_mc_edac.c_highbank_mc_err_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.hb_mc_drvdata* }
%struct.hb_mc_drvdata = type { i64, i64 }

@HB_DDR_ECC_INT_STATUS = common dso_local global i64 0, align 8
@HB_DDR_ECC_INT_STAT_UE = common dso_local global i32 0, align 4
@HB_DDR_ECC_U_ERR_ADDR = common dso_local global i64 0, align 8
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HB_DDR_ECC_INT_STAT_CE = common dso_local global i32 0, align 4
@HB_DDR_ECC_C_ERR_STAT = common dso_local global i64 0, align 8
@HB_DDR_ECC_C_ERR_ADDR = common dso_local global i64 0, align 8
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@HB_DDR_ECC_INT_ACK = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @highbank_mc_err_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @highbank_mc_err_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.hb_mc_drvdata*, align 8
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
  %14 = load %struct.hb_mc_drvdata*, %struct.hb_mc_drvdata** %13, align 8
  store %struct.hb_mc_drvdata* %14, %struct.hb_mc_drvdata** %6, align 8
  %15 = load %struct.hb_mc_drvdata*, %struct.hb_mc_drvdata** %6, align 8
  %16 = getelementptr inbounds %struct.hb_mc_drvdata, %struct.hb_mc_drvdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HB_DDR_ECC_INT_STATUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @HB_DDR_ECC_INT_STAT_UE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = load %struct.hb_mc_drvdata*, %struct.hb_mc_drvdata** %6, align 8
  %27 = getelementptr inbounds %struct.hb_mc_drvdata, %struct.hb_mc_drvdata* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HB_DDR_ECC_U_ERR_ADDR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %33 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @PAGE_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %42 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @edac_mc_handle_error(i32 %32, %struct.mem_ctl_info* %33, i32 1, i32 %36, i32 %40, i32 0, i32 0, i32 0, i32 -1, i32 %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %25, %2
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @HB_DDR_ECC_INT_STAT_CE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = load %struct.hb_mc_drvdata*, %struct.hb_mc_drvdata** %6, align 8
  %52 = getelementptr inbounds %struct.hb_mc_drvdata, %struct.hb_mc_drvdata* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HB_DDR_ECC_C_ERR_STAT, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl(i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  store i32 %59, i32* %9, align 4
  %60 = load %struct.hb_mc_drvdata*, %struct.hb_mc_drvdata** %6, align 8
  %61 = getelementptr inbounds %struct.hb_mc_drvdata, %struct.hb_mc_drvdata* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HB_DDR_ECC_C_ERR_ADDR, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %67 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @PAGE_SHIFT, align 4
  %70 = ashr i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @PAGE_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %77 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @edac_mc_handle_error(i32 %66, %struct.mem_ctl_info* %67, i32 1, i32 %70, i32 %74, i32 %75, i32 0, i32 0, i32 -1, i32 %78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %50, %45
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.hb_mc_drvdata*, %struct.hb_mc_drvdata** %6, align 8
  %83 = getelementptr inbounds %struct.hb_mc_drvdata, %struct.hb_mc_drvdata* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HB_DDR_ECC_INT_ACK, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %81, i64 %86)
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %88
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
