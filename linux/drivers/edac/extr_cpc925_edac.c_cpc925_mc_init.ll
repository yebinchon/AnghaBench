; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_cpc925_mc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_cpc925_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.cpc925_mc_pdata* }
%struct.cpc925_mc_pdata = type { i64 }

@REG_APIMASK_OFFSET = common dso_local global i64 0, align 8
@ECC_MASK_ENABLE = common dso_local global i32 0, align 4
@REG_MCCR_OFFSET = common dso_local global i64 0, align 8
@MCCR_ECC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @cpc925_mc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpc925_mc_init(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.cpc925_mc_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %6 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %6, i32 0, i32 0
  %8 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %7, align 8
  store %struct.cpc925_mc_pdata* %8, %struct.cpc925_mc_pdata** %3, align 8
  %9 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %10 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REG_APIMASK_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @__raw_readl(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ECC_MASK_ENABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load i32, i32* @ECC_MASK_ENABLE, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %25 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @REG_APIMASK_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @__raw_writel(i32 %23, i64 %28)
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %32 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REG_MCCR_OFFSET, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @__raw_readl(i64 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @MCCR_ECC_EN, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %30
  %42 = load i32, i32* @MCCR_ECC_EN, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %47 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @REG_MCCR_OFFSET, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @__raw_writel(i32 %45, i64 %50)
  br label %52

52:                                               ; preds = %41, %30
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
