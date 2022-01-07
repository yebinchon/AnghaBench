; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-smfc.c_ipu_smfc_set_burstsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-smfc.c_ipu_smfc_set_burstsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_smfc = type { i32, %struct.ipu_smfc_priv* }
%struct.ipu_smfc_priv = type { i32, i64 }

@SMFC_BS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_smfc_set_burstsize(%struct.ipu_smfc* %0, i32 %1) #0 {
  %3 = alloca %struct.ipu_smfc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_smfc_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipu_smfc* %0, %struct.ipu_smfc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ipu_smfc*, %struct.ipu_smfc** %3, align 8
  %10 = getelementptr inbounds %struct.ipu_smfc, %struct.ipu_smfc* %9, i32 0, i32 1
  %11 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %10, align 8
  store %struct.ipu_smfc_priv* %11, %struct.ipu_smfc_priv** %5, align 8
  %12 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %5, align 8
  %13 = getelementptr inbounds %struct.ipu_smfc_priv, %struct.ipu_smfc_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.ipu_smfc*, %struct.ipu_smfc** %3, align 8
  %17 = getelementptr inbounds %struct.ipu_smfc, %struct.ipu_smfc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %18, 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %5, align 8
  %21 = getelementptr inbounds %struct.ipu_smfc_priv, %struct.ipu_smfc_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SMFC_BS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = shl i32 15, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %5, align 8
  %38 = getelementptr inbounds %struct.ipu_smfc_priv, %struct.ipu_smfc_priv* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SMFC_BS, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.ipu_smfc_priv*, %struct.ipu_smfc_priv** %5, align 8
  %44 = getelementptr inbounds %struct.ipu_smfc_priv, %struct.ipu_smfc_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
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
