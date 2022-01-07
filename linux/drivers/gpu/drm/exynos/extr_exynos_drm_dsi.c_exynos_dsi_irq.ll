; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_dsi = type { i32, i32 }

@DSIM_INTSRC_REG = common dso_local global i32 0, align 4
@exynos_dsi_irq.j = internal global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"spurious interrupt\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DSIM_INT_SW_RST_RELEASE = common dso_local global i32 0, align 4
@DSIM_INT_RX_DONE = common dso_local global i32 0, align 4
@DSIM_INT_SFR_FIFO_EMPTY = common dso_local global i32 0, align 4
@DSIM_INT_SFR_HDR_FIFO_EMPTY = common dso_local global i32 0, align 4
@DSIM_INT_RX_ECC_ERR = common dso_local global i32 0, align 4
@DSIM_INTMSK_REG = common dso_local global i32 0, align 4
@DSIM_INT_PLL_STABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @exynos_dsi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dsi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.exynos_dsi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.exynos_dsi*
  store %struct.exynos_dsi* %10, %struct.exynos_dsi** %6, align 8
  %11 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %12 = load i32, i32* @DSIM_INTSRC_REG, align 4
  %13 = call i32 @exynos_dsi_read(%struct.exynos_dsi* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = call i64 @printk_timed_ratelimit(i64* @exynos_dsi_irq.j, i32 500)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %21 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_warn(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %16
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %25, i32* %3, align 4
  br label %74

26:                                               ; preds = %2
  %27 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %28 = load i32, i32* @DSIM_INTSRC_REG, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @DSIM_INT_SW_RST_RELEASE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %26
  %36 = load i32, i32* @DSIM_INT_RX_DONE, align 4
  %37 = load i32, i32* @DSIM_INT_SFR_FIFO_EMPTY, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @DSIM_INT_SFR_HDR_FIFO_EMPTY, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @DSIM_INT_RX_ECC_ERR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @DSIM_INT_SW_RST_RELEASE, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  store i32 %45, i32* %8, align 4
  %46 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %47 = load i32, i32* @DSIM_INTMSK_REG, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %46, i32 %47, i32 %48)
  %50 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %51 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %50, i32 0, i32 0
  %52 = call i32 @complete(i32* %51)
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  br label %74

54:                                               ; preds = %26
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @DSIM_INT_RX_DONE, align 4
  %57 = load i32, i32* @DSIM_INT_SFR_FIFO_EMPTY, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @DSIM_INT_PLL_STABLE, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %55, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %64, i32* %3, align 4
  br label %74

65:                                               ; preds = %54
  %66 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %67 = call i64 @exynos_dsi_transfer_finish(%struct.exynos_dsi* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.exynos_dsi*, %struct.exynos_dsi** %6, align 8
  %71 = call i32 @exynos_dsi_transfer_start(%struct.exynos_dsi* %70)
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %63, %35, %24
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @exynos_dsi_read(%struct.exynos_dsi*, i32) #1

declare dso_local i64 @printk_timed_ratelimit(i64*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @exynos_dsi_write(%struct.exynos_dsi*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i64 @exynos_dsi_transfer_finish(%struct.exynos_dsi*) #1

declare dso_local i32 @exynos_dsi_transfer_start(%struct.exynos_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
