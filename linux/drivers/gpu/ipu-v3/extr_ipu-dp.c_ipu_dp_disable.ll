; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_soc = type { %struct.ipu_dp_priv* }
%struct.ipu_dp_priv = type { i64, i32, i32 }

@IPU_CONF_DP_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_dp_disable(%struct.ipu_soc* %0) #0 {
  %2 = alloca %struct.ipu_soc*, align 8
  %3 = alloca %struct.ipu_dp_priv*, align 8
  store %struct.ipu_soc* %0, %struct.ipu_soc** %2, align 8
  %4 = load %struct.ipu_soc*, %struct.ipu_soc** %2, align 8
  %5 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %4, i32 0, i32 0
  %6 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %5, align 8
  store %struct.ipu_dp_priv* %6, %struct.ipu_dp_priv** %3, align 8
  %7 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %3, align 8
  %20 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IPU_CONF_DP_EN, align 4
  %23 = call i32 @ipu_module_disable(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %3, align 8
  %34 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipu_module_disable(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
