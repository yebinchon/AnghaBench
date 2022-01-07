; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_cpc925_get_sdram_scrub_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_cpc925_get_sdram_scrub_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.cpc925_mc_pdata* }
%struct.cpc925_mc_pdata = type { i64 }

@REG_MSCR_OFFSET = common dso_local global i64 0, align 8
@MSCR_SI_MASK = common dso_local global i32 0, align 4
@MSCR_SI_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Mem Scrub Ctrl Register 0x%x\0A\00", align 1
@MSCR_SCRUB_MOD_MASK = common dso_local global i32 0, align 4
@MSCR_BACKGR_SCRUB = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Scrub mode not enabled\0A\00", align 1
@CPC925_SCRUB_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @cpc925_get_sdram_scrub_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpc925_get_sdram_scrub_rate(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.cpc925_mc_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 0
  %9 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %8, align 8
  store %struct.cpc925_mc_pdata* %9, %struct.cpc925_mc_pdata** %3, align 8
  %10 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %11 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @REG_MSCR_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @__raw_readl(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MSCR_SI_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @MSCR_SI_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MSCR_SCRUB_MOD_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @MSCR_BACKGR_SCRUB, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28, %1
  %32 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %33 = load i32, i32* @KERN_INFO, align 4
  %34 = call i32 @cpc925_mc_printk(%struct.mem_ctl_info* %32, i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %40

35:                                               ; preds = %28
  %36 = load i32, i32* @CPC925_SCRUB_BLOCK_SIZE, align 4
  %37 = mul nsw i32 %36, 64103
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32) #1

declare dso_local i32 @cpc925_mc_printk(%struct.mem_ctl_info*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
