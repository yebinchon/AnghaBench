; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_mrecv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cadence.c_cdns_i2c_mrecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_i2c = type { i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@CDNS_I2C_CR_OFFSET = common dso_local global i32 0, align 4
@CDNS_I2C_CR_RW = common dso_local global i32 0, align 4
@CDNS_I2C_CR_CLR_FIFO = common dso_local global i32 0, align 4
@I2C_M_RECV_LEN = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@CDNS_I2C_FIFO_DEPTH = common dso_local global i64 0, align 8
@CDNS_I2C_CR_HOLD = common dso_local global i32 0, align 4
@CDNS_I2C_ISR_OFFSET = common dso_local global i32 0, align 4
@CDNS_I2C_TRANSFER_SIZE = common dso_local global i32 0, align 4
@CDNS_I2C_XFER_SIZE_OFFSET = common dso_local global i32 0, align 4
@CDNS_I2C_ADDR_MASK = common dso_local global i32 0, align 4
@CDNS_I2C_ADDR_OFFSET = common dso_local global i32 0, align 4
@CDNS_I2C_ENABLED_INTR_MASK = common dso_local global i32 0, align 4
@CDNS_I2C_IER_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_i2c*)* @cdns_i2c_mrecv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_i2c_mrecv(%struct.cdns_i2c* %0) #0 {
  %2 = alloca %struct.cdns_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cdns_i2c* %0, %struct.cdns_i2c** %2, align 8
  %5 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %6 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %11 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %13 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %18 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @CDNS_I2C_CR_OFFSET, align 4
  %20 = call i32 @cdns_i2c_readreg(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @CDNS_I2C_CR_RW, align 4
  %22 = load i32, i32* @CDNS_I2C_CR_CLR_FIFO, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %27 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %36 = add i32 %35, 1
  %37 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %38 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %41 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %44 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %46 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* @CDNS_I2C_FIFO_DEPTH, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %39
  %52 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %53 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51, %39
  %57 = load i32, i32* @CDNS_I2C_CR_HOLD, align 4
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %51
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @CDNS_I2C_CR_HOLD, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @CDNS_I2C_CR_OFFSET, align 4
  %68 = call i32 @cdns_i2c_writereg(i32 %66, i32 %67)
  %69 = load i32, i32* @CDNS_I2C_ISR_OFFSET, align 4
  %70 = call i32 @cdns_i2c_readreg(i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @CDNS_I2C_ISR_OFFSET, align 4
  %73 = call i32 @cdns_i2c_writereg(i32 %71, i32 %72)
  %74 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %75 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CDNS_I2C_TRANSFER_SIZE, align 4
  %78 = icmp ugt i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %65
  %80 = load i32, i32* @CDNS_I2C_TRANSFER_SIZE, align 4
  %81 = load i32, i32* @CDNS_I2C_XFER_SIZE_OFFSET, align 4
  %82 = call i32 @cdns_i2c_writereg(i32 %80, i32 %81)
  %83 = load i32, i32* @CDNS_I2C_TRANSFER_SIZE, align 4
  %84 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %85 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %92

86:                                               ; preds = %65
  %87 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %88 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CDNS_I2C_XFER_SIZE_OFFSET, align 4
  %91 = call i32 @cdns_i2c_writereg(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %86, %79
  %93 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %94 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @CDNS_I2C_ADDR_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @CDNS_I2C_ADDR_OFFSET, align 4
  %101 = call i32 @cdns_i2c_writereg(i32 %99, i32 %100)
  %102 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %103 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %126, label %106

106:                                              ; preds = %92
  %107 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %108 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %113 = and i32 %111, %112
  %114 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %106
  %117 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %118 = getelementptr inbounds %struct.cdns_i2c, %struct.cdns_i2c* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = zext i32 %119 to i64
  %121 = load i64, i64* @CDNS_I2C_FIFO_DEPTH, align 8
  %122 = icmp sle i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load %struct.cdns_i2c*, %struct.cdns_i2c** %2, align 8
  %125 = call i32 @cdns_i2c_clear_bus_hold(%struct.cdns_i2c* %124)
  br label %126

126:                                              ; preds = %123, %116, %106, %92
  %127 = load i32, i32* @CDNS_I2C_ENABLED_INTR_MASK, align 4
  %128 = load i32, i32* @CDNS_I2C_IER_OFFSET, align 4
  %129 = call i32 @cdns_i2c_writereg(i32 %127, i32 %128)
  ret void
}

declare dso_local i32 @cdns_i2c_readreg(i32) #1

declare dso_local i32 @cdns_i2c_writereg(i32, i32) #1

declare dso_local i32 @cdns_i2c_clear_bus_hold(%struct.cdns_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
