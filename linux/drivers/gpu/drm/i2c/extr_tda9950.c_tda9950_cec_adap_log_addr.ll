; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_cec_adap_log_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_cec_adap_log_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.tda9950_priv* }
%struct.tda9950_priv = type { i32, i32 }

@CEC_LOG_ADDR_INVALID = common dso_local global i64 0, align 8
@REG_ACKH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i64)* @tda9950_cec_adap_log_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9950_cec_adap_log_addr(%struct.cec_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tda9950_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i64], align 16
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %8, i32 0, i32 0
  %10 = load %struct.tda9950_priv*, %struct.tda9950_priv** %9, align 8
  store %struct.tda9950_priv* %10, %struct.tda9950_priv** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @CEC_LOG_ADDR_INVALID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.tda9950_priv*, %struct.tda9950_priv** %5, align 8
  %16 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  store i32 0, i32* %6, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @BIT(i64 %18)
  %20 = load %struct.tda9950_priv*, %struct.tda9950_priv** %5, align 8
  %21 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 32767
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 %29, i64* %30, align 16
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  store i64 %32, i64* %33, align 8
  %34 = load %struct.tda9950_priv*, %struct.tda9950_priv** %5, align 8
  %35 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @REG_ACKH, align 4
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %39 = call i32 @tda9950_write_range(i32 %36, i32 %37, i64* %38, i32 2)
  ret i32 %39
}

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @tda9950_write_range(i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
