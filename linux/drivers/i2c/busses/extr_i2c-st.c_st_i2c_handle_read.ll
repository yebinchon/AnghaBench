; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_handle_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_handle_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_i2c_dev = type { i64, %struct.st_i2c_client }
%struct.st_i2c_client = type { i32, i32 }

@SSC_RBUF = common dso_local global i64 0, align 8
@SSC_I2C = common dso_local global i64 0, align 8
@SSC_I2C_TXENB = common dso_local global i32 0, align 4
@SSC_I2C_ACKG = common dso_local global i32 0, align 4
@SSC_IEN_NACKEN = common dso_local global i32 0, align 4
@SSC_IEN_ARBLEN = common dso_local global i32 0, align 4
@SSC_IEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_i2c_dev*)* @st_i2c_handle_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_i2c_handle_read(%struct.st_i2c_dev* %0) #0 {
  %2 = alloca %struct.st_i2c_dev*, align 8
  %3 = alloca %struct.st_i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.st_i2c_dev* %0, %struct.st_i2c_dev** %2, align 8
  %5 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %6 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %5, i32 0, i32 1
  store %struct.st_i2c_client* %6, %struct.st_i2c_client** %3, align 8
  %7 = load %struct.st_i2c_client*, %struct.st_i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %1
  %12 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %13 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SSC_RBUF, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  %18 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %19 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SSC_I2C, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* @SSC_I2C_TXENB, align 4
  %24 = call i32 @st_i2c_clr_bits(i64 %22, i32 %23)
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %27 = call i32 @st_i2c_read_rx_fifo(%struct.st_i2c_dev* %26)
  br label %28

28:                                               ; preds = %25, %11
  %29 = load %struct.st_i2c_client*, %struct.st_i2c_client** %3, align 8
  %30 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %35 = call i32 @st_i2c_terminate_xfer(%struct.st_i2c_dev* %34)
  br label %72

36:                                               ; preds = %28
  %37 = load %struct.st_i2c_client*, %struct.st_i2c_client** %3, align 8
  %38 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %64

41:                                               ; preds = %36
  %42 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %43 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SSC_I2C, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* @SSC_I2C_ACKG, align 4
  %48 = call i32 @st_i2c_clr_bits(i64 %46, i32 %47)
  %49 = load i32, i32* @SSC_IEN_NACKEN, align 4
  %50 = load i32, i32* @SSC_IEN_ARBLEN, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %54 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SSC_IEN, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel_relaxed(i32 %52, i64 %57)
  %59 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %60 = load %struct.st_i2c_client*, %struct.st_i2c_client** %3, align 8
  %61 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @st_i2c_rd_fill_tx_fifo(%struct.st_i2c_dev* %59, i32 %62)
  br label %71

64:                                               ; preds = %36
  %65 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %2, align 8
  %66 = load %struct.st_i2c_client*, %struct.st_i2c_client** %3, align 8
  %67 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call i32 @st_i2c_rd_fill_tx_fifo(%struct.st_i2c_dev* %65, i32 %69)
  br label %71

71:                                               ; preds = %64, %41
  br label %72

72:                                               ; preds = %71, %33
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @st_i2c_clr_bits(i64, i32) #1

declare dso_local i32 @st_i2c_read_rx_fifo(%struct.st_i2c_dev*) #1

declare dso_local i32 @st_i2c_terminate_xfer(%struct.st_i2c_dev*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @st_i2c_rd_fill_tx_fifo(%struct.st_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
