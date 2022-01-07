; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-smfc.c_ipu_smfc_set_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-smfc.c_ipu_smfc_set_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_smfc = type { i32, %struct.ipu_smfc_priv* }
%struct.ipu_smfc_priv = type { i32, i64 }

@SMFC_WMC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_smfc_set_watermark(%struct.ipu_smfc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipu_smfc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipu_smfc_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ipu_smfc* %0, %struct.ipu_smfc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ipu_smfc*, %struct.ipu_smfc** %4, align 8
  %12 = getelementptr inbounds %struct.ipu_smfc, %struct.ipu_smfc* %11, i32 0, i32 1
  %13 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %12, align 8
  store %struct.ipu_smfc_priv* %13, %struct.ipu_smfc_priv** %7, align 8
  %14 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %7, align 8
  %15 = getelementptr inbounds %struct.ipu_smfc_priv, %struct.ipu_smfc_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.ipu_smfc*, %struct.ipu_smfc** %4, align 8
  %19 = getelementptr inbounds %struct.ipu_smfc, %struct.ipu_smfc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %20, 6
  %22 = load %struct.ipu_smfc*, %struct.ipu_smfc** %4, align 8
  %23 = getelementptr inbounds %struct.ipu_smfc, %struct.ipu_smfc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 1
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 4, i32 0
  %28 = add nsw i32 %21, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %7, align 8
  %30 = getelementptr inbounds %struct.ipu_smfc_priv, %struct.ipu_smfc_priv* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SMFC_WMC, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = shl i32 63, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 %40, 3
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %7, align 8
  %50 = getelementptr inbounds %struct.ipu_smfc_priv, %struct.ipu_smfc_priv* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SMFC_WMC, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %7, align 8
  %56 = getelementptr inbounds %struct.ipu_smfc_priv, %struct.ipu_smfc_priv* %55, i32 0, i32 0
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
