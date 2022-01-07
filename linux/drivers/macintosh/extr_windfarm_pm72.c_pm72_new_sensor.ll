; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm72.c_pm72_new_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm72.c_pm72_new_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_sensor = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"cpu-diode-temp-0\00", align 1
@sens_cpu_temp = common dso_local global %struct.wf_sensor** null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"cpu-diode-temp-1\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"cpu-voltage-0\00", align 1
@sens_cpu_volts = common dso_local global %struct.wf_sensor** null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"cpu-voltage-1\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"cpu-current-0\00", align 1
@sens_cpu_amps = common dso_local global %struct.wf_sensor** null, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"cpu-current-1\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"backside-temp\00", align 1
@backside_temp = common dso_local global %struct.wf_sensor* null, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"hd-temp\00", align 1
@drives_temp = common dso_local global %struct.wf_sensor* null, align 8
@nr_chips = common dso_local global i32 0, align 4
@have_all_sensors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_sensor*)* @pm72_new_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm72_new_sensor(%struct.wf_sensor* %0) #0 {
  %2 = alloca %struct.wf_sensor*, align 8
  %3 = alloca i32, align 4
  store %struct.wf_sensor* %0, %struct.wf_sensor** %2, align 8
  %4 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %5 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @strcmp(i32 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %11 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_temp, align 8
  %12 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %11, i64 0
  store %struct.wf_sensor* %10, %struct.wf_sensor** %12, align 8
  br label %86

13:                                               ; preds = %1
  %14 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %15 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcmp(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %21 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_temp, align 8
  %22 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %21, i64 1
  store %struct.wf_sensor* %20, %struct.wf_sensor** %22, align 8
  br label %85

23:                                               ; preds = %13
  %24 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %25 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcmp(i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %31 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_volts, align 8
  %32 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %31, i64 0
  store %struct.wf_sensor* %30, %struct.wf_sensor** %32, align 8
  br label %84

33:                                               ; preds = %23
  %34 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %35 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strcmp(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %41 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_volts, align 8
  %42 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %41, i64 1
  store %struct.wf_sensor* %40, %struct.wf_sensor** %42, align 8
  br label %83

43:                                               ; preds = %33
  %44 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %45 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strcmp(i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %51 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_amps, align 8
  %52 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %51, i64 0
  store %struct.wf_sensor* %50, %struct.wf_sensor** %52, align 8
  br label %82

53:                                               ; preds = %43
  %54 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %55 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strcmp(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %61 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_amps, align 8
  %62 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %61, i64 1
  store %struct.wf_sensor* %60, %struct.wf_sensor** %62, align 8
  br label %81

63:                                               ; preds = %53
  %64 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %65 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strcmp(i32 %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  store %struct.wf_sensor* %70, %struct.wf_sensor** @backside_temp, align 8
  br label %80

71:                                               ; preds = %63
  %72 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %73 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @strcmp(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  store %struct.wf_sensor* %78, %struct.wf_sensor** @drives_temp, align 8
  br label %79

79:                                               ; preds = %77, %71
  br label %80

80:                                               ; preds = %79, %69
  br label %81

81:                                               ; preds = %80, %59
  br label %82

82:                                               ; preds = %81, %49
  br label %83

83:                                               ; preds = %82, %39
  br label %84

84:                                               ; preds = %83, %29
  br label %85

85:                                               ; preds = %84, %19
  br label %86

86:                                               ; preds = %85, %9
  %87 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_temp, align 8
  %88 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %87, i64 0
  %89 = load %struct.wf_sensor*, %struct.wf_sensor** %88, align 8
  %90 = icmp ne %struct.wf_sensor* %89, null
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_volts, align 8
  %93 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %92, i64 0
  %94 = load %struct.wf_sensor*, %struct.wf_sensor** %93, align 8
  %95 = icmp ne %struct.wf_sensor* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_amps, align 8
  %98 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %97, i64 0
  %99 = load %struct.wf_sensor*, %struct.wf_sensor** %98, align 8
  %100 = icmp ne %struct.wf_sensor* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.wf_sensor*, %struct.wf_sensor** @backside_temp, align 8
  %103 = icmp ne %struct.wf_sensor* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.wf_sensor*, %struct.wf_sensor** @drives_temp, align 8
  %106 = icmp ne %struct.wf_sensor* %105, null
  br label %107

107:                                              ; preds = %104, %101, %96, %91, %86
  %108 = phi i1 [ false, %101 ], [ false, %96 ], [ false, %91 ], [ false, %86 ], [ %106, %104 ]
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* @nr_chips, align 4
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %112, label %132

112:                                              ; preds = %107
  %113 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_temp, align 8
  %114 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %113, i64 1
  %115 = load %struct.wf_sensor*, %struct.wf_sensor** %114, align 8
  %116 = icmp ne %struct.wf_sensor* %115, null
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_volts, align 8
  %119 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %118, i64 1
  %120 = load %struct.wf_sensor*, %struct.wf_sensor** %119, align 8
  %121 = icmp ne %struct.wf_sensor* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.wf_sensor**, %struct.wf_sensor*** @sens_cpu_amps, align 8
  %124 = getelementptr inbounds %struct.wf_sensor*, %struct.wf_sensor** %123, i64 1
  %125 = load %struct.wf_sensor*, %struct.wf_sensor** %124, align 8
  %126 = icmp ne %struct.wf_sensor* %125, null
  br label %127

127:                                              ; preds = %122, %117, %112
  %128 = phi i1 [ false, %117 ], [ false, %112 ], [ %126, %122 ]
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %3, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %127, %107
  %133 = load i32, i32* %3, align 4
  store i32 %133, i32* @have_all_sensors, align 4
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
