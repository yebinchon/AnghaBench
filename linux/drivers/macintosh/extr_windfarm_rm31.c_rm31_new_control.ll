; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_rm31.c_rm31_new_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_rm31.c_rm31_new_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_control = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"cpu-fan-a-0\00", align 1
@cpu_fans = common dso_local global %struct.wf_control*** null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"cpu-fan-b-0\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"cpu-fan-c-0\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"cpu-fan-a-1\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"cpu-fan-b-1\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"cpu-fan-c-1\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"backside-fan\00", align 1
@backside_fan = common dso_local global %struct.wf_control* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"slots-fan\00", align 1
@slots_fan = common dso_local global %struct.wf_control* null, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"cpufreq-clamp\00", align 1
@cpufreq_clamp = common dso_local global %struct.wf_control* null, align 8
@nr_chips = common dso_local global i32 0, align 4
@have_all_controls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_control*)* @rm31_new_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rm31_new_control(%struct.wf_control* %0) #0 {
  %2 = alloca %struct.wf_control*, align 8
  %3 = alloca i32, align 4
  store %struct.wf_control* %0, %struct.wf_control** %2, align 8
  %4 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %5 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @strcmp(i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %11 = load %struct.wf_control***, %struct.wf_control**** @cpu_fans, align 8
  %12 = getelementptr inbounds %struct.wf_control**, %struct.wf_control*** %11, i64 0
  %13 = load %struct.wf_control**, %struct.wf_control*** %12, align 8
  %14 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %13, i64 0
  store %struct.wf_control* %10, %struct.wf_control** %14, align 8
  br label %107

15:                                               ; preds = %1
  %16 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %17 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strcmp(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %23 = load %struct.wf_control***, %struct.wf_control**** @cpu_fans, align 8
  %24 = getelementptr inbounds %struct.wf_control**, %struct.wf_control*** %23, i64 0
  %25 = load %struct.wf_control**, %struct.wf_control*** %24, align 8
  %26 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %25, i64 1
  store %struct.wf_control* %22, %struct.wf_control** %26, align 8
  br label %106

27:                                               ; preds = %15
  %28 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %29 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcmp(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %35 = load %struct.wf_control***, %struct.wf_control**** @cpu_fans, align 8
  %36 = getelementptr inbounds %struct.wf_control**, %struct.wf_control*** %35, i64 0
  %37 = load %struct.wf_control**, %struct.wf_control*** %36, align 8
  %38 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %37, i64 2
  store %struct.wf_control* %34, %struct.wf_control** %38, align 8
  br label %105

39:                                               ; preds = %27
  %40 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %41 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strcmp(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %47 = load %struct.wf_control***, %struct.wf_control**** @cpu_fans, align 8
  %48 = getelementptr inbounds %struct.wf_control**, %struct.wf_control*** %47, i64 1
  %49 = load %struct.wf_control**, %struct.wf_control*** %48, align 8
  %50 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %49, i64 0
  store %struct.wf_control* %46, %struct.wf_control** %50, align 8
  br label %104

51:                                               ; preds = %39
  %52 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %53 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcmp(i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %59 = load %struct.wf_control***, %struct.wf_control**** @cpu_fans, align 8
  %60 = getelementptr inbounds %struct.wf_control**, %struct.wf_control*** %59, i64 1
  %61 = load %struct.wf_control**, %struct.wf_control*** %60, align 8
  %62 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %61, i64 1
  store %struct.wf_control* %58, %struct.wf_control** %62, align 8
  br label %103

63:                                               ; preds = %51
  %64 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %65 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strcmp(i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %71 = load %struct.wf_control***, %struct.wf_control**** @cpu_fans, align 8
  %72 = getelementptr inbounds %struct.wf_control**, %struct.wf_control*** %71, i64 1
  %73 = load %struct.wf_control**, %struct.wf_control*** %72, align 8
  %74 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %73, i64 2
  store %struct.wf_control* %70, %struct.wf_control** %74, align 8
  br label %102

75:                                               ; preds = %63
  %76 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %77 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @strcmp(i32 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  store %struct.wf_control* %82, %struct.wf_control** @backside_fan, align 8
  br label %101

83:                                               ; preds = %75
  %84 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %85 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @strcmp(i32 %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %83
  %90 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  store %struct.wf_control* %90, %struct.wf_control** @slots_fan, align 8
  br label %100

91:                                               ; preds = %83
  %92 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %93 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @strcmp(i32 %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  store %struct.wf_control* %98, %struct.wf_control** @cpufreq_clamp, align 8
  br label %99

99:                                               ; preds = %97, %91
  br label %100

100:                                              ; preds = %99, %89
  br label %101

101:                                              ; preds = %100, %81
  br label %102

102:                                              ; preds = %101, %69
  br label %103

103:                                              ; preds = %102, %57
  br label %104

104:                                              ; preds = %103, %45
  br label %105

105:                                              ; preds = %104, %33
  br label %106

106:                                              ; preds = %105, %21
  br label %107

107:                                              ; preds = %106, %9
  %108 = load %struct.wf_control***, %struct.wf_control**** @cpu_fans, align 8
  %109 = getelementptr inbounds %struct.wf_control**, %struct.wf_control*** %108, i64 0
  %110 = load %struct.wf_control**, %struct.wf_control*** %109, align 8
  %111 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %110, i64 0
  %112 = load %struct.wf_control*, %struct.wf_control** %111, align 8
  %113 = icmp ne %struct.wf_control* %112, null
  br i1 %113, label %114, label %134

114:                                              ; preds = %107
  %115 = load %struct.wf_control***, %struct.wf_control**** @cpu_fans, align 8
  %116 = getelementptr inbounds %struct.wf_control**, %struct.wf_control*** %115, i64 0
  %117 = load %struct.wf_control**, %struct.wf_control*** %116, align 8
  %118 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %117, i64 1
  %119 = load %struct.wf_control*, %struct.wf_control** %118, align 8
  %120 = icmp ne %struct.wf_control* %119, null
  br i1 %120, label %121, label %134

121:                                              ; preds = %114
  %122 = load %struct.wf_control***, %struct.wf_control**** @cpu_fans, align 8
  %123 = getelementptr inbounds %struct.wf_control**, %struct.wf_control*** %122, i64 0
  %124 = load %struct.wf_control**, %struct.wf_control*** %123, align 8
  %125 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %124, i64 2
  %126 = load %struct.wf_control*, %struct.wf_control** %125, align 8
  %127 = icmp ne %struct.wf_control* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load %struct.wf_control*, %struct.wf_control** @backside_fan, align 8
  %130 = icmp ne %struct.wf_control* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.wf_control*, %struct.wf_control** @slots_fan, align 8
  %133 = icmp ne %struct.wf_control* %132, null
  br label %134

134:                                              ; preds = %131, %128, %121, %114, %107
  %135 = phi i1 [ false, %128 ], [ false, %121 ], [ false, %114 ], [ false, %107 ], [ %133, %131 ]
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %3, align 4
  %137 = load i32, i32* @nr_chips, align 4
  %138 = icmp sgt i32 %137, 1
  br i1 %138, label %139, label %165

139:                                              ; preds = %134
  %140 = load %struct.wf_control***, %struct.wf_control**** @cpu_fans, align 8
  %141 = getelementptr inbounds %struct.wf_control**, %struct.wf_control*** %140, i64 1
  %142 = load %struct.wf_control**, %struct.wf_control*** %141, align 8
  %143 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %142, i64 0
  %144 = load %struct.wf_control*, %struct.wf_control** %143, align 8
  %145 = icmp ne %struct.wf_control* %144, null
  br i1 %145, label %146, label %160

146:                                              ; preds = %139
  %147 = load %struct.wf_control***, %struct.wf_control**** @cpu_fans, align 8
  %148 = getelementptr inbounds %struct.wf_control**, %struct.wf_control*** %147, i64 1
  %149 = load %struct.wf_control**, %struct.wf_control*** %148, align 8
  %150 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %149, i64 1
  %151 = load %struct.wf_control*, %struct.wf_control** %150, align 8
  %152 = icmp ne %struct.wf_control* %151, null
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = load %struct.wf_control***, %struct.wf_control**** @cpu_fans, align 8
  %155 = getelementptr inbounds %struct.wf_control**, %struct.wf_control*** %154, i64 1
  %156 = load %struct.wf_control**, %struct.wf_control*** %155, align 8
  %157 = getelementptr inbounds %struct.wf_control*, %struct.wf_control** %156, i64 2
  %158 = load %struct.wf_control*, %struct.wf_control** %157, align 8
  %159 = icmp ne %struct.wf_control* %158, null
  br label %160

160:                                              ; preds = %153, %146, %139
  %161 = phi i1 [ false, %146 ], [ false, %139 ], [ %159, %153 ]
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %3, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %160, %134
  %166 = load i32, i32* %3, align 4
  store i32 %166, i32* @have_all_controls, align 4
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
