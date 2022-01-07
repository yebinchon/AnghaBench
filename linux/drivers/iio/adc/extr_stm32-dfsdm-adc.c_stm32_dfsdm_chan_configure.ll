; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_chan_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_chan_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dfsdm = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.stm32_dfsdm_channel = type { i32, i32, i32, i32 }

@DFSDM_CHCFGR1_SITP_MASK = common dso_local global i32 0, align 4
@DFSDM_CHCFGR1_SPICKSEL_MASK = common dso_local global i32 0, align 4
@DFSDM_CHCFGR1_CHINSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dfsdm*, %struct.stm32_dfsdm_channel*)* @stm32_dfsdm_chan_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dfsdm_chan_configure(%struct.stm32_dfsdm* %0, %struct.stm32_dfsdm_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_dfsdm*, align 8
  %5 = alloca %struct.stm32_dfsdm_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  store %struct.stm32_dfsdm* %0, %struct.stm32_dfsdm** %4, align 8
  store %struct.stm32_dfsdm_channel* %1, %struct.stm32_dfsdm_channel** %5, align 8
  %9 = load %struct.stm32_dfsdm_channel*, %struct.stm32_dfsdm_channel** %5, align 8
  %10 = getelementptr inbounds %struct.stm32_dfsdm_channel, %struct.stm32_dfsdm_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.stm32_dfsdm*, %struct.stm32_dfsdm** %4, align 8
  %13 = getelementptr inbounds %struct.stm32_dfsdm, %struct.stm32_dfsdm* %12, i32 0, i32 0
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %7, align 8
  %15 = load %struct.regmap*, %struct.regmap** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @DFSDM_CHCFGR1(i32 %16)
  %18 = load i32, i32* @DFSDM_CHCFGR1_SITP_MASK, align 4
  %19 = load %struct.stm32_dfsdm_channel*, %struct.stm32_dfsdm_channel** %5, align 8
  %20 = getelementptr inbounds %struct.stm32_dfsdm_channel, %struct.stm32_dfsdm_channel* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DFSDM_CHCFGR1_SITP(i32 %21)
  %23 = call i32 @regmap_update_bits(%struct.regmap* %15, i32 %17, i32 %18, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %2
  %29 = load %struct.regmap*, %struct.regmap** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @DFSDM_CHCFGR1(i32 %30)
  %32 = load i32, i32* @DFSDM_CHCFGR1_SPICKSEL_MASK, align 4
  %33 = load %struct.stm32_dfsdm_channel*, %struct.stm32_dfsdm_channel** %5, align 8
  %34 = getelementptr inbounds %struct.stm32_dfsdm_channel, %struct.stm32_dfsdm_channel* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DFSDM_CHCFGR1_SPICKSEL(i32 %35)
  %37 = call i32 @regmap_update_bits(%struct.regmap* %29, i32 %31, i32 %32, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %52

42:                                               ; preds = %28
  %43 = load %struct.regmap*, %struct.regmap** %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @DFSDM_CHCFGR1(i32 %44)
  %46 = load i32, i32* @DFSDM_CHCFGR1_CHINSEL_MASK, align 4
  %47 = load %struct.stm32_dfsdm_channel*, %struct.stm32_dfsdm_channel** %5, align 8
  %48 = getelementptr inbounds %struct.stm32_dfsdm_channel, %struct.stm32_dfsdm_channel* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DFSDM_CHCFGR1_CHINSEL(i32 %49)
  %51 = call i32 @regmap_update_bits(%struct.regmap* %43, i32 %45, i32 %46, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %42, %40, %26
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @DFSDM_CHCFGR1(i32) #1

declare dso_local i32 @DFSDM_CHCFGR1_SITP(i32) #1

declare dso_local i32 @DFSDM_CHCFGR1_SPICKSEL(i32) #1

declare dso_local i32 @DFSDM_CHCFGR1_CHINSEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
