; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_poll_fw_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_poll_fw_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EIP197_FW_FPP_READY = common dso_local global i64 0, align 8
@EIP197_FW_PUE_READY = common dso_local global i64 0, align 8
@EIP197_FW_START_POLLCNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"FW(%d) for PE %d failed to start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*, i32)* @poll_fw_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_fw_ready(%struct.safexcel_crypto_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.safexcel_crypto_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @EIP197_FW_FPP_READY, align 8
  store i64 %13, i64* %9, align 8
  br label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @EIP197_FW_PUE_READY, align 8
  store i64 %15, i64* %9, align 8
  br label %16

16:                                               ; preds = %14, %12
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %56, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %20 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @EIP197_PE_ICE_SCRATCH_RAM(i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i32, i32* @EIP197_FW_START_POLLCNT, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %42, %24
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %33 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %32)
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl_relaxed(i64 %37)
  %39 = icmp ne i32 %38, 1
  br label %40

40:                                               ; preds = %31, %28
  %41 = phi i1 [ false, %28 ], [ %39, %31 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %7, align 4
  br label %28

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %4, align 8
  %50 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  store i32 0, i32* %3, align 4
  br label %60

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %17

59:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @EIP197_PE_ICE_SCRATCH_RAM(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @EIP197_PE(%struct.safexcel_crypto_priv*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
