; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_poll_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_poll_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pmcmsptwi_data = type { i32, i64 }

@MSP_MAX_POLL = common dso_local global i32 0, align 4
@MSP_TWI_BUSY_REG_OFFSET = common dso_local global i64 0, align 8
@MSP_TWI_INT_STS_REG_OFFSET = common dso_local global i64 0, align 8
@MSP_POLL_DELAY = common dso_local global i32 0, align 4
@pmcmsptwi_adapter = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"Result: Poll timeout\0A\00", align 1
@MSP_TWI_XFER_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcmsptwi_data*)* @pmcmsptwi_poll_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcmsptwi_poll_complete(%struct.pmcmsptwi_data* %0) #0 {
  %2 = alloca %struct.pmcmsptwi_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.pmcmsptwi_data* %0, %struct.pmcmsptwi_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %40, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MSP_MAX_POLL, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %43

10:                                               ; preds = %6
  %11 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %2, align 8
  %12 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MSP_TWI_BUSY_REG_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @pmcmsptwi_readl(i64 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %10
  %20 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %2, align 8
  %21 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MSP_TWI_INT_STS_REG_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i64 @pmcmsptwi_readl(i64 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %2, align 8
  %28 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MSP_TWI_INT_STS_REG_OFFSET, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @pmcmsptwi_writel(i64 %26, i64 %31)
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @pmcmsptwi_get_result(i64 %33)
  %35 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %2, align 8
  %36 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %48

37:                                               ; preds = %10
  %38 = load i32, i32* @MSP_POLL_DELAY, align 4
  %39 = call i32 @udelay(i32 %38)
  br label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %6

43:                                               ; preds = %6
  %44 = call i32 @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmcmsptwi_adapter, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @MSP_TWI_XFER_TIMEOUT, align 4
  %46 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %2, align 8
  %47 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %19
  ret void
}

declare dso_local i64 @pmcmsptwi_readl(i64) #1

declare dso_local i32 @pmcmsptwi_writel(i64, i64) #1

declare dso_local i32 @pmcmsptwi_get_result(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
