; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cros-ec-tunnel.c_ec_i2c_count_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cros-ec-tunnel.c_ec_i2c_count_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_msg = type { i32, i64 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_msg*, i32)* @ec_i2c_count_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_i2c_count_message(%struct.i2c_msg* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_msg* %0, %struct.i2c_msg** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 4, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %40, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i64 %21
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @I2C_M_RD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %18
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i64 %31
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %28, %18
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %14

43:                                               ; preds = %14
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
