; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/psci/extr_psci_checker.c_suspend_test_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/psci/extr_psci_checker.c_suspend_test_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i64 }
%struct.cpuidle_device = type { i32 }
%struct.cpuidle_driver = type { i32, %struct.cpuidle_state* }
%struct.cpuidle_state = type { i32 }
%struct.timer_list = type { i32 }

@MAX_RT_PRIO = common dso_local global i32 0, align 4
@suspend_threads_started = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to set suspend thread scheduler on CPU %d\0A\00", align 1
@cpuidle_devices = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"CPU %d entering suspend cycles, states 1 through %d\0A\00", align 1
@dummy_callback = common dso_local global i32 0, align 4
@NUM_SUSPEND_CYCLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"Failed to suspend CPU %d: error %d (requested state %d, cycle %d)\0A\00", align 1
@nb_active_threads = common dso_local global i32 0, align 4
@suspend_threads_done = common dso_local global i32 0, align 4
@SCHED_NORMAL = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"CPU %d suspend test results: success %d, shallow states %d, errors %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @suspend_test_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suspend_test_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sched_param, align 8
  %9 = alloca %struct.cpuidle_device*, align 8
  %10 = alloca %struct.cpuidle_driver*, align 8
  %11 = alloca %struct.timer_list, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cpuidle_state*, align 8
  store i8* %0, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %8, i32 0, i32 0
  %19 = load i32, i32* @MAX_RT_PRIO, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %18, align 8
  %22 = call i32 @wait_for_completion(i32* @suspend_threads_started)
  %23 = load i32, i32* @current, align 4
  %24 = load i32, i32* @SCHED_FIFO, align 4
  %25 = call i64 @sched_setscheduler_nocheck(i32 %23, i32 %24, %struct.sched_param* %8)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = load i32, i32* @cpuidle_devices, align 4
  %32 = call %struct.cpuidle_device* @this_cpu_read(i32 %31)
  store %struct.cpuidle_device* %32, %struct.cpuidle_device** %9, align 8
  %33 = load %struct.cpuidle_device*, %struct.cpuidle_device** %9, align 8
  %34 = call %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device* %33)
  store %struct.cpuidle_driver* %34, %struct.cpuidle_driver** %10, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %10, align 8
  %37 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %39)
  %41 = load i32, i32* @dummy_callback, align 4
  %42 = call i32 @timer_setup_on_stack(%struct.timer_list* %11, i32 %41, i32 0)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %100, %30
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @NUM_SUSPEND_CYCLE, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %103

47:                                               ; preds = %43
  store i32 1, i32* %12, align 4
  br label %48

48:                                               ; preds = %96, %47
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %10, align 8
  %51 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %99

54:                                               ; preds = %48
  %55 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %10, align 8
  %56 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %55, i32 0, i32 1
  %57 = load %struct.cpuidle_state*, %struct.cpuidle_state** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %57, i64 %59
  store %struct.cpuidle_state* %60, %struct.cpuidle_state** %14, align 8
  %61 = load i64, i64* @jiffies, align 8
  %62 = load %struct.cpuidle_state*, %struct.cpuidle_state** %14, align 8
  %63 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @usecs_to_jiffies(i32 %64)
  %66 = add nsw i64 %61, %65
  %67 = call i32 @mod_timer(%struct.timer_list* %11, i64 %66)
  %68 = call i32 (...) @local_irq_disable()
  %69 = load %struct.cpuidle_device*, %struct.cpuidle_device** %9, align 8
  %70 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %10, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @suspend_cpu(%struct.cpuidle_device* %69, %struct.cpuidle_driver* %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = call i32 (...) @local_irq_enable()
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %54
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %95

80:                                               ; preds = %54
  %81 = load i32, i32* %13, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %94

86:                                               ; preds = %80
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %86, %83
  br label %95

95:                                               ; preds = %94, %77
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %48

99:                                               ; preds = %48
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %43

103:                                              ; preds = %43
  %104 = call i32 @del_timer(%struct.timer_list* %11)
  %105 = call i32 @destroy_timer_on_stack(%struct.timer_list* %11)
  %106 = call i64 @atomic_dec_return_relaxed(i32* @nb_active_threads)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = call i32 @complete(i32* @suspend_threads_done)
  br label %110

110:                                              ; preds = %108, %103
  %111 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %8, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* @current, align 4
  %113 = load i32, i32* @SCHED_NORMAL, align 4
  %114 = call i64 @sched_setscheduler_nocheck(i32 %112, i32 %113, %struct.sched_param* %8)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %116, %110
  br label %120

120:                                              ; preds = %126, %119
  %121 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %122 = call i32 @set_current_state(i32 %121)
  %123 = call i64 (...) @kthread_should_park()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %128

126:                                              ; preds = %120
  %127 = call i32 (...) @schedule()
  br label %120

128:                                              ; preds = %125
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = call i32 (...) @kthread_parkme()
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @sched_setscheduler_nocheck(i32, i32, %struct.sched_param*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local %struct.cpuidle_device* @this_cpu_read(i32) #1

declare dso_local %struct.cpuidle_driver* @cpuidle_get_cpu_driver(%struct.cpuidle_device*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @timer_setup_on_stack(%struct.timer_list*, i32, i32) #1

declare dso_local i32 @mod_timer(%struct.timer_list*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @suspend_cpu(%struct.cpuidle_device*, %struct.cpuidle_driver*, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @del_timer(%struct.timer_list*) #1

declare dso_local i32 @destroy_timer_on_stack(%struct.timer_list*) #1

declare dso_local i64 @atomic_dec_return_relaxed(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @kthread_should_park(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @kthread_parkme(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
