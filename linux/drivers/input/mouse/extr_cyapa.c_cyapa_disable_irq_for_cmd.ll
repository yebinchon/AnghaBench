; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_disable_irq_for_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_disable_irq_for_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i64, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, %struct.input_dev* }
%struct.TYPE_4__ = type { i32 (%struct.cyapa*, i32, i32, i32)* }
%struct.TYPE_3__ = type { i32 }
%struct.input_dev = type { i32 }

@CYAPA_GEN5 = common dso_local global i64 0, align 8
@PWR_MODE_OFF = common dso_local global i32 0, align 4
@CYAPA_PM_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cyapa*)* @cyapa_disable_irq_for_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyapa_disable_irq_for_cmd(%struct.cyapa* %0) #0 {
  %2 = alloca %struct.cyapa*, align 8
  %3 = alloca %struct.input_dev*, align 8
  store %struct.cyapa* %0, %struct.cyapa** %2, align 8
  %4 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %5 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %4, i32 0, i32 4
  %6 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  store %struct.input_dev* %6, %struct.input_dev** %3, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = icmp ne %struct.input_dev* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %16 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CYAPA_GEN5, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %22 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @disable_irq(i32 %25)
  br label %27

27:                                               ; preds = %20, %14
  %28 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %29 = icmp ne %struct.input_dev* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %32 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30, %27
  %36 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %37 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.cyapa*, i32, i32, i32)*, i32 (%struct.cyapa*, i32, i32, i32)** %39, align 8
  %41 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %42 = load i32, i32* @PWR_MODE_OFF, align 4
  %43 = load i32, i32* @CYAPA_PM_ACTIVE, align 4
  %44 = call i32 %40(%struct.cyapa* %41, i32 %42, i32 0, i32 %43)
  br label %45

45:                                               ; preds = %35, %30
  br label %46

46:                                               ; preds = %45, %9
  ret void
}

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
