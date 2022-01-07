; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_swreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_swreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decon_context = type { i32, i64, i32, i64 }

@DECON_VIDCON0 = common dso_local global i64 0, align 8
@VIDCON0_STOP_STATUS = common dso_local global i32 0, align 4
@VIDCON0_SWRESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to software reset DECON\0A\00", align 1
@IFTYPE_HDMI = common dso_local global i32 0, align 4
@VIDCON0_CLKVALUP = common dso_local global i32 0, align 4
@VIDCON0_VLCKFREE = common dso_local global i32 0, align 4
@DECON_CMU = common dso_local global i32 0, align 4
@CMU_CLKGAGE_MODE_SFR_F = common dso_local global i32 0, align 4
@CMU_CLKGAGE_MODE_MEM_F = common dso_local global i32 0, align 4
@VIDCON1_VCLK_RUN_VDEN_DISABLE = common dso_local global i32 0, align 4
@DECON_VIDCON1 = common dso_local global i64 0, align 8
@CRCCTRL_CRCEN = common dso_local global i32 0, align 4
@CRCCTRL_CRCSTART_F = common dso_local global i32 0, align 4
@CRCCTRL_CRCCLKEN = common dso_local global i32 0, align 4
@DECON_CRCCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decon_context*)* @decon_swreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_swreset(%struct.decon_context* %0) #0 {
  %2 = alloca %struct.decon_context*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.decon_context* %0, %struct.decon_context** %2, align 8
  %6 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %7 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DECON_VIDCON0, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 0, i64 %10)
  %12 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %13 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DECON_VIDCON0, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @VIDCON0_STOP_STATUS, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @readl_poll_timeout(i64 %16, i32 %17, i32 %21, i32 12, i32 20000)
  %23 = load i32, i32* @VIDCON0_SWRESET, align 4
  %24 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %25 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DECON_VIDCON0, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %31 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DECON_VIDCON0, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* @VIDCON0_SWRESET, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @readl_poll_timeout(i64 %34, i32 %35, i32 %39, i32 12, i32 20000)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %46 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %45, i32 0, i32 2
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %50 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %52 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %51, i32 0, i32 2
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %56 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IFTYPE_HDMI, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %1
  br label %96

62:                                               ; preds = %1
  %63 = load i32, i32* @VIDCON0_CLKVALUP, align 4
  %64 = load i32, i32* @VIDCON0_VLCKFREE, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %67 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DECON_VIDCON0, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  %72 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %73 = load i32, i32* @DECON_CMU, align 4
  %74 = load i32, i32* @CMU_CLKGAGE_MODE_SFR_F, align 4
  %75 = load i32, i32* @CMU_CLKGAGE_MODE_MEM_F, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @decon_set_bits(%struct.decon_context* %72, i32 %73, i32 %76, i32 -1)
  %78 = load i32, i32* @VIDCON1_VCLK_RUN_VDEN_DISABLE, align 4
  %79 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %80 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DECON_VIDCON1, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load i32, i32* @CRCCTRL_CRCEN, align 4
  %86 = load i32, i32* @CRCCTRL_CRCSTART_F, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @CRCCTRL_CRCCLKEN, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %91 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DECON_CRCCTRL, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  br label %96

96:                                               ; preds = %62, %61
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @decon_set_bits(%struct.decon_context*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
