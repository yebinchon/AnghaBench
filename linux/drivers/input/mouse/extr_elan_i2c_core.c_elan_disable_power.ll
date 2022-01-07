; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_disable_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_disable_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_tp_data = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32)* }

@ETP_RETRY_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to disable regulator: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to disable power: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elan_tp_data*)* @elan_disable_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_disable_power(%struct.elan_tp_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elan_tp_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.elan_tp_data* %0, %struct.elan_tp_data** %3, align 8
  %6 = load i32, i32* @ETP_RETRY_COUNT, align 4
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %45, %1
  %8 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %9 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %11, align 8
  %13 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %14 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = call i32 %12(%struct.TYPE_5__* %15, i32 0)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %7
  %20 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %21 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @regulator_disable(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %28 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %34 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %36, align 8
  %38 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %39 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 %37(%struct.TYPE_5__* %40, i32 1)
  br label %49

42:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %57

43:                                               ; preds = %7
  %44 = call i32 @msleep(i32 30)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %4, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %7, label %49

49:                                               ; preds = %45, %26
  %50 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %51 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %49, %42
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
