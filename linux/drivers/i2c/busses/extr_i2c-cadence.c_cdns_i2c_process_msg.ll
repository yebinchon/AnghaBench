; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_process_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_process_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_i2c = type { i32, %struct.TYPE_4__, i32, %struct.i2c_msg* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.i2c_adapter = type { i32 }

@CDNS_I2C_CR_OFFSET = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@CDNS_I2C_CR_NEA = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"timeout waiting on completion\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CDNS_I2C_IXR_ALL_INTR_MASK = common dso_local global i32 0, align 4
@CDNS_I2C_IDR_OFFSET = common dso_local global i32 0, align 4
@CDNS_I2C_IXR_ARB_LOST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns_i2c*, %struct.i2c_msg*, %struct.i2c_adapter*)* @cdns_i2c_process_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_i2c_process_msg(%struct.cdns_i2c* %0, %struct.i2c_msg* %1, %struct.i2c_adapter* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdns_i2c*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cdns_i2c* %0, %struct.cdns_i2c** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %7, align 8
  %10 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %11 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %12 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %11, i32 0, i32 3
  store %struct.i2c_msg* %10, %struct.i2c_msg** %12, align 8
  %13 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %14 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %16 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %15, i32 0, i32 2
  %17 = call i32 @reinit_completion(i32* %16)
  %18 = load i32, i32* @CDNS_I2C_CR_OFFSET, align 4
  %19 = call i32 @cdns_i2c_readreg(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @I2C_M_TEN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @CDNS_I2C_CR_NEA, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @CDNS_I2C_CR_NEA, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = load i32, i32* @CDNS_I2C_CR_OFFSET, align 4
  %37 = call i32 @cdns_i2c_writereg(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %26
  br label %51

39:                                               ; preds = %3
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @CDNS_I2C_CR_NEA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @CDNS_I2C_CR_NEA, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @CDNS_I2C_CR_OFFSET, align 4
  %49 = call i32 @cdns_i2c_writereg(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  br label %51

51:                                               ; preds = %50, %38
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @I2C_M_RD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %60 = call i32 @cdns_i2c_mrecv(%struct.cdns_i2c* %59)
  br label %64

61:                                               ; preds = %51
  %62 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %63 = call i32 @cdns_i2c_msend(%struct.cdns_i2c* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %66 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %65, i32 0, i32 2
  %67 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %68 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @wait_for_completion_timeout(i32* %66, i32 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %64
  %74 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %75 = call i32 @cdns_i2c_master_reset(%struct.i2c_adapter* %74)
  %76 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %77 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @ETIMEDOUT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %98

84:                                               ; preds = %64
  %85 = load i32, i32* @CDNS_I2C_IXR_ALL_INTR_MASK, align 4
  %86 = load i32, i32* @CDNS_I2C_IDR_OFFSET, align 4
  %87 = call i32 @cdns_i2c_writereg(i32 %85, i32 %86)
  %88 = load %struct.cdns_i2c*, %struct.cdns_i2c** %5, align 8
  %89 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CDNS_I2C_IXR_ARB_LOST, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i32, i32* @EAGAIN, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %98

97:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %94, %73
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @cdns_i2c_readreg(i32) #1

declare dso_local i32 @cdns_i2c_writereg(i32, i32) #1

declare dso_local i32 @cdns_i2c_mrecv(%struct.cdns_i2c*) #1

declare dso_local i32 @cdns_i2c_msend(%struct.cdns_i2c*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @cdns_i2c_master_reset(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
