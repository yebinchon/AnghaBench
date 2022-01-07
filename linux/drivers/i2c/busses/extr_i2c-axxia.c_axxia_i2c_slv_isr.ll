; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_slv_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_slv_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axxia_i2c_dev = type { i64, i32, i32 }

@SLV_INT_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"slave irq status=0x%x\0A\00", align 1
@SLV_STATUS_RFH = common dso_local global i32 0, align 4
@SLV_STATUS_SRS1 = common dso_local global i32 0, align 4
@I2C_SLAVE_READ_REQUESTED = common dso_local global i32 0, align 4
@SLV_DATA = common dso_local global i64 0, align 8
@SLV_STATUS_SRND1 = common dso_local global i32 0, align 4
@I2C_SLAVE_READ_PROCESSED = common dso_local global i32 0, align 4
@SLV_STATUS_SRC1 = common dso_local global i32 0, align 4
@I2C_SLAVE_STOP = common dso_local global i32 0, align 4
@INT_SLV = common dso_local global i32 0, align 4
@INTERRUPT_STATUS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axxia_i2c_dev*)* @axxia_i2c_slv_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axxia_i2c_slv_isr(%struct.axxia_i2c_dev* %0) #0 {
  %2 = alloca %struct.axxia_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.axxia_i2c_dev* %0, %struct.axxia_i2c_dev** %2, align 8
  %5 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %6 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SLV_INT_STATUS, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %12 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SLV_STATUS_RFH, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %22 = call i32 @axxia_i2c_slv_fifo_event(%struct.axxia_i2c_dev* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SLV_STATUS_SRS1, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %30 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @I2C_SLAVE_READ_REQUESTED, align 4
  %33 = call i32 @i2c_slave_event(i32 %31, i32 %32, i32* %4)
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %36 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SLV_DATA, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  br label %41

41:                                               ; preds = %28, %23
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @SLV_STATUS_SRND1, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %48 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @I2C_SLAVE_READ_PROCESSED, align 4
  %51 = call i32 @i2c_slave_event(i32 %49, i32 %50, i32* %4)
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %54 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SLV_DATA, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  br label %59

59:                                               ; preds = %46, %41
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @SLV_STATUS_SRC1, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %66 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @I2C_SLAVE_STOP, align 4
  %69 = call i32 @i2c_slave_event(i32 %67, i32 %68, i32* %4)
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* @INT_SLV, align 4
  %72 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %73 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @INTERRUPT_STATUS, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %78
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @axxia_i2c_slv_fifo_event(%struct.axxia_i2c_dev*) #1

declare dso_local i32 @i2c_slave_event(i32, i32, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
