; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_init_register_offsets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_init_register_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32, %struct.safexcel_register_offsets }
%struct.safexcel_register_offsets = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SAFEXCEL_HW_EIP197 = common dso_local global i32 0, align 4
@EIP197_HIA_AIC_BASE = common dso_local global i32 0, align 4
@EIP197_HIA_AIC_G_BASE = common dso_local global i32 0, align 4
@EIP197_HIA_AIC_R_BASE = common dso_local global i32 0, align 4
@EIP197_HIA_AIC_xDR_BASE = common dso_local global i32 0, align 4
@EIP197_HIA_DFE_BASE = common dso_local global i32 0, align 4
@EIP197_HIA_DFE_THR_BASE = common dso_local global i32 0, align 4
@EIP197_HIA_DSE_BASE = common dso_local global i32 0, align 4
@EIP197_HIA_DSE_THR_BASE = common dso_local global i32 0, align 4
@EIP197_HIA_GEN_CFG_BASE = common dso_local global i32 0, align 4
@EIP197_PE_BASE = common dso_local global i32 0, align 4
@EIP197_GLOBAL_BASE = common dso_local global i32 0, align 4
@EIP97_HIA_AIC_BASE = common dso_local global i32 0, align 4
@EIP97_HIA_AIC_G_BASE = common dso_local global i32 0, align 4
@EIP97_HIA_AIC_R_BASE = common dso_local global i32 0, align 4
@EIP97_HIA_AIC_xDR_BASE = common dso_local global i32 0, align 4
@EIP97_HIA_DFE_BASE = common dso_local global i32 0, align 4
@EIP97_HIA_DFE_THR_BASE = common dso_local global i32 0, align 4
@EIP97_HIA_DSE_BASE = common dso_local global i32 0, align 4
@EIP97_HIA_DSE_THR_BASE = common dso_local global i32 0, align 4
@EIP97_HIA_GEN_CFG_BASE = common dso_local global i32 0, align 4
@EIP97_PE_BASE = common dso_local global i32 0, align 4
@EIP97_GLOBAL_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safexcel_crypto_priv*)* @safexcel_init_register_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safexcel_init_register_offsets(%struct.safexcel_crypto_priv* %0) #0 {
  %2 = alloca %struct.safexcel_crypto_priv*, align 8
  %3 = alloca %struct.safexcel_register_offsets*, align 8
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %2, align 8
  %4 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %5 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %4, i32 0, i32 1
  store %struct.safexcel_register_offsets* %5, %struct.safexcel_register_offsets** %3, align 8
  %6 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %2, align 8
  %7 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SAFEXCEL_HW_EIP197, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  %13 = load i32, i32* @EIP197_HIA_AIC_BASE, align 4
  %14 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %15 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %14, i32 0, i32 10
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @EIP197_HIA_AIC_G_BASE, align 4
  %17 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %18 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @EIP197_HIA_AIC_R_BASE, align 4
  %20 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %21 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @EIP197_HIA_AIC_xDR_BASE, align 4
  %23 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %24 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @EIP197_HIA_DFE_BASE, align 4
  %26 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %27 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @EIP197_HIA_DFE_THR_BASE, align 4
  %29 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %30 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @EIP197_HIA_DSE_BASE, align 4
  %32 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %33 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @EIP197_HIA_DSE_THR_BASE, align 4
  %35 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %36 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @EIP197_HIA_GEN_CFG_BASE, align 4
  %38 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %39 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @EIP197_PE_BASE, align 4
  %41 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %42 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @EIP197_GLOBAL_BASE, align 4
  %44 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %45 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %80

46:                                               ; preds = %1
  %47 = load i32, i32* @EIP97_HIA_AIC_BASE, align 4
  %48 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %49 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @EIP97_HIA_AIC_G_BASE, align 4
  %51 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %52 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @EIP97_HIA_AIC_R_BASE, align 4
  %54 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %55 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @EIP97_HIA_AIC_xDR_BASE, align 4
  %57 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %58 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @EIP97_HIA_DFE_BASE, align 4
  %60 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %61 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @EIP97_HIA_DFE_THR_BASE, align 4
  %63 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %64 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @EIP97_HIA_DSE_BASE, align 4
  %66 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %67 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @EIP97_HIA_DSE_THR_BASE, align 4
  %69 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %70 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @EIP97_HIA_GEN_CFG_BASE, align 4
  %72 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %73 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @EIP97_PE_BASE, align 4
  %75 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %76 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @EIP97_GLOBAL_BASE, align 4
  %78 = load %struct.safexcel_register_offsets*, %struct.safexcel_register_offsets** %3, align 8
  %79 = getelementptr inbounds %struct.safexcel_register_offsets, %struct.safexcel_register_offsets* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %46, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
