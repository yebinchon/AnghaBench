; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_task_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-ic.c_ipu_ic_task_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_ic = type { %struct.TYPE_2__*, %struct.ipu_ic_priv* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.ipu_ic_priv = type { i32 }

@IC_CONF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_ic_task_disable(%struct.ipu_ic* %0) #0 {
  %2 = alloca %struct.ipu_ic*, align 8
  %3 = alloca %struct.ipu_ic_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ipu_ic* %0, %struct.ipu_ic** %2, align 8
  %6 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %7 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %6, i32 0, i32 1
  %8 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %7, align 8
  store %struct.ipu_ic_priv* %8, %struct.ipu_ic_priv** %3, align 8
  %9 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %14 = load i32, i32* @IC_CONF, align 4
  %15 = call i32 @ipu_ic_read(%struct.ipu_ic* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %17 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %22 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %20, %25
  %27 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %28 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %26, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %37 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %1
  %43 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %44 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %42, %1
  %52 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %53 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %60 = getelementptr inbounds %struct.ipu_ic, %struct.ipu_ic* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %58, %51
  %68 = load %struct.ipu_ic*, %struct.ipu_ic** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @IC_CONF, align 4
  %71 = call i32 @ipu_ic_write(%struct.ipu_ic* %68, i32 %69, i32 %70)
  %72 = load %struct.ipu_ic_priv*, %struct.ipu_ic_priv** %3, align 8
  %73 = getelementptr inbounds %struct.ipu_ic_priv, %struct.ipu_ic_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_ic_read(%struct.ipu_ic*, i32) #1

declare dso_local i32 @ipu_ic_write(%struct.ipu_ic*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
