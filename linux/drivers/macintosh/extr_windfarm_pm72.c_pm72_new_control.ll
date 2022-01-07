; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm72.c_pm72_new_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm72.c_pm72_new_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_control = type { i32 }

@cpu_pumps = common dso_local global %struct.wf_control** null, align 8
@.str = private unnamed_addr constant [16 x i8] c"cpu-front-fan-0\00", align 1
@cpu_front_fans = common dso_local global %struct.wf_control** null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"cpu-front-fan-1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"cpu-rear-fan-0\00", align 1
@cpu_rear_fans = common dso_local global %struct.wf_control** null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"cpu-rear-fan-1\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"cpu-pump-0\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"cpu-pump-1\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"backside-fan\00", align 1
@backside_fan = common dso_local global %struct.wf_control* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"slots-fan\00", align 1
@slots_fan = common dso_local global %struct.wf_control* null, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"drive-bay-fan\00", align 1
@drives_fan = common dso_local global %struct.wf_control* null, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"cpufreq-clamp\00", align 1
@cpufreq_clamp = common dso_local global %struct.wf_control* null, align 8
@nr_chips = common dso_local global i32 0, align 4
@have_all_controls = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [65 x i8] c"wf_pm72: Liquid cooling pump(s) detected, using new algorithm !\0A\00", align 1
@cpu_pid_combined = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_control*)* @pm72_new_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm72_new_control(%struct.wf_control* %0) #0 {
  %2 = alloca %struct.wf_control*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.wf_control* %0, %struct.wf_control** %2, align 8
  %5 = load %struct.wf_control**, %struct.wf_control*** @cpu_pumps, align 8
  %6 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %5, i64 0
  %7 = load %struct.wf_control*, %struct.wf_control** %6, align 8
  %8 = icmp ne %struct.wf_control* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.wf_control**, %struct.wf_control*** @cpu_pumps, align 8
  %11 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %10, i64 1
  %12 = load %struct.wf_control*, %struct.wf_control** %11, align 8
  %13 = icmp ne %struct.wf_control* %12, null
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i1 [ true, %1 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %18 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strcmp(i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %14
  %23 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %24 = load %struct.wf_control**, %struct.wf_control*** @cpu_front_fans, align 8
  %25 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %24, i64 0
  store %struct.wf_control* %23, %struct.wf_control** %25, align 8
  br label %117

26:                                               ; preds = %14
  %27 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %28 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcmp(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %34 = load %struct.wf_control**, %struct.wf_control*** @cpu_front_fans, align 8
  %35 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %34, i64 1
  store %struct.wf_control* %33, %struct.wf_control** %35, align 8
  br label %116

36:                                               ; preds = %26
  %37 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %38 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcmp(i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %44 = load %struct.wf_control**, %struct.wf_control*** @cpu_rear_fans, align 8
  %45 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %44, i64 0
  store %struct.wf_control* %43, %struct.wf_control** %45, align 8
  br label %115

46:                                               ; preds = %36
  %47 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %48 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcmp(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %54 = load %struct.wf_control**, %struct.wf_control*** @cpu_rear_fans, align 8
  %55 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %54, i64 1
  store %struct.wf_control* %53, %struct.wf_control** %55, align 8
  br label %114

56:                                               ; preds = %46
  %57 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %58 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strcmp(i32 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %64 = load %struct.wf_control**, %struct.wf_control*** @cpu_pumps, align 8
  %65 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %64, i64 0
  store %struct.wf_control* %63, %struct.wf_control** %65, align 8
  br label %113

66:                                               ; preds = %56
  %67 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %68 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @strcmp(i32 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %74 = load %struct.wf_control**, %struct.wf_control*** @cpu_pumps, align 8
  %75 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %74, i64 1
  store %struct.wf_control* %73, %struct.wf_control** %75, align 8
  br label %112

76:                                               ; preds = %66
  %77 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %78 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @strcmp(i32 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  %83 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  store %struct.wf_control* %83, %struct.wf_control** @backside_fan, align 8
  br label %111

84:                                               ; preds = %76
  %85 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %86 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @strcmp(i32 %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  store %struct.wf_control* %91, %struct.wf_control** @slots_fan, align 8
  br label %110

92:                                               ; preds = %84
  %93 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %94 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @strcmp(i32 %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %92
  %99 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  store %struct.wf_control* %99, %struct.wf_control** @drives_fan, align 8
  br label %109

100:                                              ; preds = %92
  %101 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %102 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @strcmp(i32 %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %100
  %107 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  store %struct.wf_control* %107, %struct.wf_control** @cpufreq_clamp, align 8
  br label %108

108:                                              ; preds = %106, %100
  br label %109

109:                                              ; preds = %108, %98
  br label %110

110:                                              ; preds = %109, %90
  br label %111

111:                                              ; preds = %110, %82
  br label %112

112:                                              ; preds = %111, %72
  br label %113

113:                                              ; preds = %112, %62
  br label %114

114:                                              ; preds = %113, %52
  br label %115

115:                                              ; preds = %114, %42
  br label %116

116:                                              ; preds = %115, %32
  br label %117

117:                                              ; preds = %116, %22
  %118 = load %struct.wf_control**, %struct.wf_control*** @cpu_front_fans, align 8
  %119 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %118, i64 0
  %120 = load %struct.wf_control*, %struct.wf_control** %119, align 8
  %121 = icmp ne %struct.wf_control* %120, null
  br i1 %121, label %122, label %136

122:                                              ; preds = %117
  %123 = load %struct.wf_control**, %struct.wf_control*** @cpu_rear_fans, align 8
  %124 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %123, i64 0
  %125 = load %struct.wf_control*, %struct.wf_control** %124, align 8
  %126 = icmp ne %struct.wf_control* %125, null
  br i1 %126, label %127, label %136

127:                                              ; preds = %122
  %128 = load %struct.wf_control*, %struct.wf_control** @backside_fan, align 8
  %129 = icmp ne %struct.wf_control* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load %struct.wf_control*, %struct.wf_control** @slots_fan, align 8
  %132 = icmp ne %struct.wf_control* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.wf_control*, %struct.wf_control** @drives_fan, align 8
  %135 = icmp ne %struct.wf_control* %134, null
  br label %136

136:                                              ; preds = %133, %130, %127, %122, %117
  %137 = phi i1 [ false, %130 ], [ false, %127 ], [ false, %122 ], [ false, %117 ], [ %135, %133 ]
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %3, align 4
  %139 = load i32, i32* @nr_chips, align 4
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %141, label %156

141:                                              ; preds = %136
  %142 = load %struct.wf_control**, %struct.wf_control*** @cpu_front_fans, align 8
  %143 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %142, i64 1
  %144 = load %struct.wf_control*, %struct.wf_control** %143, align 8
  %145 = icmp ne %struct.wf_control* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.wf_control**, %struct.wf_control*** @cpu_rear_fans, align 8
  %148 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %147, i64 1
  %149 = load %struct.wf_control*, %struct.wf_control** %148, align 8
  %150 = icmp ne %struct.wf_control* %149, null
  br label %151

151:                                              ; preds = %146, %141
  %152 = phi i1 [ false, %141 ], [ %150, %146 ]
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %3, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %151, %136
  %157 = load i32, i32* %3, align 4
  store i32 %157, i32* @have_all_controls, align 4
  %158 = load %struct.wf_control**, %struct.wf_control*** @cpu_pumps, align 8
  %159 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %158, i64 0
  %160 = load %struct.wf_control*, %struct.wf_control** %159, align 8
  %161 = icmp ne %struct.wf_control* %160, null
  br i1 %161, label %167, label %162

162:                                              ; preds = %156
  %163 = load %struct.wf_control**, %struct.wf_control*** @cpu_pumps, align 8
  %164 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %163, i64 1
  %165 = load %struct.wf_control*, %struct.wf_control** %164, align 8
  %166 = icmp ne %struct.wf_control* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %162, %156
  %168 = load i32, i32* %4, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %167
  %171 = call i32 @pr_info(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* @cpu_pid_combined, align 4
  br label %172

172:                                              ; preds = %170, %167, %162
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
