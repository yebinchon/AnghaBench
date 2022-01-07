; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_start_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_start_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EIP197_PE_ICE_UENG_INIT_ALIGN_MASK = common dso_local global i32 0, align 4
@EIP197_PE_ICE_UENG_DEBUG_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safexcel_crypto_priv*, i32, i32, i32)* @eip197_start_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eip197_start_firmware(%struct.safexcel_crypto_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.safexcel_crypto_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %64, %4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %15 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %12
  %20 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %21 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %20)
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @EIP197_PE_ICE_RAM_CTRL(i32 %22)
  %24 = add nsw i64 %21, %23
  %25 = call i32 @writel(i32 0, i64 %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  br label %37

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* @EIP197_PE_ICE_UENG_INIT_ALIGN_MASK, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @EIP197_PE_ICE_UENG_START_OFFSET(i32 %33)
  %35 = load i32, i32* @EIP197_PE_ICE_UENG_DEBUG_RESET, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %29, %28
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %40 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %39)
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @EIP197_PE_ICE_FPP_CTRL(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %56

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* @EIP197_PE_ICE_UENG_INIT_ALIGN_MASK, align 4
  %52 = and i32 %50, %51
  %53 = call i32 @EIP197_PE_ICE_UENG_START_OFFSET(i32 %52)
  %54 = load i32, i32* @EIP197_PE_ICE_UENG_DEBUG_RESET, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %48, %47
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %59 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %58)
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @EIP197_PE_ICE_PUE_CTRL(i32 %60)
  %62 = add nsw i64 %59, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %12

67:                                               ; preds = %12
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 1, i32* %5, align 4
  br label %82

71:                                               ; preds = %67
  %72 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %73 = call i32 @poll_fw_ready(%struct.safexcel_crypto_priv* %72, i32 1)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %82

76:                                               ; preds = %71
  %77 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %78 = call i32 @poll_fw_ready(%struct.safexcel_crypto_priv* %77, i32 0)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %82

81:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %80, %75, %70
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @EIP197_PE(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @EIP197_PE_ICE_RAM_CTRL(i32) #1

declare dso_local i32 @EIP197_PE_ICE_UENG_START_OFFSET(i32) #1

declare dso_local i64 @EIP197_PE_ICE_FPP_CTRL(i32) #1

declare dso_local i64 @EIP197_PE_ICE_PUE_CTRL(i32) #1

declare dso_local i32 @poll_fw_ready(%struct.safexcel_crypto_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
