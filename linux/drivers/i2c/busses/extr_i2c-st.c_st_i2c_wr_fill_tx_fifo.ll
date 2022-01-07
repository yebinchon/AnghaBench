; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_wr_fill_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_wr_fill_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_i2c_dev = type { i64, %struct.st_i2c_client }
%struct.st_i2c_client = type { i32, i32* }

@SSC_STA = common dso_local global i64 0, align 8
@SSC_STA_TX_FIFO_FULL = common dso_local global i32 0, align 4
@SSC_TX_FSTAT = common dso_local global i64 0, align 8
@SSC_TX_FSTAT_STATUS = common dso_local global i32 0, align 4
@SSC_TXFIFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_i2c_dev*)* @st_i2c_wr_fill_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_i2c_wr_fill_tx_fifo(%struct.st_i2c_dev* %0) #0 {
  %2 = alloca %struct.st_i2c_dev*, align 8
  %3 = alloca %struct.st_i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.st_i2c_dev* %0, %struct.st_i2c_dev** %2, align 8
  %7 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %8 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %7, i32 0, i32 1
  store %struct.st_i2c_client* %8, %struct.st_i2c_client** %3, align 8
  %9 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %10 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SSC_STA, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl_relaxed(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SSC_STA_TX_FIFO_FULL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %67

20:                                               ; preds = %1
  %21 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %22 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SSC_TX_FSTAT, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl_relaxed(i64 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @SSC_TX_FSTAT_STATUS, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.st_i2c_client*, %struct.st_i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SSC_TXFIFO_SIZE, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %20
  %38 = load %struct.st_i2c_client*, %struct.st_i2c_client** %3, align 8
  %39 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %6, align 4
  br label %45

41:                                               ; preds = %20
  %42 = load i32, i32* @SSC_TXFIFO_SIZE, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %56, %45
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %51 = load %struct.st_i2c_client*, %struct.st_i2c_client** %3, align 8
  %52 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @st_i2c_write_tx_fifo(%struct.st_i2c_dev* %50, i32 %54)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %6, align 4
  %59 = load %struct.st_i2c_client*, %struct.st_i2c_client** %3, align 8
  %60 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.st_i2c_client*, %struct.st_i2c_client** %3, align 8
  %64 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %64, align 8
  br label %46

67:                                               ; preds = %19, %46
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @st_i2c_write_tx_fifo(%struct.st_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
