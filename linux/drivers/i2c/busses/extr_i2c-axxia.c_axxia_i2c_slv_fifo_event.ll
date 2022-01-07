; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_slv_fifo_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_slv_fifo_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axxia_i2c_dev = type { i64, i32, i32 }

@SLV_RX_FIFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"slave irq fifo_status=0x%x\0A\00", align 1
@SLV_FIFO_DV1 = common dso_local global i32 0, align 4
@SLV_FIFO_STRC = common dso_local global i32 0, align 4
@I2C_SLAVE_WRITE_REQUESTED = common dso_local global i32 0, align 4
@SLV_DATA = common dso_local global i64 0, align 8
@I2C_SLAVE_WRITE_RECEIVED = common dso_local global i32 0, align 4
@SLV_FIFO_STPC = common dso_local global i32 0, align 4
@I2C_SLAVE_STOP = common dso_local global i32 0, align 4
@SLV_FIFO_RSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axxia_i2c_dev*)* @axxia_i2c_slv_fifo_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axxia_i2c_slv_fifo_event(%struct.axxia_i2c_dev* %0) #0 {
  %2 = alloca %struct.axxia_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.axxia_i2c_dev* %0, %struct.axxia_i2c_dev** %2, align 8
  %5 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %6 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SLV_RX_FIFO, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i8* @readl(i64 %9)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %13 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SLV_FIFO_DV1, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SLV_FIFO_STRC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %28 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @I2C_SLAVE_WRITE_REQUESTED, align 4
  %31 = call i32 @i2c_slave_event(i32 %29, i32 %30, i8** %4)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %34 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SLV_DATA, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i8* @readl(i64 %37)
  store i8* %38, i8** %4, align 8
  %39 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %40 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @I2C_SLAVE_WRITE_RECEIVED, align 4
  %43 = call i32 @i2c_slave_event(i32 %41, i32 %42, i8** %4)
  br label %44

44:                                               ; preds = %32, %1
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SLV_FIFO_STPC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %51 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SLV_DATA, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i8* @readl(i64 %54)
  %56 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %57 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @I2C_SLAVE_STOP, align 4
  %60 = call i32 @i2c_slave_event(i32 %58, i32 %59, i8** %4)
  br label %61

61:                                               ; preds = %49, %44
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @SLV_FIFO_RSC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %68 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SLV_DATA, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i8* @readl(i64 %71)
  br label %73

73:                                               ; preds = %66, %61
  ret void
}

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @i2c_slave_event(i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
