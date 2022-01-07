; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_set_window_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_set_window_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_dp = type { i32 }
%struct.ipu_flow = type { i64, %struct.ipu_dp_priv* }
%struct.ipu_dp_priv = type { i32 }

@DP_FG_POS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_dp_set_window_pos(%struct.ipu_dp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipu_dp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipu_flow*, align 8
  %8 = alloca %struct.ipu_dp_priv*, align 8
  store %struct.ipu_dp* %0, %struct.ipu_dp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ipu_dp*, %struct.ipu_dp** %4, align 8
  %10 = call %struct.ipu_flow* @to_flow(%struct.ipu_dp* %9)
  store %struct.ipu_flow* %10, %struct.ipu_flow** %7, align 8
  %11 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %12 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %11, i32 0, i32 1
  %13 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %12, align 8
  store %struct.ipu_dp_priv* %13, %struct.ipu_dp_priv** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, 16
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %19 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DP_FG_POS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %25 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ipu_srm_dp_update(i32 %26, i32 1)
  ret i32 0
}

declare dso_local %struct.ipu_flow* @to_flow(%struct.ipu_dp*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ipu_srm_dp_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
