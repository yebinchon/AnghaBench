; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp4_core.c_cyttsp4_lift_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp4_core.c_cyttsp4_lift_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyttsp4_mt_data = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CY_TCH_T = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cyttsp4_mt_data*)* @cyttsp4_lift_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyttsp4_lift_all(%struct.cyttsp4_mt_data* %0) #0 {
  %2 = alloca %struct.cyttsp4_mt_data*, align 8
  store %struct.cyttsp4_mt_data* %0, %struct.cyttsp4_mt_data** %2, align 8
  %3 = load %struct.cyttsp4_mt_data*, %struct.cyttsp4_mt_data** %2, align 8
  %4 = getelementptr inbounds %struct.cyttsp4_mt_data, %struct.cyttsp4_mt_data* %3, i32 0, i32 2
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.cyttsp4_mt_data*, %struct.cyttsp4_mt_data** %2, align 8
  %10 = getelementptr inbounds %struct.cyttsp4_mt_data, %struct.cyttsp4_mt_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  %14 = load %struct.cyttsp4_mt_data*, %struct.cyttsp4_mt_data** %2, align 8
  %15 = load %struct.cyttsp4_mt_data*, %struct.cyttsp4_mt_data** %2, align 8
  %16 = getelementptr inbounds %struct.cyttsp4_mt_data, %struct.cyttsp4_mt_data* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i64, i64* @CY_TCH_T, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cyttsp4_report_slot_liftoff(%struct.cyttsp4_mt_data* %14, i32 %24)
  %26 = load %struct.cyttsp4_mt_data*, %struct.cyttsp4_mt_data** %2, align 8
  %27 = getelementptr inbounds %struct.cyttsp4_mt_data, %struct.cyttsp4_mt_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @input_sync(i32 %28)
  %30 = load %struct.cyttsp4_mt_data*, %struct.cyttsp4_mt_data** %2, align 8
  %31 = getelementptr inbounds %struct.cyttsp4_mt_data, %struct.cyttsp4_mt_data* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %7, %13, %8
  ret void
}

declare dso_local i32 @cyttsp4_report_slot_liftoff(%struct.cyttsp4_mt_data*, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
