; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_write_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_write_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i64 }
%struct.firmware = type { i32, i64 }

@EIP197_CLASSIFICATION_RAMS = common dso_local global i64 0, align 8
@EIP197_FW_TERMINAL_NOPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*, %struct.firmware*)* @eip197_write_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eip197_write_firmware(%struct.safexcel_crypto_priv* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.safexcel_crypto_priv*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  %7 = load %struct.firmware*, %struct.firmware** %4, align 8
  %8 = getelementptr inbounds %struct.firmware, %struct.firmware* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %37, %2
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.firmware*, %struct.firmware** %4, align 8
  %15 = getelementptr inbounds %struct.firmware, %struct.firmware* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 4
  %19 = icmp ult i64 %13, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %11
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be32_to_cpu(i32 %25)
  %27 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %28 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EIP197_CLASSIFICATION_RAMS, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = add i64 %31, %34
  %36 = call i32 @writel(i32 %26, i64 %35)
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %11

40:                                               ; preds = %11
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @EIP197_FW_TERMINAL_NOPS, align 4
  %43 = sub nsw i32 %41, %42
  ret i32 %43
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
