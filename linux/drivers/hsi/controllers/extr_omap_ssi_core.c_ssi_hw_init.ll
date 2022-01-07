; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_core.c_ssi_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_core.c_ssi_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_controller = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.omap_ssi_controller = type { i32, i64, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"runtime PM failed %d\0A\00", align 1
@SSI_SWRESET = common dso_local global i32 0, align 4
@SSI_GDD_GRST_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"SSI fck rate %lu kHz\0A\00", align 1
@SSI_CLK_AUTOGATING_ON = common dso_local global i32 0, align 4
@SSI_GDD_GCR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsi_controller*)* @ssi_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_hw_init(%struct.hsi_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hsi_controller*, align 8
  %4 = alloca %struct.omap_ssi_controller*, align 8
  %5 = alloca i32, align 4
  store %struct.hsi_controller* %0, %struct.hsi_controller** %3, align 8
  %6 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  %7 = call %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller* %6)
  store %struct.omap_ssi_controller* %7, %struct.omap_ssi_controller** %4, align 8
  %8 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  %9 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pm_runtime_get_sync(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  %17 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %16, i32 0, i32 0
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dev_err(%struct.TYPE_3__* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %55

21:                                               ; preds = %1
  %22 = load i32, i32* @SSI_SWRESET, align 4
  %23 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %4, align 8
  %24 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SSI_GDD_GRST_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel_relaxed(i32 %22, i64 %27)
  %29 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  %30 = call i32 @ssi_get_clk_rate(%struct.hsi_controller* %29)
  %31 = call i32 @DIV_ROUND_CLOSEST(i32 %30, i32 1000)
  %32 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %4, align 8
  %33 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  %35 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %34, i32 0, i32 0
  %36 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %4, align 8
  %37 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_dbg(%struct.TYPE_3__* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @SSI_CLK_AUTOGATING_ON, align 4
  %41 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %4, align 8
  %42 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SSI_GDD_GCR_REG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel_relaxed(i32 %40, i64 %45)
  %47 = load i32, i32* @SSI_CLK_AUTOGATING_ON, align 4
  %48 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %4, align 8
  %49 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  %51 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pm_runtime_put_sync(i32 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %21, %15
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @ssi_get_clk_rate(%struct.hsi_controller*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
