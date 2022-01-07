; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm72.c_cpu_fans_tick_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm72.c_cpu_fans_tick_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_cpu_pid_state = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"* cpu fans_tick_split()\0A\00", align 1
@nr_chips = common dso_local global i32 0, align 4
@cpu_pid = common dso_local global %struct.wf_cpu_pid_state* null, align 8
@cpu_rear_fans = common dso_local global %struct.TYPE_5__** null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"  CPU%d: cur_target = %d RPM\0A\00", align 1
@FAILURE_SENSOR = common dso_local global i32 0, align 4
@failure_state = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"  CPU%d: target = %d RPM\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"wf_pm72: Fan %s reports error %d\0A\00", align 1
@FAILURE_FAN = common dso_local global i32 0, align 4
@CPU_INTAKE_SCALE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"  CPU%d: intake = %d RPM\0A\00", align 1
@cpu_front_fans = common dso_local global %struct.TYPE_5__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpu_fans_tick_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_fans_tick_split() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wf_cpu_pid_state*, align 8
  store i32 0, i32* %6, align 4
  %8 = call i32 (i8*, ...) @DBG_LOTS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %115, %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @nr_chips, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %118

13:                                               ; preds = %9
  %14 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** @cpu_pid, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %14, i64 %16
  store %struct.wf_cpu_pid_state* %17, %struct.wf_cpu_pid_state** %7, align 8
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @cpu_rear_fans, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %7, align 8
  %24 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %23, i32 0, i32 0
  %25 = call i32 @wf_control_get(%struct.TYPE_5__* %22, i32* %24)
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %7, align 8
  %28 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @DBG_LOTS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @read_one_cpu_vals(i32 %31, i32* %4, i32* %5)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %13
  %36 = load i32, i32* @FAILURE_SENSOR, align 4
  %37 = load i32, i32* @failure_state, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* @failure_state, align 4
  %39 = call i32 (...) @cpu_max_all_fans()
  br label %118

40:                                               ; preds = %13
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @max(i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @cpu_check_overtemp(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %118

48:                                               ; preds = %40
  %49 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @wf_cpu_pid_run(%struct.wf_cpu_pid_state* %49, i32 %50, i32 %51)
  %53 = load i32, i32* %2, align 4
  %54 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %7, align 8
  %55 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @DBG_LOTS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @cpu_rear_fans, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %58, i64 %60
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %7, align 8
  %64 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wf_control_set(%struct.TYPE_5__* %62, i32 %65)
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %48
  %70 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @cpu_rear_fans, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %70, i64 %72
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %1, align 4
  %78 = call i32 @pr_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* @FAILURE_FAN, align 4
  %80 = load i32, i32* @failure_state, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* @failure_state, align 4
  br label %118

82:                                               ; preds = %48
  %83 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %7, align 8
  %84 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CPU_INTAKE_SCALE, align 4
  %87 = mul nsw i32 %85, %86
  %88 = ashr i32 %87, 16
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 (i8*, ...) @DBG_LOTS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @cpu_front_fans, align 8
  %93 = load i32, i32* %2, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %92, i64 %94
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @wf_control_set(%struct.TYPE_5__* %96, i32 %97)
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* %1, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %82
  %102 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @cpu_front_fans, align 8
  %103 = load i32, i32* %2, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %102, i64 %104
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %1, align 4
  %110 = call i32 @pr_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i32, i32* @FAILURE_FAN, align 4
  %112 = load i32, i32* @failure_state, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* @failure_state, align 4
  br label %118

114:                                              ; preds = %82
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %2, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %2, align 4
  br label %9

118:                                              ; preds = %35, %47, %101, %69, %9
  ret void
}

declare dso_local i32 @DBG_LOTS(i8*, ...) #1

declare dso_local i32 @wf_control_get(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @read_one_cpu_vals(i32, i32*, i32*) #1

declare dso_local i32 @cpu_max_all_fans(...) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @cpu_check_overtemp(i32) #1

declare dso_local i32 @wf_cpu_pid_run(%struct.wf_cpu_pid_state*, i32, i32) #1

declare dso_local i32 @wf_control_set(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pr_warning(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
