; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_stop_timers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_stop_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, %struct.qib_pportdata*, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.qib_pportdata = type { %struct.TYPE_2__, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_stop_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_stop_timers(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %5 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %11, i32 0, i32 3
  %13 = call i32 @del_timer_sync(%struct.TYPE_2__* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 2
  %23 = call i32 @del_timer_sync(%struct.TYPE_2__* %22)
  br label %24

24:                                               ; preds = %20, %14
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %71, %24
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %74

31:                                               ; preds = %25
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %33 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %32, i32 0, i32 1
  %34 = load %struct.qib_pportdata*, %struct.qib_pportdata** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %34, i64 %36
  store %struct.qib_pportdata* %37, %struct.qib_pportdata** %3, align 8
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %39 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %45 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %44, i32 0, i32 3
  %46 = call i32 @del_timer_sync(%struct.TYPE_2__* %45)
  br label %47

47:                                               ; preds = %43, %31
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %49 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %55 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %54, i32 0, i32 2
  %56 = call i32 @del_timer_sync(%struct.TYPE_2__* %55)
  %57 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %58 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %57, i32 0, i32 1
  %59 = call i32 @atomic_set(i32* %58, i32 0)
  br label %60

60:                                               ; preds = %53, %47
  %61 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %62 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %68 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %67, i32 0, i32 0
  %69 = call i32 @del_timer_sync(%struct.TYPE_2__* %68)
  br label %70

70:                                               ; preds = %66, %60
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %25

74:                                               ; preds = %25
  ret void
}

declare dso_local i32 @del_timer_sync(%struct.TYPE_2__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
