; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_check_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_check_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxcpld_i2c_priv = type { i32 }

@MLXCPLD_LPCI2C_STATUS_REG = common dso_local global i32 0, align 4
@MLXCPLD_LPCI2C_TRANS_END = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxcpld_i2c_priv*)* @mlxcpld_i2c_check_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxcpld_i2c_check_busy(%struct.mlxcpld_i2c_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxcpld_i2c_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.mlxcpld_i2c_priv* %0, %struct.mlxcpld_i2c_priv** %3, align 8
  %5 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %3, align 8
  %6 = load i32, i32* @MLXCPLD_LPCI2C_STATUS_REG, align 4
  %7 = call i32 @mlxcpld_i2c_read_comm(%struct.mlxcpld_i2c_priv* %5, i32 %6, i32* %4, i32 1)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MLXCPLD_LPCI2C_TRANS_END, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %13, %12
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @mlxcpld_i2c_read_comm(%struct.mlxcpld_i2c_priv*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
