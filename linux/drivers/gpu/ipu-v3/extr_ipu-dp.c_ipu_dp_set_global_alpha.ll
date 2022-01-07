; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_set_global_alpha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_set_global_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_dp = type { i32 }
%struct.ipu_flow = type { i64, %struct.ipu_dp_priv* }
%struct.ipu_dp_priv = type { i32, i32 }

@DP_COM_CONF = common dso_local global i64 0, align 8
@DP_COM_CONF_GWSEL = common dso_local global i32 0, align 4
@DP_GRAPH_WIND_CTRL = common dso_local global i64 0, align 8
@DP_COM_CONF_GWAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_dp_set_global_alpha(%struct.ipu_dp* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ipu_dp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipu_flow*, align 8
  %10 = alloca %struct.ipu_dp_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.ipu_dp* %0, %struct.ipu_dp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ipu_dp*, %struct.ipu_dp** %5, align 8
  %13 = call %struct.ipu_flow* @to_flow(%struct.ipu_dp* %12)
  store %struct.ipu_flow* %13, %struct.ipu_flow** %9, align 8
  %14 = load %struct.ipu_flow*, %struct.ipu_flow** %9, align 8
  %15 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %14, i32 0, i32 1
  %16 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %15, align 8
  store %struct.ipu_dp_priv* %16, %struct.ipu_dp_priv** %10, align 8
  %17 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %10, align 8
  %18 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.ipu_flow*, %struct.ipu_flow** %9, align 8
  %21 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DP_COM_CONF, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load i32, i32* @DP_COM_CONF_GWSEL, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %11, align 4
  br label %37

33:                                               ; preds = %4
  %34 = load i32, i32* @DP_COM_CONF_GWSEL, align 4
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.ipu_flow*, %struct.ipu_flow** %9, align 8
  %40 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DP_COM_CONF, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %83

47:                                               ; preds = %37
  %48 = load %struct.ipu_flow*, %struct.ipu_flow** %9, align 8
  %49 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DP_GRAPH_WIND_CTRL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readl(i64 %52)
  %54 = sext i32 %53 to i64
  %55 = and i64 %54, 16777215
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i64, i64* %7, align 8
  %59 = trunc i64 %58 to i32
  %60 = shl i32 %59, 24
  %61 = or i32 %57, %60
  %62 = load %struct.ipu_flow*, %struct.ipu_flow** %9, align 8
  %63 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DP_GRAPH_WIND_CTRL, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load %struct.ipu_flow*, %struct.ipu_flow** %9, align 8
  %69 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DP_COM_CONF, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @readl(i64 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @DP_COM_CONF_GWAM, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.ipu_flow*, %struct.ipu_flow** %9, align 8
  %78 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DP_COM_CONF, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 %76, i64 %81)
  br label %100

83:                                               ; preds = %37
  %84 = load %struct.ipu_flow*, %struct.ipu_flow** %9, align 8
  %85 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DP_COM_CONF, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @readl(i64 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @DP_COM_CONF_GWAM, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = load %struct.ipu_flow*, %struct.ipu_flow** %9, align 8
  %95 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DP_COM_CONF, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 %93, i64 %98)
  br label %100

100:                                              ; preds = %83, %47
  %101 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %10, align 8
  %102 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ipu_srm_dp_update(i32 %103, i32 1)
  %105 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %10, align 8
  %106 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  ret i32 0
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
