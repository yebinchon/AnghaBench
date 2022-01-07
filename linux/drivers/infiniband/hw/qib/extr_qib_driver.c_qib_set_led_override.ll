; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_driver.c_qib_set_led_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_driver.c_qib_set_led_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32*, i32, i32, %struct.TYPE_4__, %struct.qib_devdata* }
%struct.TYPE_4__ = type { i64 }
%struct.qib_devdata = type { i32 }

@QIB_INITTED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@LED_OVER_FREQ_MASK = common dso_local global i32 0, align 4
@LED_OVER_FREQ_SHIFT = common dso_local global i32 0, align 4
@qib_run_led_override = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_set_led_override(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %9 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %8, i32 0, i32 4
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  store %struct.qib_devdata* %10, %struct.qib_devdata** %5, align 8
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %12 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @QIB_INITTED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %103

18:                                               ; preds = %2
  %19 = load i32, i32* @HZ, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @LED_OVER_FREQ_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @LED_OVER_FREQ_SHIFT, align 4
  %24 = lshr i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 15
  %30 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %31 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = lshr i32 %34, 4
  %36 = and i32 %35, 15
  %37 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %38 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @HZ, align 4
  %42 = shl i32 %41, 4
  %43 = load i32, i32* %7, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %6, align 4
  br label %58

45:                                               ; preds = %18
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 15
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %49 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, 15
  %54 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %55 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %45, %27
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %61 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %63 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %62, i32 0, i32 2
  %64 = call i32 @atomic_inc_return(i32* %63)
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %79

66:                                               ; preds = %58
  %67 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %68 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %67, i32 0, i32 3
  %69 = load i32, i32* @qib_run_led_override, align 4
  %70 = call i32 @timer_setup(%struct.TYPE_4__* %68, i32 %69, i32 0)
  %71 = load i64, i64* @jiffies, align 8
  %72 = add nsw i64 %71, 1
  %73 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %74 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %77 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %76, i32 0, i32 3
  %78 = call i32 @add_timer(%struct.TYPE_4__* %77)
  br label %103

79:                                               ; preds = %58
  %80 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %81 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %88 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86, %79
  %94 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %95 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %94, i32 0, i32 3
  %96 = load i64, i64* @jiffies, align 8
  %97 = add nsw i64 %96, 1
  %98 = call i32 @mod_timer(%struct.TYPE_4__* %95, i64 %97)
  br label %99

99:                                               ; preds = %93, %86
  %100 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %101 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %100, i32 0, i32 2
  %102 = call i32 @atomic_dec(i32* %101)
  br label %103

103:                                              ; preds = %17, %99, %66
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
