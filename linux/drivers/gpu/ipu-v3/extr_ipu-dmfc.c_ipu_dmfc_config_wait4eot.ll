; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dmfc.c_ipu_dmfc_config_wait4eot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dmfc.c_ipu_dmfc_config_wait4eot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmfc_channel = type { i32, %struct.TYPE_2__*, %struct.ipu_dmfc_priv* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ipu_dmfc_priv = type { i32, i64 }

@DMFC_GENERAL1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_dmfc_config_wait4eot(%struct.dmfc_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.dmfc_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_dmfc_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.dmfc_channel* %0, %struct.dmfc_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dmfc_channel*, %struct.dmfc_channel** %3, align 8
  %8 = getelementptr inbounds %struct.dmfc_channel, %struct.dmfc_channel* %7, i32 0, i32 2
  %9 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %8, align 8
  store %struct.ipu_dmfc_priv* %9, %struct.ipu_dmfc_priv** %5, align 8
  %10 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %5, align 8
  %11 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %5, align 8
  %14 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DMFC_GENERAL1, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.dmfc_channel*, %struct.dmfc_channel** %3, align 8
  %20 = getelementptr inbounds %struct.dmfc_channel, %struct.dmfc_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 64
  %23 = mul nsw i32 %22, 4
  %24 = load i32, i32* %4, align 4
  %25 = sdiv i32 %23, %24
  %26 = load %struct.dmfc_channel*, %struct.dmfc_channel** %3, align 8
  %27 = getelementptr inbounds %struct.dmfc_channel, %struct.dmfc_channel* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %25, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.dmfc_channel*, %struct.dmfc_channel** %3, align 8
  %34 = getelementptr inbounds %struct.dmfc_channel, %struct.dmfc_channel* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %51

41:                                               ; preds = %2
  %42 = load %struct.dmfc_channel*, %struct.dmfc_channel** %3, align 8
  %43 = getelementptr inbounds %struct.dmfc_channel, %struct.dmfc_channel* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %41, %32
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %5, align 8
  %54 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DMFC_GENERAL1, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %5, align 8
  %60 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
