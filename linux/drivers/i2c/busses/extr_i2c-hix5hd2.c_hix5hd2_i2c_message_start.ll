; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-hix5hd2.c_hix5hd2_i2c_message_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-hix5hd2.c_hix5hd2_i2c_message_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_i2c_priv = type { i32, i64, i32 }

@HIX5I2C_TXR = common dso_local global i64 0, align 8
@I2C_WRITE = common dso_local global i32 0, align 4
@I2C_START = common dso_local global i32 0, align 4
@HIX5I2C_COM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hix5hd2_i2c_priv*, i32)* @hix5hd2_i2c_message_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hix5hd2_i2c_message_start(%struct.hix5hd2_i2c_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.hix5hd2_i2c_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hix5hd2_i2c_priv* %0, %struct.hix5hd2_i2c_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %3, align 8
  %7 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %3, align 8
  %11 = call i32 @hix5hd2_i2c_clr_all_irq(%struct.hix5hd2_i2c_priv* %10)
  %12 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %3, align 8
  %13 = call i32 @hix5hd2_i2c_enable_irq(%struct.hix5hd2_i2c_priv* %12)
  %14 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %3, align 8
  %15 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @i2c_8bit_addr_from_msg(i32 %16)
  %18 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %3, align 8
  %19 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HIX5I2C_TXR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel_relaxed(i32 %17, i64 %22)
  %24 = load i32, i32* @I2C_WRITE, align 4
  %25 = load i32, i32* @I2C_START, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %3, align 8
  %28 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HIX5I2C_COM, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel_relaxed(i32 %26, i64 %31)
  %33 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %3, align 8
  %34 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hix5hd2_i2c_clr_all_irq(%struct.hix5hd2_i2c_priv*) #1

declare dso_local i32 @hix5hd2_i2c_enable_irq(%struct.hix5hd2_i2c_priv*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
