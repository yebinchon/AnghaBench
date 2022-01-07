; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_actmon_thread_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_actmon_thread_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_devfreq = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ACTMON_GLB_STATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @actmon_thread_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @actmon_thread_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tegra_devfreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.tegra_devfreq*
  store %struct.tegra_devfreq* %10, %struct.tegra_devfreq** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %12 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %17 = load i32, i32* @ACTMON_GLB_STATUS, align 4
  %18 = call i32 @actmon_readl(%struct.tegra_devfreq* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %50, %2
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %22 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %23)
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %29 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %27, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %26
  %41 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %42 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %43 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  %48 = call i32 @actmon_isr_device(%struct.tegra_devfreq* %41, %struct.TYPE_7__* %47)
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %40, %26
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %58 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = call i32 @update_devfreq(%struct.TYPE_6__* %59)
  br label %61

61:                                               ; preds = %56, %53
  %62 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %5, align 8
  %63 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  br label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @IRQ_NONE, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  ret i32 %74
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @actmon_readl(%struct.tegra_devfreq*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @actmon_isr_device(%struct.tegra_devfreq*, %struct.TYPE_7__*) #1

declare dso_local i32 @update_devfreq(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
