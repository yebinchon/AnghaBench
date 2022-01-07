; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_disable_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_disable_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_dp = type { i32, i32 }
%struct.ipu_flow = type { i64, %struct.ipu_dp_priv* }
%struct.ipu_dp_priv = type { i32, i32 }

@IPUV3_COLORSPACE_UNKNOWN = common dso_local global i32 0, align 4
@DP_COM_CONF = common dso_local global i64 0, align 8
@DP_COM_CONF_CSC_DEF_MASK = common dso_local global i32 0, align 4
@DP_COM_CONF_CSC_DEF_BOTH = common dso_local global i32 0, align 4
@DP_COM_CONF_CSC_DEF_BG = common dso_local global i32 0, align 4
@DP_COM_CONF_FG_EN = common dso_local global i32 0, align 4
@DP_FG_POS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_dp_disable_channel(%struct.ipu_dp* %0, i32 %1) #0 {
  %3 = alloca %struct.ipu_dp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_flow*, align 8
  %6 = alloca %struct.ipu_dp_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipu_dp* %0, %struct.ipu_dp** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ipu_dp*, %struct.ipu_dp** %3, align 8
  %10 = call %struct.ipu_flow* @to_flow(%struct.ipu_dp* %9)
  store %struct.ipu_flow* %10, %struct.ipu_flow** %5, align 8
  %11 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %12 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %11, i32 0, i32 1
  %13 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %12, align 8
  store %struct.ipu_dp_priv* %13, %struct.ipu_dp_priv** %6, align 8
  %14 = load i32, i32* @IPUV3_COLORSPACE_UNKNOWN, align 4
  %15 = load %struct.ipu_dp*, %struct.ipu_dp** %3, align 8
  %16 = getelementptr inbounds %struct.ipu_dp, %struct.ipu_dp* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ipu_dp*, %struct.ipu_dp** %3, align 8
  %18 = getelementptr inbounds %struct.ipu_dp, %struct.ipu_dp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %76

22:                                               ; preds = %2
  %23 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %6, align 8
  %24 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %27 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DP_COM_CONF, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @DP_COM_CONF_CSC_DEF_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @DP_COM_CONF_CSC_DEF_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @DP_COM_CONF_CSC_DEF_BOTH, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %22
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @DP_COM_CONF_CSC_DEF_BG, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %22
  %47 = load i32, i32* @DP_COM_CONF_CSC_DEF_BG, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @DP_COM_CONF_FG_EN, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %57 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DP_COM_CONF, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  %62 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %63 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DP_FG_POS, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 0, i64 %66)
  %68 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %6, align 8
  %69 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @ipu_srm_dp_update(i32 %70, i32 %71)
  %73 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %6, align 8
  %74 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  br label %76

76:                                               ; preds = %50, %21
  ret void
}

declare dso_local %struct.ipu_flow* @to_flow(%struct.ipu_dp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ipu_srm_dp_update(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
