; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda9950_priv = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@REG_CCR = common dso_local global i32 0, align 4
@CCR_RESET = common dso_local global i32 0, align 4
@CEC_LOG_ADDR_INVALID = common dso_local global i32 0, align 4
@CCR_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda9950_priv*)* @tda9950_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9950_open(%struct.tda9950_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tda9950_priv*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.tda9950_priv* %0, %struct.tda9950_priv** %3, align 8
  %6 = load %struct.tda9950_priv*, %struct.tda9950_priv** %3, align 8
  %7 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %6, i32 0, i32 1
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.tda9950_priv*, %struct.tda9950_priv** %3, align 8
  %10 = call i32 @tda9950_glue_open(%struct.tda9950_priv* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load i32, i32* @REG_CCR, align 4
  %18 = load i32, i32* @CCR_RESET, align 4
  %19 = call i32 @tda9950_write(%struct.i2c_client* %16, i32 %17, i32 %18)
  %20 = call i32 @msleep(i32 250)
  %21 = load %struct.tda9950_priv*, %struct.tda9950_priv** %3, align 8
  %22 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CEC_LOG_ADDR_INVALID, align 4
  %25 = call i32 @tda9950_cec_adap_log_addr(i32 %23, i32 %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load i32, i32* @REG_CCR, align 4
  %28 = load i32, i32* @CCR_ON, align 4
  %29 = call i32 @tda9950_write(%struct.i2c_client* %26, i32 %27, i32 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %15, %13
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @tda9950_glue_open(%struct.tda9950_priv*) #1

declare dso_local i32 @tda9950_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @tda9950_cec_adap_log_addr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
