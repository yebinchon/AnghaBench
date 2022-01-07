; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-slave.c_i2c_dw_reg_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-slave.c_i2c_dw_reg_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.dw_i2c_dev = type { i64, i64, i32, i64, i64, i64, i64, %struct.i2c_client*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@I2C_CLIENT_TEN = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@DW_IC_SAR = common dso_local global i32 0, align 4
@STATUS_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @i2c_dw_reg_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_dw_reg_slave(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.dw_i2c_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.dw_i2c_dev* @i2c_get_adapdata(i32 %7)
  store %struct.dw_i2c_dev* %8, %struct.dw_i2c_dev** %4, align 8
  %9 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %10 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %9, i32 0, i32 7
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %12 = icmp ne %struct.i2c_client* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %59

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @I2C_CLIENT_TEN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EAFNOSUPPORT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %59

26:                                               ; preds = %16
  %27 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %28 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pm_runtime_get_sync(i32 %29)
  %31 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %32 = call i32 @__i2c_dw_disable_nowait(%struct.dw_i2c_dev* %31)
  %33 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DW_IC_SAR, align 4
  %38 = call i32 @dw_writel(%struct.dw_i2c_dev* %33, i32 %36, i32 %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %41 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %40, i32 0, i32 7
  store %struct.i2c_client* %39, %struct.i2c_client** %41, align 8
  %42 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %43 = call i32 @__i2c_dw_enable(%struct.dw_i2c_dev* %42)
  %44 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %45 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %44, i32 0, i32 6
  store i64 0, i64* %45, align 8
  %46 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %47 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %46, i32 0, i32 5
  store i64 0, i64* %47, align 8
  %48 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %49 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %51 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @STATUS_IDLE, align 4
  %53 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %54 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %56 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %4, align 8
  %58 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %26, %23, %13
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.dw_i2c_dev* @i2c_get_adapdata(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @__i2c_dw_disable_nowait(%struct.dw_i2c_dev*) #1

declare dso_local i32 @dw_writel(%struct.dw_i2c_dev*, i32, i32) #1

declare dso_local i32 @__i2c_dw_enable(%struct.dw_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
