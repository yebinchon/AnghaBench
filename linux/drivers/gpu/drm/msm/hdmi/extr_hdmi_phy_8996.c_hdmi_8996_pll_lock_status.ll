; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_hdmi_8996_pll_lock_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_hdmi_8996_pll_lock_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_pll_8996 = type { i32 }

@HDMI_PLL_POLL_MAX_READS = common dso_local global i32 0, align 4
@HDMI_PLL_POLL_TIMEOUT_US = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Waiting for PLL lock\00", align 1
@REG_HDMI_PHY_QSERDES_COM_C_READY_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"HDMI PLL is %slocked\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"*not* \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_pll_8996*)* @hdmi_8996_pll_lock_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_8996_pll_lock_status(%struct.hdmi_pll_8996* %0) #0 {
  %2 = alloca %struct.hdmi_pll_8996*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.hdmi_pll_8996* %0, %struct.hdmi_pll_8996** %2, align 8
  %7 = load i32, i32* @HDMI_PLL_POLL_MAX_READS, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i64, i64* @HDMI_PLL_POLL_TIMEOUT_US, align 8
  store i64 %8, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %9 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %4, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %2, align 8
  %16 = load i32, i32* @REG_HDMI_PHY_QSERDES_COM_C_READY_STATUS, align 4
  %17 = call i32 @hdmi_pll_read(%struct.hdmi_pll_8996* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @BIT(i32 0)
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %27

24:                                               ; preds = %14
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @udelay(i64 %25)
  br label %10

27:                                               ; preds = %23, %10
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %32 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @hdmi_pll_read(%struct.hdmi_pll_8996*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
