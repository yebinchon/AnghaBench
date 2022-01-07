; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm72.c_cpu_fans_tick_combined.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm72.c_cpu_fans_tick_combined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_cpu_pid_state = type { i32 }
%struct.wf_control = type { i32 }
%struct.TYPE_2__ = type { i32 }

@cpu_pid = common dso_local global %struct.wf_cpu_pid_state* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"* cpu fans_tick_combined()\0A\00", align 1
@cpu_rear_fans = common dso_local global %struct.wf_control** null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"  CPUs: cur_target = %d RPM\0A\00", align 1
@FAILURE_SENSOR = common dso_local global i32 0, align 4
@failure_state = common dso_local global i32 0, align 4
@CPU_INTAKE_SCALE = common dso_local global i32 0, align 4
@cpu_pumps = common dso_local global %struct.wf_control** null, align 8
@cpu_mpu_data = common dso_local global %struct.TYPE_2__** null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"  CPUs: target = %d RPM\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"  CPUs: intake = %d RPM\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"  CPUs: pump   = %d RPM\0A\00", align 1
@nr_chips = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"wf_pm72: Fan %s reports error %d\0A\00", align 1
@FAILURE_FAN = common dso_local global i32 0, align 4
@cpu_front_fans = common dso_local global %struct.wf_control** null, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"wf_pm72: Pump %s reports error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpu_fans_tick_combined to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_fans_tick_combined() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wf_control*, align 8
  %11 = alloca %struct.wf_control*, align 8
  %12 = alloca %struct.wf_cpu_pid_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  %15 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** @cpu_pid, align 8
  %16 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %15, i64 0
  store %struct.wf_cpu_pid_state* %16, %struct.wf_cpu_pid_state** %12, align 8
  %17 = call i32 (i8*, ...) @DBG_LOTS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.wf_control**, %struct.wf_control*** @cpu_rear_fans, align 8
  %19 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %18, i64 0
  %20 = load %struct.wf_control*, %struct.wf_control** %19, align 8
  %21 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %12, align 8
  %22 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %21, i32 0, i32 0
  %23 = call i32 @wf_control_get(%struct.wf_control* %20, i32* %22)
  %24 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %12, align 8
  %25 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @DBG_LOTS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i32 @read_one_cpu_vals(i32 0, i32* %1, i32* %2)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %0
  %32 = load i32, i32* @FAILURE_SENSOR, align 4
  %33 = load i32, i32* @failure_state, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* @failure_state, align 4
  %35 = call i32 (...) @cpu_max_all_fans()
  br label %190

36:                                               ; preds = %0
  %37 = call i32 @read_one_cpu_vals(i32 1, i32* %3, i32* %4)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @FAILURE_SENSOR, align 4
  %42 = load i32, i32* @failure_state, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* @failure_state, align 4
  %44 = call i32 (...) @cpu_max_all_fans()
  br label %190

45:                                               ; preds = %36
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @max(i32 %47, i32 %48)
  %50 = call i32 @max(i32 %46, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @cpu_check_overtemp(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %190

55:                                               ; preds = %45
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @max(i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @max(i32 %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %12, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @wf_cpu_pid_run(%struct.wf_cpu_pid_state* %62, i32 %63, i32 %64)
  %66 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %12, align 8
  %67 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CPU_INTAKE_SCALE, align 4
  %70 = mul nsw i32 %68, %69
  %71 = ashr i32 %70, 16
  store i32 %71, i32* %8, align 4
  %72 = load %struct.wf_control**, %struct.wf_control*** @cpu_pumps, align 8
  %73 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %72, i64 0
  %74 = load %struct.wf_control*, %struct.wf_control** %73, align 8
  store %struct.wf_control* %74, %struct.wf_control** %10, align 8
  %75 = load %struct.wf_control**, %struct.wf_control*** @cpu_pumps, align 8
  %76 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %75, i64 1
  %77 = load %struct.wf_control*, %struct.wf_control** %76, align 8
  store %struct.wf_control* %77, %struct.wf_control** %11, align 8
  %78 = load %struct.wf_control*, %struct.wf_control** %10, align 8
  %79 = icmp ne %struct.wf_control* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %55
  %81 = load %struct.wf_control*, %struct.wf_control** %11, align 8
  store %struct.wf_control* %81, %struct.wf_control** %10, align 8
  store %struct.wf_control* null, %struct.wf_control** %11, align 8
  br label %82

82:                                               ; preds = %80, %55
  %83 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %12, align 8
  %84 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.wf_control*, %struct.wf_control** %10, align 8
  %87 = call i32 @wf_control_get_max(%struct.wf_control* %86)
  %88 = mul nsw i32 %85, %87
  %89 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @cpu_mpu_data, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %89, i64 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %88, %93
  store i32 %94, i32* %9, align 4
  %95 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %12, align 8
  %96 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @DBG_LOTS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (i8*, ...) @DBG_LOTS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = call i32 (i8*, ...) @DBG_LOTS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  store i32 0, i32* %14, align 4
  br label %103

103:                                              ; preds = %187, %82
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @nr_chips, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %190

107:                                              ; preds = %103
  %108 = load %struct.wf_control**, %struct.wf_control*** @cpu_rear_fans, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %108, i64 %110
  %112 = load %struct.wf_control*, %struct.wf_control** %111, align 8
  %113 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %12, align 8
  %114 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @wf_control_set(%struct.wf_control* %112, i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %107
  %120 = load %struct.wf_control**, %struct.wf_control*** @cpu_rear_fans, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %120, i64 %122
  %124 = load %struct.wf_control*, %struct.wf_control** %123, align 8
  %125 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @pr_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load i32, i32* @FAILURE_FAN, align 4
  %130 = load i32, i32* @failure_state, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* @failure_state, align 4
  br label %132

132:                                              ; preds = %119, %107
  %133 = load %struct.wf_control**, %struct.wf_control*** @cpu_front_fans, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %133, i64 %135
  %137 = load %struct.wf_control*, %struct.wf_control** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @wf_control_set(%struct.wf_control* %137, i32 %138)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %132
  %143 = load %struct.wf_control**, %struct.wf_control*** @cpu_front_fans, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %143, i64 %145
  %147 = load %struct.wf_control*, %struct.wf_control** %146, align 8
  %148 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @pr_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load i32, i32* @FAILURE_FAN, align 4
  %153 = load i32, i32* @failure_state, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* @failure_state, align 4
  br label %155

155:                                              ; preds = %142, %132
  store i32 0, i32* %13, align 4
  %156 = load %struct.wf_control**, %struct.wf_control*** @cpu_pumps, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %156, i64 %158
  %160 = load %struct.wf_control*, %struct.wf_control** %159, align 8
  %161 = icmp ne %struct.wf_control* %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %155
  %163 = load %struct.wf_control**, %struct.wf_control*** @cpu_pumps, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %163, i64 %165
  %167 = load %struct.wf_control*, %struct.wf_control** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @wf_control_set(%struct.wf_control* %167, i32 %168)
  store i32 %169, i32* %13, align 4
  br label %170

170:                                              ; preds = %162, %155
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %170
  %174 = load %struct.wf_control**, %struct.wf_control*** @cpu_pumps, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %174, i64 %176
  %178 = load %struct.wf_control*, %struct.wf_control** %177, align 8
  %179 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %180, i32 %181)
  %183 = load i32, i32* @FAILURE_FAN, align 4
  %184 = load i32, i32* @failure_state, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* @failure_state, align 4
  br label %186

186:                                              ; preds = %173, %170
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  br label %103

190:                                              ; preds = %31, %40, %54, %103
  ret void
}

declare dso_local i32 @DBG_LOTS(i8*, ...) #1

declare dso_local i32 @wf_control_get(%struct.wf_control*, i32*) #1

declare dso_local i32 @read_one_cpu_vals(i32, i32*, i32*) #1

declare dso_local i32 @cpu_max_all_fans(...) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @cpu_check_overtemp(i32) #1

declare dso_local i32 @wf_cpu_pid_run(%struct.wf_cpu_pid_state*, i32, i32) #1

declare dso_local i32 @wf_control_get_max(%struct.wf_control*) #1

declare dso_local i32 @wf_control_set(%struct.wf_control*, i32) #1

declare dso_local i32 @pr_warning(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
