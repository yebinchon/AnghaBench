; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pmcmsptwi_data = type { i32, i32, i64 }

@MSP_TWI_INT_STS_REG_OFFSET = common dso_local global i64 0, align 8
@pmcmsptwi_adapter = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"Got interrupt 0x%08x\0A\00", align 1
@MSP_TWI_INT_STS_DONE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pmcmsptwi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcmsptwi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pmcmsptwi_data*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.pmcmsptwi_data*
  store %struct.pmcmsptwi_data* %9, %struct.pmcmsptwi_data** %6, align 8
  %10 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %6, align 8
  %11 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MSP_TWI_INT_STS_REG_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @pmcmsptwi_readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %6, align 8
  %18 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MSP_TWI_INT_STS_REG_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @pmcmsptwi_writel(i32 %16, i64 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmcmsptwi_adapter, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MSP_TWI_INT_STS_DONE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %40

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @pmcmsptwi_get_result(i32 %32)
  %34 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %6, align 8
  %35 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %6, align 8
  %37 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %36, i32 0, i32 0
  %38 = call i32 @complete(i32* %37)
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %31, %29
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @pmcmsptwi_readl(i64) #1

declare dso_local i32 @pmcmsptwi_writel(i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @pmcmsptwi_get_result(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
