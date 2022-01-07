; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.cyapa*)* }
%struct.cyapa = type { %struct.TYPE_5__*, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.cyapa*, i32, i32, i32)* }
%struct.TYPE_7__ = type { i32 (%struct.cyapa*)* }
%struct.TYPE_6__ = type { i32 (%struct.cyapa*)* }

@CYAPA_STATE_NO_DEVICE = common dso_local global i32 0, align 4
@CYAPA_GEN_UNKNOWN = common dso_local global i32 0, align 4
@PWR_MODE_SLEEP = common dso_local global i32 0, align 4
@cyapa_gen3_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@cyapa_gen5_ops = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@cyapa_gen6_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PWR_MODE_OFF = common dso_local global i32 0, align 4
@CYAPA_PM_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*)* @cyapa_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_initialize(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @CYAPA_STATE_NO_DEVICE, align 4
  %6 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %7 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %6, i32 0, i32 6
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @CYAPA_GEN_UNKNOWN, align 4
  %9 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %10 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 4
  %11 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %12 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %11, i32 0, i32 4
  %13 = call i32 @mutex_init(i32* %12)
  %14 = load i32, i32* @PWR_MODE_SLEEP, align 4
  %15 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %16 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %18 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @cyapa_pwr_cmd_to_sleep_time(i32 %19)
  %21 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %22 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32 (%struct.cyapa*)*, i32 (%struct.cyapa*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cyapa_gen3_ops, i32 0, i32 0), align 8
  %24 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %25 = call i32 %23(%struct.cyapa* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = load i32 (%struct.cyapa*)*, i32 (%struct.cyapa*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cyapa_gen5_ops, i32 0, i32 0), align 8
  %30 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %31 = call i32 %29(%struct.cyapa* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %1
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32 (%struct.cyapa*)*, i32 (%struct.cyapa*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cyapa_gen6_ops, i32 0, i32 0), align 8
  %37 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %38 = call i32 %36(%struct.cyapa* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %67

44:                                               ; preds = %39
  %45 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %46 = call i32 @cyapa_detect(%struct.cyapa* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %67

51:                                               ; preds = %44
  %52 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %53 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %58 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32 (%struct.cyapa*, i32, i32, i32)*, i32 (%struct.cyapa*, i32, i32, i32)** %60, align 8
  %62 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %63 = load i32, i32* @PWR_MODE_OFF, align 4
  %64 = load i32, i32* @CYAPA_PM_ACTIVE, align 4
  %65 = call i32 %61(%struct.cyapa* %62, i32 %63, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %56, %51
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %49, %42
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @cyapa_pwr_cmd_to_sleep_time(i32) #1

declare dso_local i32 @cyapa_detect(%struct.cyapa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
