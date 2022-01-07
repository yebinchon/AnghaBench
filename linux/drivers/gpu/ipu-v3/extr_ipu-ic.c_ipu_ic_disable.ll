; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_ic = type { i32, i32, %struct.ipu_ic_priv* }
%struct.ipu_ic_priv = type { i64, i32, i32 }

@IPU_CONF_IC_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_ic_disable(%struct.ipu_ic* %0) #0 {
  %2 = alloca %struct.ipu_ic*, align 8
  %3 = alloca %struct.ipu_ic_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.ipu_ic* %0, %struct.ipu_ic** %2, align 8
  %5 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %6 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %5, i32 0, i32 2
  %7 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %6, align 8
  store %struct.ipu_ic_priv* %7, %struct.ipu_ic_priv** %3, align 8
  %8 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IPU_CONF_IC_EN, align 4
  %25 = call i32 @ipu_module_disable(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %3, align 8
  %28 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %36 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %41 = call i32 @ipu_irt_disable(%struct.ipu_ic* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %44 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %46 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %47, i32 0, i32 1
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_module_disable(i32, i32) #1

declare dso_local i32 @ipu_irt_disable(%struct.ipu_ic*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
