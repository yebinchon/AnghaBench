; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm112.c_pm112_new_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm112.c_pm112_new_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_sensor = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"cpu-temp-\00", align 1
@NR_CORES = common dso_local global i32 0, align 4
@sens_cpu_temp = common dso_local global %struct.wf_sensor** null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"cpu-power-\00", align 1
@sens_cpu_power = common dso_local global %struct.wf_sensor** null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"hd-temp\00", align 1
@hd_temp = common dso_local global %struct.wf_sensor* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"slots-power\00", align 1
@slots_power = common dso_local global %struct.wf_sensor* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"backside-temp\00", align 1
@u4_temp = common dso_local global %struct.wf_sensor* null, align 8
@nr_cores = common dso_local global i32 0, align 4
@have_all_sensors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_sensor*)* @pm112_new_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm112_new_sensor(%struct.wf_sensor* %0) #0 {
  %2 = alloca %struct.wf_sensor*, align 8
  %3 = alloca i32, align 4
  store %struct.wf_sensor* %0, %struct.wf_sensor** %2, align 8
  %4 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %5 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @strncmp(i32* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %44, label %9

9:                                                ; preds = %1
  %10 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %11 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 9
  %14 = load i32, i32* %13, align 4
  %15 = sub i32 %14, 48
  store i32 %15, i32* %3, align 4
  %16 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %17 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 10
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %9
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @NR_CORES, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_temp, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %27, i64 %29
  %31 = load %struct.wf_sensor*, %struct.wf_sensor** %30, align 8
  %32 = icmp eq %struct.wf_sensor* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %35 = call i64 @wf_get_sensor(%struct.wf_sensor* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %39 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_temp, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %39, i64 %41
  store %struct.wf_sensor* %38, %struct.wf_sensor** %42, align 8
  br label %43

43:                                               ; preds = %37, %33, %26, %22, %9
  br label %138

44:                                               ; preds = %1
  %45 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %46 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @strncmp(i32* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %85, label %50

50:                                               ; preds = %44
  %51 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %52 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 10
  %55 = load i32, i32* %54, align 4
  %56 = sub i32 %55, 48
  store i32 %56, i32* %3, align 4
  %57 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %58 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 11
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %50
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @NR_CORES, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %63
  %68 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_power, align 8
  %69 = load i32, i32* %3, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %68, i64 %70
  %72 = load %struct.wf_sensor*, %struct.wf_sensor** %71, align 8
  %73 = icmp eq %struct.wf_sensor* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %76 = call i64 @wf_get_sensor(%struct.wf_sensor* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %80 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_power, align 8
  %81 = load i32, i32* %3, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %80, i64 %82
  store %struct.wf_sensor* %79, %struct.wf_sensor** %83, align 8
  br label %84

84:                                               ; preds = %78, %74, %67, %63, %50
  br label %137

85:                                               ; preds = %44
  %86 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %87 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @strcmp(i32* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %85
  %92 = load %struct.wf_sensor*, %struct.wf_sensor** @hd_temp, align 8
  %93 = icmp eq %struct.wf_sensor* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %96 = call i64 @wf_get_sensor(%struct.wf_sensor* %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  store %struct.wf_sensor* %99, %struct.wf_sensor** @hd_temp, align 8
  br label %100

100:                                              ; preds = %98, %94, %91
  br label %136

101:                                              ; preds = %85
  %102 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %103 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @strcmp(i32* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %101
  %108 = load %struct.wf_sensor*, %struct.wf_sensor** @slots_power, align 8
  %109 = icmp eq %struct.wf_sensor* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %112 = call i64 @wf_get_sensor(%struct.wf_sensor* %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  store %struct.wf_sensor* %115, %struct.wf_sensor** @slots_power, align 8
  br label %116

116:                                              ; preds = %114, %110, %107
  br label %135

117:                                              ; preds = %101
  %118 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %119 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @strcmp(i32* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %117
  %124 = load %struct.wf_sensor*, %struct.wf_sensor** @u4_temp, align 8
  %125 = icmp eq %struct.wf_sensor* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %128 = call i64 @wf_get_sensor(%struct.wf_sensor* %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  store %struct.wf_sensor* %131, %struct.wf_sensor** @u4_temp, align 8
  br label %132

132:                                              ; preds = %130, %126, %123
  br label %134

133:                                              ; preds = %117
  br label %163

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134, %116
  br label %136

136:                                              ; preds = %135, %100
  br label %137

137:                                              ; preds = %136, %84
  br label %138

138:                                              ; preds = %137, %43
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %159, %138
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @nr_cores, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %162

143:                                              ; preds = %139
  %144 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_temp, align 8
  %145 = load i32, i32* %3, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %144, i64 %146
  %148 = load %struct.wf_sensor*, %struct.wf_sensor** %147, align 8
  %149 = icmp eq %struct.wf_sensor* %148, null
  br i1 %149, label %157, label %150

150:                                              ; preds = %143
  %151 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_power, align 8
  %152 = load i32, i32* %3, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %151, i64 %153
  %155 = load %struct.wf_sensor*, %struct.wf_sensor** %154, align 8
  %156 = icmp eq %struct.wf_sensor* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %150, %143
  br label %163

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %3, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %3, align 4
  br label %139

162:                                              ; preds = %139
  store i32 1, i32* @have_all_sensors, align 4
  br label %163

163:                                              ; preds = %162, %157, %133
  ret void
}

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local i64 @wf_get_sensor(%struct.wf_sensor*) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
