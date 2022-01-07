; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-hix5hd2.c_hix5hd2_write_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-hix5hd2.c_hix5hd2_write_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_i2c_priv = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@HIX5I2C_TXR = common dso_local global i64 0, align 8
@I2C_WRITE = common dso_local global i32 0, align 4
@HIX5I2C_COM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hix5hd2_i2c_priv*)* @hix5hd2_write_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hix5hd2_write_handle(%struct.hix5hd2_i2c_priv* %0) #0 {
  %2 = alloca %struct.hix5hd2_i2c_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.hix5hd2_i2c_priv* %0, %struct.hix5hd2_i2c_priv** %2, align 8
  %4 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %2, align 8
  %5 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %2, align 8
  %10 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %2, align 8
  %15 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i32, i32* %13, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %2, align 8
  %23 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HIX5I2C_TXR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 %21, i64 %26)
  %28 = load i32, i32* @I2C_WRITE, align 4
  %29 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %2, align 8
  %30 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HIX5I2C_COM, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel_relaxed(i32 %28, i64 %33)
  br label %38

35:                                               ; preds = %1
  %36 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %2, align 8
  %37 = call i32 @hix5hd2_rw_handle_stop(%struct.hix5hd2_i2c_priv* %36)
  br label %38

38:                                               ; preds = %35, %8
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @hix5hd2_rw_handle_stop(%struct.hix5hd2_i2c_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
