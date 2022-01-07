; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_set_clock_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_set_clock_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcmsptwi_clockcfg = type { i32, i32 }
%struct.pmcmsptwi_data = type { i32, i64 }

@MSP_TWI_SF_CLK_REG_OFFSET = common dso_local global i64 0, align 8
@MSP_TWI_HS_CLK_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcmsptwi_clockcfg*, %struct.pmcmsptwi_data*)* @pmcmsptwi_set_clock_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcmsptwi_set_clock_config(%struct.pmcmsptwi_clockcfg* %0, %struct.pmcmsptwi_data* %1) #0 {
  %3 = alloca %struct.pmcmsptwi_clockcfg*, align 8
  %4 = alloca %struct.pmcmsptwi_data*, align 8
  store %struct.pmcmsptwi_clockcfg* %0, %struct.pmcmsptwi_clockcfg** %3, align 8
  store %struct.pmcmsptwi_data* %1, %struct.pmcmsptwi_data** %4, align 8
  %5 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %6 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.pmcmsptwi_clockcfg*, %struct.pmcmsptwi_clockcfg** %3, align 8
  %9 = getelementptr inbounds %struct.pmcmsptwi_clockcfg, %struct.pmcmsptwi_clockcfg* %8, i32 0, i32 1
  %10 = call i32 @pmcmsptwi_clock_to_reg(i32* %9)
  %11 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %12 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MSP_TWI_SF_CLK_REG_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @pmcmsptwi_writel(i32 %10, i64 %15)
  %17 = load %struct.pmcmsptwi_clockcfg*, %struct.pmcmsptwi_clockcfg** %3, align 8
  %18 = getelementptr inbounds %struct.pmcmsptwi_clockcfg, %struct.pmcmsptwi_clockcfg* %17, i32 0, i32 0
  %19 = call i32 @pmcmsptwi_clock_to_reg(i32* %18)
  %20 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %21 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MSP_TWI_HS_CLK_REG_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @pmcmsptwi_writel(i32 %19, i64 %24)
  %26 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %27 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pmcmsptwi_writel(i32, i64) #1

declare dso_local i32 @pmcmsptwi_clock_to_reg(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
