; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_reg_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_reg_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.axxia_i2c_dev = type { i64, %struct.i2c_client* }

@SLV_STATUS_RFH = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GLOBAL_MST_EN = common dso_local global i32 0, align 4
@GLOBAL_SLV_EN = common dso_local global i32 0, align 4
@GLOBAL_CONTROL = common dso_local global i64 0, align 8
@INT_MST = common dso_local global i32 0, align 4
@INT_SLV = common dso_local global i32 0, align 4
@INTERRUPT_ENABLE = common dso_local global i64 0, align 8
@SLV_ADDR_DEC_SA1E = common dso_local global i32 0, align 4
@I2C_CLIENT_TEN = common dso_local global i32 0, align 4
@SLV_ADDR_DEC_SA1M = common dso_local global i32 0, align 4
@SLV_RX_ACSA1 = common dso_local global i32 0, align 4
@SLV_RX_CTL = common dso_local global i64 0, align 8
@SLV_ADDR_DEC_CTL = common dso_local global i64 0, align 8
@SLV_ADDR_1 = common dso_local global i64 0, align 8
@SLV_STATUS_SRS1 = common dso_local global i32 0, align 4
@SLV_STATUS_SRRS1 = common dso_local global i32 0, align 4
@SLV_STATUS_SRND1 = common dso_local global i32 0, align 4
@SLV_STATUS_SRC1 = common dso_local global i32 0, align 4
@SLV_INT_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @axxia_i2c_reg_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axxia_i2c_reg_slave(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.axxia_i2c_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.axxia_i2c_dev* @i2c_get_adapdata(i32 %9)
  store %struct.axxia_i2c_dev* %10, %struct.axxia_i2c_dev** %4, align 8
  %11 = load i32, i32* @SLV_STATUS_RFH, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %13 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %12, i32 0, i32 1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %15 = icmp ne %struct.i2c_client* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %93

19:                                               ; preds = %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %22 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %21, i32 0, i32 1
  store %struct.i2c_client* %20, %struct.i2c_client** %22, align 8
  %23 = load i32, i32* @GLOBAL_MST_EN, align 4
  %24 = load i32, i32* @GLOBAL_SLV_EN, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %27 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @GLOBAL_CONTROL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load i32, i32* @INT_MST, align 4
  %33 = load i32, i32* @INT_SLV, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %36 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @INTERRUPT_ENABLE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = load i32, i32* @SLV_ADDR_DEC_SA1E, align 4
  store i32 %41, i32* %6, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @I2C_CLIENT_TEN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %19
  %49 = load i32, i32* @SLV_ADDR_DEC_SA1M, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %19
  %53 = load i32, i32* @SLV_RX_ACSA1, align 4
  %54 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %55 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SLV_RX_CTL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %62 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SLV_ADDR_DEC_CTL, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %71 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SLV_ADDR_1, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  %76 = load i32, i32* @SLV_STATUS_SRS1, align 4
  %77 = load i32, i32* @SLV_STATUS_SRRS1, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SLV_STATUS_SRND1, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* @SLV_STATUS_SRC1, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %88 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SLV_INT_ENABLE, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %52, %16
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.axxia_i2c_dev* @i2c_get_adapdata(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
