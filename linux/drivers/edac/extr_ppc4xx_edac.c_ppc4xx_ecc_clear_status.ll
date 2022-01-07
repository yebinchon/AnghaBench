; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_ecc_clear_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_ecc_clear_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.ppc4xx_edac_pdata* }
%struct.ppc4xx_edac_pdata = type { i32 }
%struct.ppc4xx_ecc_status = type { i32, i32, i32 }

@SDRAM_ECCES = common dso_local global i32 0, align 4
@SDRAM_ECCES_MASK = common dso_local global i32 0, align 4
@SDRAM_WMIRQ = common dso_local global i32 0, align 4
@SDRAM_WMIRQ_MASK = common dso_local global i32 0, align 4
@SDRAM_BESR = common dso_local global i32 0, align 4
@SDRAM_BESR_MASK = common dso_local global i32 0, align 4
@SDRAM_BEARL = common dso_local global i32 0, align 4
@SDRAM_BEARH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*)* @ppc4xx_ecc_clear_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc4xx_ecc_clear_status(%struct.mem_ctl_info* %0, %struct.ppc4xx_ecc_status* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.ppc4xx_ecc_status*, align 8
  %5 = alloca %struct.ppc4xx_edac_pdata*, align 8
  %6 = alloca i32*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.ppc4xx_ecc_status* %1, %struct.ppc4xx_ecc_status** %4, align 8
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 0
  %9 = load %struct.ppc4xx_edac_pdata*, %struct.ppc4xx_edac_pdata** %8, align 8
  store %struct.ppc4xx_edac_pdata* %9, %struct.ppc4xx_edac_pdata** %5, align 8
  %10 = load %struct.ppc4xx_edac_pdata*, %struct.ppc4xx_edac_pdata** %5, align 8
  %11 = getelementptr inbounds %struct.ppc4xx_edac_pdata, %struct.ppc4xx_edac_pdata* %10, i32 0, i32 0
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @SDRAM_ECCES, align 4
  %14 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %4, align 8
  %15 = getelementptr inbounds %struct.ppc4xx_ecc_status, %struct.ppc4xx_ecc_status* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SDRAM_ECCES_MASK, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @mtsdram(i32* %12, i32 %13, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @SDRAM_WMIRQ, align 4
  %22 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %4, align 8
  %23 = getelementptr inbounds %struct.ppc4xx_ecc_status, %struct.ppc4xx_ecc_status* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SDRAM_WMIRQ_MASK, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @mtsdram(i32* %20, i32 %21, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @SDRAM_BESR, align 4
  %30 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %4, align 8
  %31 = getelementptr inbounds %struct.ppc4xx_ecc_status, %struct.ppc4xx_ecc_status* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SDRAM_BESR_MASK, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @mtsdram(i32* %28, i32 %29, i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @SDRAM_BEARL, align 4
  %38 = call i32 @mtsdram(i32* %36, i32 %37, i32 0)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @SDRAM_BEARH, align 4
  %41 = call i32 @mtsdram(i32* %39, i32 %40, i32 0)
  ret void
}

declare dso_local i32 @mtsdram(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
