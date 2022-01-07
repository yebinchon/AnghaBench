; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_wait_for_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_wait_for_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxcpld_i2c_priv = type { i32 }

@MLXCPLD_I2C_POLL_TIME = common dso_local global i32 0, align 4
@MLXCPLD_I2C_XFER_TO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxcpld_i2c_priv*)* @mlxcpld_i2c_wait_for_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxcpld_i2c_wait_for_free(%struct.mlxcpld_i2c_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxcpld_i2c_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.mlxcpld_i2c_priv* %0, %struct.mlxcpld_i2c_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %3, align 8
  %7 = call i32 @mlxcpld_i2c_check_busy(%struct.mlxcpld_i2c_priv* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  br label %22

10:                                               ; preds = %5
  %11 = load i32, i32* @MLXCPLD_I2C_POLL_TIME, align 4
  %12 = sdiv i32 %11, 2
  %13 = load i32, i32* @MLXCPLD_I2C_POLL_TIME, align 4
  %14 = call i32 @usleep_range(i32 %12, i32 %13)
  %15 = load i32, i32* @MLXCPLD_I2C_POLL_TIME, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MLXCPLD_I2C_XFER_TO, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %5, label %22

22:                                               ; preds = %18, %9
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MLXCPLD_I2C_XFER_TO, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @mlxcpld_i2c_check_busy(%struct.mlxcpld_i2c_priv*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
