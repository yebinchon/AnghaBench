; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_get_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pmcmsp.c_pmcmsptwi_get_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MSP_TWI_INT_STS_LOST_ARBITRATION = common dso_local global i32 0, align 4
@pmcmsptwi_adapter = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"Result: Lost arbitration\0A\00", align 1
@MSP_TWI_XFER_LOST_ARBITRATION = common dso_local global i32 0, align 4
@MSP_TWI_INT_STS_NO_RESPONSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Result: No response\0A\00", align 1
@MSP_TWI_XFER_NO_RESPONSE = common dso_local global i32 0, align 4
@MSP_TWI_INT_STS_DATA_COLLISION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Result: Data collision\0A\00", align 1
@MSP_TWI_XFER_DATA_COLLISION = common dso_local global i32 0, align 4
@MSP_TWI_INT_STS_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Result: Bus busy\0A\00", align 1
@MSP_TWI_XFER_BUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Result: Operation succeeded\0A\00", align 1
@MSP_TWI_XFER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pmcmsptwi_get_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcmsptwi_get_result(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MSP_TWI_INT_STS_LOST_ARBITRATION, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i32 @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmcmsptwi_adapter, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @MSP_TWI_XFER_LOST_ARBITRATION, align 4
  store i32 %10, i32* %2, align 4
  br label %41

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @MSP_TWI_INT_STS_NO_RESPONSE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = call i32 @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmcmsptwi_adapter, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @MSP_TWI_XFER_NO_RESPONSE, align 4
  store i32 %18, i32* %2, align 4
  br label %41

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @MSP_TWI_INT_STS_DATA_COLLISION, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = call i32 @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmcmsptwi_adapter, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @MSP_TWI_XFER_DATA_COLLISION, align 4
  store i32 %26, i32* %2, align 4
  br label %41

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @MSP_TWI_INT_STS_BUSY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call i32 @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmcmsptwi_adapter, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* @MSP_TWI_XFER_BUSY, align 4
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  %39 = call i32 @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmcmsptwi_adapter, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32, i32* @MSP_TWI_XFER_OK, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %32, %24, %16, %8
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
