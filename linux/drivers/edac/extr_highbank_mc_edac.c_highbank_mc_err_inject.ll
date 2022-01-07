; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_highbank_mc_edac.c_highbank_mc_err_inject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_highbank_mc_edac.c_highbank_mc_err_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.hb_mc_drvdata* }
%struct.hb_mc_drvdata = type { i64 }

@HB_DDR_ECC_OPT = common dso_local global i64 0, align 8
@HB_DDR_ECC_OPT_MODE_MASK = common dso_local global i32 0, align 4
@HB_DDR_ECC_OPT_XOR_SHIFT = common dso_local global i32 0, align 4
@HB_DDR_ECC_OPT_FWC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i32)* @highbank_mc_err_inject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @highbank_mc_err_inject(%struct.mem_ctl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hb_mc_drvdata*, align 8
  %6 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 0
  %9 = load %struct.hb_mc_drvdata*, %struct.hb_mc_drvdata** %8, align 8
  store %struct.hb_mc_drvdata* %9, %struct.hb_mc_drvdata** %5, align 8
  %10 = load %struct.hb_mc_drvdata*, %struct.hb_mc_drvdata** %5, align 8
  %11 = getelementptr inbounds %struct.hb_mc_drvdata, %struct.hb_mc_drvdata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HB_DDR_ECC_OPT, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @HB_DDR_ECC_OPT_MODE_MASK, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @HB_DDR_ECC_OPT_XOR_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* @HB_DDR_ECC_OPT_FWC, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.hb_mc_drvdata*, %struct.hb_mc_drvdata** %5, align 8
  %28 = getelementptr inbounds %struct.hb_mc_drvdata, %struct.hb_mc_drvdata* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HB_DDR_ECC_OPT, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
