; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_empty_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_empty_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axxia_i2c_dev = type { i32, i64, i32, i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i32, i32* }

@MST_RX_FIFO = common dso_local global i64 0, align 8
@MST_DATA = common dso_local global i64 0, align 8
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@MST_STATUS_TSS = common dso_local global i32 0, align 4
@MST_RX_XFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axxia_i2c_dev*)* @axxia_i2c_empty_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axxia_i2c_empty_rx_fifo(%struct.axxia_i2c_dev* %0) #0 {
  %2 = alloca %struct.axxia_i2c_dev*, align 8
  %3 = alloca %struct.i2c_msg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.axxia_i2c_dev* %0, %struct.axxia_i2c_dev** %2, align 8
  %7 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %8 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %7, i32 0, i32 4
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  store %struct.i2c_msg* %9, %struct.i2c_msg** %3, align 8
  %10 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %11 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MST_RX_FIFO, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i8* @readl(i64 %14)
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %22 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %20, %23
  %25 = call i32 @min(i64 %17, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %79, %1
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %5, align 4
  %29 = icmp sgt i32 %27, 0
  br i1 %29, label %30, label %90

30:                                               ; preds = %26
  %31 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %32 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MST_DATA, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i8* @readl(i64 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %39 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %30
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %44 = call i64 @i2c_m_recv_len(%struct.i2c_msg* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49, %46
  %54 = load i32, i32* @EPROTO, align 4
  %55 = sub nsw i32 0, %54
  %56 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %57 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %59 = load i32, i32* @MST_STATUS_TSS, align 4
  %60 = xor i32 %59, -1
  %61 = call i32 @i2c_int_disable(%struct.axxia_i2c_dev* %58, i32 %60)
  %62 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %63 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %62, i32 0, i32 2
  %64 = call i32 @complete(i32* %63)
  br label %90

65:                                               ; preds = %49
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 1, %66
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %74 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MST_RX_XFER, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  br label %79

79:                                               ; preds = %65, %42, %30
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %2, align 8
  %85 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %83, i64 %88
  store i32 %80, i32* %89, align 4
  br label %26

90:                                               ; preds = %53, %26
  ret i32 0
}

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i64 @i2c_m_recv_len(%struct.i2c_msg*) #1

declare dso_local i32 @i2c_int_disable(%struct.axxia_i2c_dev*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
