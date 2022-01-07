; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm112.c_pm112_new_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm112.c_pm112_new_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_control = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.wf_control*)* }

@cpufreq_clamp = common dso_local global %struct.wf_control* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"cpufreq-clamp\00", align 1
@NR_CPU_FANS = common dso_local global i32 0, align 4
@cpu_fan_names = common dso_local global i8** null, align 8
@cpu_fans = common dso_local global %struct.wf_control** null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"backside-fan\00", align 1
@backside_fan = common dso_local global %struct.wf_control* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"slots-fan\00", align 1
@slots_fan = common dso_local global %struct.wf_control* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"drive-bay-fan\00", align 1
@drive_bay_fan = common dso_local global %struct.wf_control* null, align 8
@CPU_FANS_REQD = common dso_local global i32 0, align 4
@FIRST_PUMP = common dso_local global i32 0, align 4
@LAST_PUMP = common dso_local global i32 0, align 4
@cpu_fan_scale = common dso_local global i32* null, align 8
@have_all_controls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_control*)* @pm112_new_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm112_new_control(%struct.wf_control* %0) #0 {
  %2 = alloca %struct.wf_control*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.wf_control* %0, %struct.wf_control** %2, align 8
  %5 = load %struct.wf_control*, %struct.wf_control** @cpufreq_clamp, align 8
  %6 = icmp eq %struct.wf_control* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %9 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @strcmp(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %7
  %14 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %15 = call i64 @wf_get_control(%struct.wf_control* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  store %struct.wf_control* %18, %struct.wf_control** @cpufreq_clamp, align 8
  br label %19

19:                                               ; preds = %17, %13
  br label %20

20:                                               ; preds = %19, %7, %1
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %55, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @NR_CPU_FANS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %27 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i8**, i8*** @cpu_fan_names, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i32 %28, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %25
  %37 = load %struct.wf_control**, %struct.wf_control*** @cpu_fans, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %37, i64 %39
  %41 = load %struct.wf_control*, %struct.wf_control** %40, align 8
  %42 = icmp eq %struct.wf_control* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %45 = call i64 @wf_get_control(%struct.wf_control* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %49 = load %struct.wf_control**, %struct.wf_control*** @cpu_fans, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %49, i64 %51
  store %struct.wf_control* %48, %struct.wf_control** %52, align 8
  br label %53

53:                                               ; preds = %47, %43, %36
  br label %58

54:                                               ; preds = %25
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %21

58:                                               ; preds = %53, %21
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @NR_CPU_FANS, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %113

62:                                               ; preds = %58
  %63 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %64 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @strcmp(i32 %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %62
  %69 = load %struct.wf_control*, %struct.wf_control** @backside_fan, align 8
  %70 = icmp eq %struct.wf_control* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %73 = call i64 @wf_get_control(%struct.wf_control* %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  store %struct.wf_control* %76, %struct.wf_control** @backside_fan, align 8
  br label %77

77:                                               ; preds = %75, %71, %68
  br label %112

78:                                               ; preds = %62
  %79 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %80 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @strcmp(i32 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %78
  %85 = load %struct.wf_control*, %struct.wf_control** @slots_fan, align 8
  %86 = icmp eq %struct.wf_control* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %89 = call i64 @wf_get_control(%struct.wf_control* %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  store %struct.wf_control* %92, %struct.wf_control** @slots_fan, align 8
  br label %93

93:                                               ; preds = %91, %87, %84
  br label %111

94:                                               ; preds = %78
  %95 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %96 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @strcmp(i32 %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %94
  %101 = load %struct.wf_control*, %struct.wf_control** @drive_bay_fan, align 8
  %102 = icmp eq %struct.wf_control* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %105 = call i64 @wf_get_control(%struct.wf_control* %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  store %struct.wf_control* %108, %struct.wf_control** @drive_bay_fan, align 8
  br label %109

109:                                              ; preds = %107, %103, %100
  br label %110

110:                                              ; preds = %109, %94
  br label %111

111:                                              ; preds = %110, %93
  br label %112

112:                                              ; preds = %111, %77
  br label %174

113:                                              ; preds = %58
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %127, %113
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @CPU_FANS_REQD, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load %struct.wf_control**, %struct.wf_control*** @cpu_fans, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %119, i64 %121
  %123 = load %struct.wf_control*, %struct.wf_control** %122, align 8
  %124 = icmp eq %struct.wf_control* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %174

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  br label %114

130:                                              ; preds = %114
  %131 = load %struct.wf_control**, %struct.wf_control*** @cpu_fans, align 8
  %132 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %131, i64 0
  %133 = load %struct.wf_control*, %struct.wf_control** %132, align 8
  %134 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32 (%struct.wf_control*)*, i32 (%struct.wf_control*)** %136, align 8
  %138 = load %struct.wf_control**, %struct.wf_control*** @cpu_fans, align 8
  %139 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %138, i64 0
  %140 = load %struct.wf_control*, %struct.wf_control** %139, align 8
  %141 = call i32 %137(%struct.wf_control* %140)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* @FIRST_PUMP, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %170, %130
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* @LAST_PUMP, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %173

147:                                              ; preds = %143
  %148 = load %struct.wf_control**, %struct.wf_control*** @cpu_fans, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %148, i64 %150
  %152 = load %struct.wf_control*, %struct.wf_control** %151, align 8
  store %struct.wf_control* %152, %struct.wf_control** %2, align 8
  %153 = icmp ne %struct.wf_control* %152, null
  br i1 %153, label %154, label %169

154:                                              ; preds = %147
  %155 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %156 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32 (%struct.wf_control*)*, i32 (%struct.wf_control*)** %158, align 8
  %160 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %161 = call i32 %159(%struct.wf_control* %160)
  %162 = mul nsw i32 %161, 100
  %163 = load i32, i32* %4, align 4
  %164 = sdiv i32 %162, %163
  %165 = load i32*, i32** @cpu_fan_scale, align 8
  %166 = load i32, i32* %3, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %154, %147
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %3, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %3, align 4
  br label %143

173:                                              ; preds = %143
  store i32 1, i32* @have_all_controls, align 4
  br label %174

174:                                              ; preds = %173, %125, %112
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @wf_get_control(%struct.wf_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
