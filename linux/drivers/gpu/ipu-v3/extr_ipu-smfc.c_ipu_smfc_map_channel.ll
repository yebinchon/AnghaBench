; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-smfc.c_ipu_smfc_map_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-smfc.c_ipu_smfc_map_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_smfc = type { i32, %struct.ipu_smfc_priv* }
%struct.ipu_smfc_priv = type { i32, i64 }

@SMFC_MAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_smfc_map_channel(%struct.ipu_smfc* %0, i32 %1, i32 %2) #0 {
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
  %21 = mul nsw i32 %20, 3
  store i32 %21, i32* %10, align 4
  %22 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %7, align 8
  %23 = getelementptr inbounds %struct.ipu_smfc_priv, %struct.ipu_smfc_priv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SMFC_MAP, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = shl i32 7, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 2
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %7, align 8
  %43 = getelementptr inbounds %struct.ipu_smfc_priv, %struct.ipu_smfc_priv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SMFC_MAP, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %7, align 8
  %49 = getelementptr inbounds %struct.ipu_smfc_priv, %struct.ipu_smfc_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
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
