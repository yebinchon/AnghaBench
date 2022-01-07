; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_is_pip_app_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_is_pip_app_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i64, i64 }

@CYAPA_GEN6 = common dso_local global i64 0, align 8
@CYAPA_STATE_GEN6_APP = common dso_local global i64 0, align 8
@CYAPA_GEN5 = common dso_local global i64 0, align 8
@CYAPA_STATE_GEN5_APP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyapa_is_pip_app_mode(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  %4 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %5 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CYAPA_GEN6, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %11 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CYAPA_STATE_GEN6_APP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %30

16:                                               ; preds = %9, %1
  %17 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %18 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CYAPA_GEN5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %24 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CYAPA_STATE_GEN5_APP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %30

29:                                               ; preds = %22, %16
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %15
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
