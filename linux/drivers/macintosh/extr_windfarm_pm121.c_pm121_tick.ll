; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm121.c_pm121_tick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm121.c_pm121_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64* }
%struct.TYPE_5__ = type { i32 }

@pm121_failure_state = common dso_local global i32 0, align 4
@pm121_started = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"pm121: creating control loops !\0A\00", align 1
@N_LOOPS = common dso_local global i32 0, align 4
@pm121_skipping = common dso_local global i32 0, align 4
@pm121_cpu_state = common dso_local global %struct.TYPE_7__* null, align 8
@average_power = common dso_local global i32 0, align 4
@pm121_sys_state = common dso_local global i64* null, align 8
@pm121_readjust = common dso_local global i32 0, align 4
@N_CONTROLS = common dso_local global i32 0, align 4
@controls = common dso_local global i64* null, align 8
@CPUFREQ = common dso_local global i64 0, align 8
@FAILURE_OVERTEMP = common dso_local global i32 0, align 4
@pm121_overtemp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pm121_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm121_tick() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @pm121_failure_state, align 4
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @pm121_started, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %0
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %17, %8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @N_LOOPS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @pm121_create_sys_fans(i32 %15)
  br label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %10

20:                                               ; preds = %10
  %21 = call i32 (...) @pm121_create_cpu_fans()
  store i32 1, i32* @pm121_started, align 4
  br label %22

22:                                               ; preds = %20, %0
  %23 = load i32, i32* @pm121_skipping, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* @pm121_skipping, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* @pm121_skipping, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %155

30:                                               ; preds = %25, %22
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %52, %30
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm121_cpu_state, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %31
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm121_cpu_state, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %31

55:                                               ; preds = %31
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm121_cpu_state, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sdiv i32 %56, %61
  store i32 %62, i32* @average_power, align 4
  store i32 0, i32* @pm121_failure_state, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %78, %55
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @N_LOOPS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i64*, i64** @pm121_sys_state, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @pm121_sys_fans_tick(i32 %75)
  br label %77

77:                                               ; preds = %74, %67
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %63

81:                                               ; preds = %63
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm121_cpu_state, align 8
  %83 = icmp ne %struct.TYPE_7__* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pm121_cpu_state, align 8
  %86 = call i32 @pm121_cpu_fans_tick(%struct.TYPE_7__* %85)
  br label %87

87:                                               ; preds = %84, %81
  store i32 0, i32* @pm121_readjust, align 4
  %88 = load i32, i32* @pm121_failure_state, align 4
  %89 = load i32, i32* %1, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  store i32 %91, i32* %2, align 4
  %92 = load i32, i32* @pm121_failure_state, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %87
  %95 = load i32, i32* %1, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %121, label %97

97:                                               ; preds = %94
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %117, %97
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @N_CONTROLS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %98
  %103 = load i64*, i64** @controls, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %102
  %110 = load i64*, i64** @controls, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @wf_control_set_max(i64 %114)
  br label %116

116:                                              ; preds = %109, %102
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %98

120:                                              ; preds = %98
  br label %121

121:                                              ; preds = %120, %94, %87
  %122 = load i32, i32* @pm121_failure_state, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %140, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %1, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load i64*, i64** @controls, align 8
  %129 = load i64, i64* @CPUFREQ, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load i64*, i64** @controls, align 8
  %135 = load i64, i64* @CPUFREQ, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @wf_control_set_min(i64 %137)
  br label %139

139:                                              ; preds = %133, %127
  store i32 1, i32* @pm121_readjust, align 4
  br label %140

140:                                              ; preds = %139, %124, %121
  %141 = load i32, i32* %2, align 4
  %142 = load i32, i32* @FAILURE_OVERTEMP, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = call i32 (...) @wf_set_overtemp()
  store i32 2, i32* @pm121_skipping, align 4
  store i32 1, i32* @pm121_overtemp, align 4
  br label %147

147:                                              ; preds = %145, %140
  %148 = load i32, i32* @pm121_failure_state, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* @pm121_overtemp, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call i32 (...) @wf_clear_overtemp()
  store i32 0, i32* @pm121_overtemp, align 4
  br label %155

155:                                              ; preds = %29, %153, %150, %147
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pm121_create_sys_fans(i32) #1

declare dso_local i32 @pm121_create_cpu_fans(...) #1

declare dso_local i32 @pm121_sys_fans_tick(i32) #1

declare dso_local i32 @pm121_cpu_fans_tick(%struct.TYPE_7__*) #1

declare dso_local i32 @wf_control_set_max(i64) #1

declare dso_local i32 @wf_control_set_min(i64) #1

declare dso_local i32 @wf_set_overtemp(...) #1

declare dso_local i32 @wf_clear_overtemp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
