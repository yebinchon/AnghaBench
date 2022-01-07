; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32, %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.cyapa*)*, i32 (%struct.cyapa*, i32*, i32*, i32*)*, i64 (%struct.cyapa*)* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cyapa_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cyapa*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.cyapa*
  store %struct.cyapa* %9, %struct.cyapa** %5, align 8
  %10 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %11 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i64 @device_may_wakeup(%struct.device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @pm_wakeup_event(%struct.device* %18, i32 0)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %22 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i64 (%struct.cyapa*)*, i64 (%struct.cyapa*)** %24, align 8
  %26 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %27 = call i64 %25(%struct.cyapa* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %89

29:                                               ; preds = %20
  %30 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %31 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %36 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32 (%struct.cyapa*, i32*, i32*, i32*)*, i32 (%struct.cyapa*, i32*, i32*, i32*)** %38, align 8
  %40 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %41 = call i32 %39(%struct.cyapa* %40, i32* null, i32* null, i32* null)
  br label %90

42:                                               ; preds = %29
  %43 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %44 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %49 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.cyapa*)*, i32 (%struct.cyapa*)** %51, align 8
  %53 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %54 = call i32 %52(%struct.cyapa* %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = call i32 @pm_runtime_get_sync(%struct.device* %55)
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = call i32 @pm_runtime_mark_last_busy(%struct.device* %57)
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = call i32 @pm_runtime_put_sync_autosuspend(%struct.device* %59)
  br label %61

61:                                               ; preds = %47, %42
  %62 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %63 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %66, %61
  %70 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %71 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %70, i32 0, i32 0
  %72 = call i32 @mutex_trylock(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  %75 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %76 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32 (%struct.cyapa*, i32*, i32*, i32*)*, i32 (%struct.cyapa*, i32*, i32*, i32*)** %78, align 8
  %80 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %81 = call i32 %79(%struct.cyapa* %80, i32* null, i32* null, i32* null)
  br label %90

82:                                               ; preds = %69
  %83 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %84 = call i32 @cyapa_reinitialize(%struct.cyapa* %83)
  %85 = load %struct.cyapa*, %struct.cyapa** %5, align 8
  %86 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  br label %88

88:                                               ; preds = %82, %66
  br label %89

89:                                               ; preds = %88, %20
  br label %90

90:                                               ; preds = %89, %74, %34
  %91 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %91
}

declare dso_local i64 @device_may_wakeup(%struct.device*) #1

declare dso_local i32 @pm_wakeup_event(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_sync_autosuspend(%struct.device*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @cyapa_reinitialize(%struct.cyapa*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
