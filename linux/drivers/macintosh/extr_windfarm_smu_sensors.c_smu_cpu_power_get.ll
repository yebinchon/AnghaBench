; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_smu_sensors.c_smu_cpu_power_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_smu_sensors.c_smu_cpu_power_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.wf_sensor = type { i32 }
%struct.smu_cpu_power_sensor = type { i32, %struct.TYPE_8__*, i64, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i32*)* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_9__*, i32*)* }

@cpuvcp = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wf_sensor*, i32*)* @smu_cpu_power_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_cpu_power_get(%struct.wf_sensor* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wf_sensor*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.smu_cpu_power_sensor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wf_sensor* %0, %struct.wf_sensor** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.wf_sensor*, %struct.wf_sensor** %4, align 8
  %15 = call %struct.smu_cpu_power_sensor* @to_smu_cpu_power(%struct.wf_sensor* %14)
  store %struct.smu_cpu_power_sensor* %15, %struct.smu_cpu_power_sensor** %6, align 8
  %16 = load %struct.smu_cpu_power_sensor*, %struct.smu_cpu_power_sensor** %6, align 8
  %17 = getelementptr inbounds %struct.smu_cpu_power_sensor, %struct.smu_cpu_power_sensor* %16, i32 0, i32 3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_9__*, i32*)*, i32 (%struct.TYPE_9__*, i32*)** %21, align 8
  %23 = load %struct.smu_cpu_power_sensor*, %struct.smu_cpu_power_sensor** %6, align 8
  %24 = getelementptr inbounds %struct.smu_cpu_power_sensor, %struct.smu_cpu_power_sensor* %23, i32 0, i32 3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = call i32 %22(%struct.TYPE_9__* %25, i32* %8)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %3, align 4
  br label %101

31:                                               ; preds = %2
  %32 = load %struct.smu_cpu_power_sensor*, %struct.smu_cpu_power_sensor** %6, align 8
  %33 = getelementptr inbounds %struct.smu_cpu_power_sensor, %struct.smu_cpu_power_sensor* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %37, 12
  %39 = sub nsw i32 %38, 196608
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %101

41:                                               ; preds = %31
  %42 = load %struct.smu_cpu_power_sensor*, %struct.smu_cpu_power_sensor** %6, align 8
  %43 = getelementptr inbounds %struct.smu_cpu_power_sensor, %struct.smu_cpu_power_sensor* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_8__*, i32*)*, i32 (%struct.TYPE_8__*, i32*)** %47, align 8
  %49 = load %struct.smu_cpu_power_sensor*, %struct.smu_cpu_power_sensor** %6, align 8
  %50 = getelementptr inbounds %struct.smu_cpu_power_sensor, %struct.smu_cpu_power_sensor* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = call i32 %48(%struct.TYPE_8__* %51, i32* %7)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %3, align 4
  br label %101

57:                                               ; preds = %41
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 %58, %59
  %61 = ashr i32 %60, 16
  store i32 %61, i32* %9, align 4
  %62 = load %struct.smu_cpu_power_sensor*, %struct.smu_cpu_power_sensor** %6, align 8
  %63 = getelementptr inbounds %struct.smu_cpu_power_sensor, %struct.smu_cpu_power_sensor* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %101

69:                                               ; preds = %57
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %70, %71
  %73 = ashr i32 %72, 16
  store i32 %73, i32* %10, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cpuvcp, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = mul nsw i32 %78, %79
  store i32 %80, i32* %11, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cpuvcp, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = mul nsw i32 %85, %86
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = ashr i32 %88, 28
  %90 = load i32, i32* %12, align 4
  %91 = ashr i32 %90, 28
  %92 = add nsw i32 %89, %91
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cpuvcp, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 12
  %99 = add nsw i32 %92, %98
  %100 = load i32*, i32** %5, align 8
  store i32 %99, i32* %100, align 4
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %69, %66, %55, %36, %29
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.smu_cpu_power_sensor* @to_smu_cpu_power(%struct.wf_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
