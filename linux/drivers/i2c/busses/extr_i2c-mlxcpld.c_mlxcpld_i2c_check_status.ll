; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxcpld_i2c_priv = type { i32 }

@MLXCPLD_LPCI2C_STATUS_REG = common dso_local global i32 0, align 4
@MLXCPLD_LPCI2C_TRANS_END = common dso_local global i32 0, align 4
@MLXCPLD_LPCI2C_STATUS_NACK = common dso_local global i32 0, align 4
@MLXCPLD_LPCI2C_NACK_IND = common dso_local global i32 0, align 4
@MLXCPLD_LPCI2C_ACK_IND = common dso_local global i32 0, align 4
@MLXCPLD_LPCI2C_NO_IND = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxcpld_i2c_priv*, i32*)* @mlxcpld_i2c_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxcpld_i2c_check_status(%struct.mlxcpld_i2c_priv* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxcpld_i2c_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxcpld_i2c_priv* %0, %struct.mlxcpld_i2c_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %4, align 8
  %8 = load i32, i32* @MLXCPLD_LPCI2C_STATUS_REG, align 4
  %9 = call i32 @mlxcpld_i2c_read_comm(%struct.mlxcpld_i2c_priv* %7, i32 %8, i32* %6, i32 1)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MLXCPLD_LPCI2C_TRANS_END, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MLXCPLD_LPCI2C_STATUS_NACK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @MLXCPLD_LPCI2C_NACK_IND, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  br label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @MLXCPLD_LPCI2C_ACK_IND, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19
  store i32 0, i32* %3, align 4
  br label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @MLXCPLD_LPCI2C_NO_IND, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %25
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @mlxcpld_i2c_read_comm(%struct.mlxcpld_i2c_priv*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
