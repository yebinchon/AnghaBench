; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_do_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_do_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pmcmsptwi_data = type { i32, i32, i64, i64 }

@pmcmsptwi_adapter = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [24 x i8] c"Writing cmd reg 0x%08x\0A\00", align 1
@MSP_TWI_CMD_REG_OFFSET = common dso_local global i64 0, align 8
@MSP_IRQ_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Result: IRQ timeout\0A\00", align 1
@MSP_TWI_XFER_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pmcmsptwi_data*)* @pmcmsptwi_do_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcmsptwi_do_xfer(i32 %0, %struct.pmcmsptwi_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmcmsptwi_data*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pmcmsptwi_data* %1, %struct.pmcmsptwi_data** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmcmsptwi_adapter, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %10 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MSP_TWI_CMD_REG_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @pmcmsptwi_writel(i32 %8, i64 %13)
  %15 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %16 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %21 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %20, i32 0, i32 1
  %22 = load i32, i32* @MSP_IRQ_TIMEOUT, align 4
  %23 = call i64 @wait_for_completion_timeout(i32* %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmcmsptwi_adapter, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %29 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %28, i32 0, i32 1
  %30 = call i32 @complete(i32* %29)
  %31 = load i32, i32* @MSP_TWI_XFER_TIMEOUT, align 4
  %32 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %33 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %26, %19
  br label %38

35:                                               ; preds = %2
  %36 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %37 = call i32 @pmcmsptwi_poll_complete(%struct.pmcmsptwi_data* %36)
  br label %38

38:                                               ; preds = %35, %34
  %39 = load %struct.pmcmsptwi_data*, %struct.pmcmsptwi_data** %4, align 8
  %40 = getelementptr inbounds %struct.pmcmsptwi_data, %struct.pmcmsptwi_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  ret i32 %41
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @pmcmsptwi_writel(i32, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @pmcmsptwi_poll_complete(%struct.pmcmsptwi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
