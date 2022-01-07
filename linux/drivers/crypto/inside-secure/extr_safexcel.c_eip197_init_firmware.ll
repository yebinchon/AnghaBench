; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_init_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_eip197_init_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EIP197_PE_ICE_SCRATCH_CTRL_CHANGE_TIMER = common dso_local global i32 0, align 4
@EIP197_PE_ICE_SCRATCH_CTRL_TIMER_EN = common dso_local global i32 0, align 4
@EIP197_PE_ICE_SCRATCH_CTRL_SCRATCH_ACCESS = common dso_local global i32 0, align 4
@EIP197_PE_ICE_SCRATCH_CTRL_CHANGE_ACCESS = common dso_local global i32 0, align 4
@EIP197_NUM_OF_SCRATCH_BLOCKS = common dso_local global i32 0, align 4
@EIP197_PE_ICE_x_CTRL_SW_RESET = common dso_local global i32 0, align 4
@EIP197_PE_ICE_x_CTRL_CLR_ECC_CORR = common dso_local global i32 0, align 4
@EIP197_PE_ICE_x_CTRL_CLR_ECC_NON_CORR = common dso_local global i32 0, align 4
@EIP197_PE_ICE_RAM_CTRL_FPP_PROG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safexcel_crypto_priv*)* @eip197_init_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eip197_init_firmware(%struct.safexcel_crypto_priv* %0) #0 {
  %2 = alloca %struct.safexcel_crypto_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %96, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %9 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %99

13:                                               ; preds = %6
  %14 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %15 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @EIP197_PE_ICE_PUTF_CTRL(i32 %16)
  %18 = add nsw i64 %15, %17
  %19 = call i32 @writel(i32 3, i64 %18)
  %20 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %21 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @EIP197_PE_ICE_PPTF_CTRL(i32 %22)
  %24 = add nsw i64 %21, %23
  %25 = call i32 @writel(i32 0, i64 %24)
  %26 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %27 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @EIP197_PE_ICE_SCRATCH_CTRL(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @EIP197_PE_ICE_SCRATCH_CTRL_CHANGE_TIMER, align 4
  %33 = load i32, i32* @EIP197_PE_ICE_SCRATCH_CTRL_TIMER_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @EIP197_PE_ICE_SCRATCH_CTRL_SCRATCH_ACCESS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @EIP197_PE_ICE_SCRATCH_CTRL_CHANGE_ACCESS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %43 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @EIP197_PE_ICE_SCRATCH_CTRL(i32 %44)
  %46 = add nsw i64 %43, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %63, %13
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @EIP197_NUM_OF_SCRATCH_BLOCKS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %54 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i64 @EIP197_PE_ICE_SCRATCH_RAM(i32 %55)
  %57 = add nsw i64 %54, %56
  %58 = load i32, i32* %4, align 4
  %59 = shl i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = call i32 @writel(i32 0, i64 %61)
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %48

66:                                               ; preds = %48
  %67 = load i32, i32* @EIP197_PE_ICE_x_CTRL_SW_RESET, align 4
  %68 = load i32, i32* @EIP197_PE_ICE_x_CTRL_CLR_ECC_CORR, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @EIP197_PE_ICE_x_CTRL_CLR_ECC_NON_CORR, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %73 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %72)
  %74 = load i32, i32* %3, align 4
  %75 = call i64 @EIP197_PE_ICE_FPP_CTRL(i32 %74)
  %76 = add nsw i64 %73, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load i32, i32* @EIP197_PE_ICE_x_CTRL_SW_RESET, align 4
  %79 = load i32, i32* @EIP197_PE_ICE_x_CTRL_CLR_ECC_CORR, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @EIP197_PE_ICE_x_CTRL_CLR_ECC_NON_CORR, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %84 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %83)
  %85 = load i32, i32* %3, align 4
  %86 = call i64 @EIP197_PE_ICE_PUE_CTRL(i32 %85)
  %87 = add nsw i64 %84, %86
  %88 = call i32 @writel(i32 %82, i64 %87)
  %89 = load i32, i32* @EIP197_PE_ICE_RAM_CTRL_FPP_PROG_EN, align 4
  %90 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %91 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %90)
  %92 = load i32, i32* %3, align 4
  %93 = call i64 @EIP197_PE_ICE_RAM_CTRL(i32 %92)
  %94 = add nsw i64 %91, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  br label %96

96:                                               ; preds = %66
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %6

99:                                               ; preds = %6
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @EIP197_PE(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @EIP197_PE_ICE_PUTF_CTRL(i32) #1

declare dso_local i64 @EIP197_PE_ICE_PPTF_CTRL(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @EIP197_PE_ICE_SCRATCH_CTRL(i32) #1

declare dso_local i64 @EIP197_PE_ICE_SCRATCH_RAM(i32) #1

declare dso_local i64 @EIP197_PE_ICE_FPP_CTRL(i32) #1

declare dso_local i64 @EIP197_PE_ICE_PUE_CTRL(i32) #1

declare dso_local i64 @EIP197_PE_ICE_RAM_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
