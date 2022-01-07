; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_rm31.c_cpu_fans_tick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_rm31.c_cpu_fans_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_cpu_pid_state = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"* cpu fans_tick_split()\0A\00", align 1
@nr_chips = common dso_local global i32 0, align 4
@cpu_pid = common dso_local global %struct.wf_cpu_pid_state* null, align 8
@cpu_fans = common dso_local global %struct.TYPE_4__*** null, align 8
@FAILURE_SENSOR = common dso_local global i32 0, align 4
@failure_state = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"  CPU%d: target = %d RPM\0A\00", align 1
@dimms_output_clamp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"wf_rm31: Fan %s reports error %d\0A\00", align 1
@FAILURE_FAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpu_fans_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_fans_tick() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wf_cpu_pid_state*, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32 (i8*, ...) @DBG_LOTS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %100, %0
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @nr_chips, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %103

14:                                               ; preds = %10
  %15 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** @cpu_pid, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %15, i64 %17
  store %struct.wf_cpu_pid_state* %18, %struct.wf_cpu_pid_state** %8, align 8
  %19 = load %struct.TYPE_4__***, %struct.TYPE_4__**** @cpu_fans, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__**, %struct.TYPE_4__*** %19, i64 %21
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %23, i64 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %8, align 8
  %27 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %26, i32 0, i32 0
  %28 = call i32 @wf_control_get(%struct.TYPE_4__* %25, i32* %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @read_one_cpu_vals(i32 %29, i32* %5, i32* %6)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %14
  %34 = load i32, i32* @FAILURE_SENSOR, align 4
  %35 = load i32, i32* @failure_state, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* @failure_state, align 4
  %37 = call i32 (...) @cpu_max_all_fans()
  br label %103

38:                                               ; preds = %14
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @max(i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @cpu_check_overtemp(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %103

46:                                               ; preds = %38
  %47 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @wf_cpu_pid_run(%struct.wf_cpu_pid_state* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %8, align 8
  %53 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @DBG_LOTS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %8, align 8
  %57 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @dimms_output_clamp, align 4
  %60 = call i32 @max(i32 %58, i32 %59)
  store i32 %60, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %96, %46
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 3
  br i1 %63, label %64, label %99

64:                                               ; preds = %61
  %65 = load %struct.TYPE_4__***, %struct.TYPE_4__**** @cpu_fans, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__**, %struct.TYPE_4__*** %65, i64 %67
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %69, i64 %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @wf_control_set(%struct.TYPE_4__* %73, i32 %74)
  store i32 %75, i32* %1, align 4
  %76 = load i32, i32* %1, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %64
  %79 = load %struct.TYPE_4__***, %struct.TYPE_4__**** @cpu_fans, align 8
  %80 = load i32, i32* %2, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__**, %struct.TYPE_4__*** %79, i64 %81
  %83 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %83, i64 %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %1, align 4
  %91 = call i32 @pr_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* @FAILURE_FAN, align 4
  %93 = load i32, i32* @failure_state, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* @failure_state, align 4
  br label %95

95:                                               ; preds = %78, %64
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %61

99:                                               ; preds = %61
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %2, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %2, align 4
  br label %10

103:                                              ; preds = %33, %45, %10
  ret void
}

declare dso_local i32 @DBG_LOTS(i8*, ...) #1

declare dso_local i32 @wf_control_get(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @read_one_cpu_vals(i32, i32*, i32*) #1

declare dso_local i32 @cpu_max_all_fans(...) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @cpu_check_overtemp(i32) #1

declare dso_local i32 @wf_cpu_pid_run(%struct.wf_cpu_pid_state*, i32, i32) #1

declare dso_local i32 @wf_control_set(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pr_warning(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
