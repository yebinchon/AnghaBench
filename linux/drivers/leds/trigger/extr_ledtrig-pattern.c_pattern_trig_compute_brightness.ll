; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_trig_compute_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_trig_compute_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_trig_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@UPDATE_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pattern_trig_data*)* @pattern_trig_compute_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pattern_trig_compute_brightness(%struct.pattern_trig_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pattern_trig_data*, align 8
  %4 = alloca i32, align 4
  store %struct.pattern_trig_data* %0, %struct.pattern_trig_data** %3, align 8
  %5 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %6 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %11 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UPDATE_INTERVAL, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %9, %1
  %18 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %19 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %2, align 4
  br label %76

23:                                               ; preds = %9
  %24 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %25 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %30 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %28, %34
  %36 = call i32 @abs(i64 %35)
  store i32 %36, i32* %4, align 4
  %37 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %38 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %43 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %41, %46
  store i32 %47, i32* %4, align 4
  %48 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %49 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %54 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp sgt i64 %52, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %23
  %61 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %62 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %2, align 4
  br label %76

68:                                               ; preds = %23
  %69 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %70 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %68, %60, %17
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
