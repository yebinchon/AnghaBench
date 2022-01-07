; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-hix5hd2.c_hix5hd2_read_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-hix5hd2.c_hix5hd2_read_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_i2c_priv = type { i32, i64 }

@I2C_READ = common dso_local global i32 0, align 4
@I2C_NO_ACK = common dso_local global i32 0, align 4
@HIX5I2C_COM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hix5hd2_i2c_priv*)* @hix5hd2_read_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hix5hd2_read_handle(%struct.hix5hd2_i2c_priv* %0) #0 {
  %2 = alloca %struct.hix5hd2_i2c_priv*, align 8
  store %struct.hix5hd2_i2c_priv* %0, %struct.hix5hd2_i2c_priv** %2, align 8
  %3 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %2, align 8
  %4 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* @I2C_READ, align 4
  %9 = load i32, i32* @I2C_NO_ACK, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %2, align 8
  %12 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HIX5I2C_COM, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel_relaxed(i32 %10, i64 %15)
  br label %34

17:                                               ; preds = %1
  %18 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %2, align 8
  %19 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* @I2C_READ, align 4
  %24 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %2, align 8
  %25 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HIX5I2C_COM, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel_relaxed(i32 %23, i64 %28)
  br label %33

30:                                               ; preds = %17
  %31 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %2, align 8
  %32 = call i32 @hix5hd2_rw_handle_stop(%struct.hix5hd2_i2c_priv* %31)
  br label %33

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %33, %7
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
