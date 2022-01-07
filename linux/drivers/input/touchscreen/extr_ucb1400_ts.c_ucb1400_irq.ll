; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1400_ts = type { i32, i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@UCB1400_TS_POLL_PERIOD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ucb1400_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1400_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ucb1400_ts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ucb1400_ts*
  store %struct.ucb1400_ts* %12, %struct.ucb1400_ts** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %15 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %87

23:                                               ; preds = %2
  %24 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %25 = call i32 @ucb1400_clear_pending_irq(%struct.ucb1400_ts* %24)
  %26 = load i32, i32* @UCB1400_TS_POLL_PERIOD, align 4
  %27 = call i32 @msleep(i32 %26)
  br label %28

28:                                               ; preds = %40, %23
  %29 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %30 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %35 = call i32 @ucb1400_ts_pen_up(%struct.ucb1400_ts* %34)
  store i32 %35, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ false, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %71

40:                                               ; preds = %38
  %41 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %42 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ucb1400_adc_enable(i32 %43)
  %45 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %46 = call i32 @ucb1400_ts_read_xpos(%struct.ucb1400_ts* %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %48 = call i32 @ucb1400_ts_read_ypos(%struct.ucb1400_ts* %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %50 = call i32 @ucb1400_ts_read_pressure(%struct.ucb1400_ts* %49)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %52 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ucb1400_adc_disable(i32 %53)
  %55 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %56 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ucb1400_ts_report_event(i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %63 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %66 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @UCB1400_TS_POLL_PERIOD, align 4
  %69 = call i32 @msecs_to_jiffies(i32 %68)
  %70 = call i32 @wait_event_timeout(i32 %64, i32 %67, i32 %69)
  br label %28

71:                                               ; preds = %38
  %72 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %73 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ucb1400_ts_event_release(i32 %74)
  %76 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %77 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %71
  %81 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %82 = call i32 @ucb1400_ts_mode_int(%struct.ucb1400_ts* %81)
  %83 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %84 = call i32 @ucb1400_ts_irq_enable(%struct.ucb1400_ts* %83)
  br label %85

85:                                               ; preds = %80, %71
  %86 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %21
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ucb1400_clear_pending_irq(%struct.ucb1400_ts*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ucb1400_ts_pen_up(%struct.ucb1400_ts*) #1

declare dso_local i32 @ucb1400_adc_enable(i32) #1

declare dso_local i32 @ucb1400_ts_read_xpos(%struct.ucb1400_ts*) #1

declare dso_local i32 @ucb1400_ts_read_ypos(%struct.ucb1400_ts*) #1

declare dso_local i32 @ucb1400_ts_read_pressure(%struct.ucb1400_ts*) #1

declare dso_local i32 @ucb1400_adc_disable(i32) #1

declare dso_local i32 @ucb1400_ts_report_event(i32, i32, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ucb1400_ts_event_release(i32) #1

declare dso_local i32 @ucb1400_ts_mode_int(%struct.ucb1400_ts*) #1

declare dso_local i32 @ucb1400_ts_irq_enable(%struct.ucb1400_ts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
