; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_irt_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_irt_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_ic = type { %struct.ipu_ic_priv* }
%struct.ipu_ic_priv = type { i32, i64 }

@IPU_CONF_ROT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_ic*)* @ipu_irt_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_irt_disable(%struct.ipu_ic* %0) #0 {
  %2 = alloca %struct.ipu_ic*, align 8
  %3 = alloca %struct.ipu_ic_priv*, align 8
  store %struct.ipu_ic* %0, %struct.ipu_ic** %2, align 8
  %4 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %5 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %4, i32 0, i32 0
  %6 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %5, align 8
  store %struct.ipu_ic_priv* %6, %struct.ipu_ic_priv** %3, align 8
  %7 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IPU_CONF_ROT_EN, align 4
  %22 = call i32 @ipu_module_disable(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %11
  br label %24

24:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @ipu_module_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
