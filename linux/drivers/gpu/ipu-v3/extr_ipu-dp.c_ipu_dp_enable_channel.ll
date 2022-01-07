; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_enable_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_enable_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_dp = type { i32 }
%struct.ipu_flow = type { i64, %struct.ipu_dp_priv* }
%struct.ipu_dp_priv = type { i32, i32 }

@DP_COM_CONF = common dso_local global i64 0, align 8
@DP_COM_CONF_FG_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_dp_enable_channel(%struct.ipu_dp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipu_dp*, align 8
  %4 = alloca %struct.ipu_flow*, align 8
  %5 = alloca %struct.ipu_dp_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.ipu_dp* %0, %struct.ipu_dp** %3, align 8
  %7 = load %struct.ipu_dp*, %struct.ipu_dp** %3, align 8
  %8 = call %struct.ipu_flow* @to_flow(%struct.ipu_dp* %7)
  store %struct.ipu_flow* %8, %struct.ipu_flow** %4, align 8
  %9 = load %struct.ipu_flow*, %struct.ipu_flow** %4, align 8
  %10 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %9, i32 0, i32 1
  %11 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %10, align 8
  store %struct.ipu_dp_priv* %11, %struct.ipu_dp_priv** %5, align 8
  %12 = load %struct.ipu_dp*, %struct.ipu_dp** %3, align 8
  %13 = getelementptr inbounds %struct.ipu_dp, %struct.ipu_dp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

17:                                               ; preds = %1
  %18 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %5, align 8
  %19 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.ipu_flow*, %struct.ipu_flow** %4, align 8
  %22 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DP_COM_CONF, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @DP_COM_CONF_FG_EN, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ipu_flow*, %struct.ipu_flow** %4, align 8
  %32 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DP_COM_CONF, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %5, align 8
  %38 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ipu_srm_dp_update(i32 %39, i32 1)
  %41 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %5, align 8
  %42 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %17, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
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
