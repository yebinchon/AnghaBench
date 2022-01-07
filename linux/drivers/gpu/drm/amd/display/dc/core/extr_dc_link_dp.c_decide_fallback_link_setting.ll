; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_decide_fallback_link_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_decide_fallback_link_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link_settings = type { i8*, i8* }

@LANE_COUNT_ONE = common dso_local global i8* null, align 8
@LANE_COUNT_TWO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.dc_link_settings*, i32)* @decide_fallback_link_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decide_fallback_link_setting(i8* %0, i8* %1, %struct.dc_link_settings* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_link_settings, align 8
  %7 = alloca %struct.dc_link_settings*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.dc_link_settings* %6 to { i8*, i8* }*
  %10 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %9, i32 0, i32 0
  store i8* %0, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %9, i32 0, i32 1
  store i8* %1, i8** %11, align 8
  store %struct.dc_link_settings* %2, %struct.dc_link_settings** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %13 = icmp ne %struct.dc_link_settings* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %117

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %115 [
    i32 133, label %17
    i32 132, label %17
    i32 131, label %17
    i32 128, label %17
    i32 129, label %71
    i32 130, label %100
  ]

17:                                               ; preds = %15, %15, %15, %15
  %18 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %19 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @reached_minimum_link_rate(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %25 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @reduce_link_rate(i8* %26)
  %28 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %29 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %70

30:                                               ; preds = %17
  %31 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %32 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @reached_minimum_lane_count(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %68, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %6, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %40 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 133
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %117

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 132
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i8*, i8** @LANE_COUNT_ONE, align 8
  %49 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %50 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %66

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 131
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i8*, i8** @LANE_COUNT_TWO, align 8
  %56 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %57 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %65

58:                                               ; preds = %51
  %59 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %60 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @reduce_lane_count(i8* %61)
  %63 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %64 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %58, %54
  br label %66

66:                                               ; preds = %65, %47
  br label %67

67:                                               ; preds = %66
  br label %69

68:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %117

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69, %23
  br label %116

71:                                               ; preds = %15
  %72 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %73 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @reached_minimum_lane_count(i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %79 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i8* @reduce_lane_count(i8* %80)
  %82 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %83 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  br label %99

84:                                               ; preds = %71
  %85 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %86 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @reached_minimum_link_rate(i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %84
  %91 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %92 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i8* @reduce_link_rate(i8* %93)
  %95 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %96 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  br label %98

97:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %117

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %77
  br label %116

100:                                              ; preds = %15
  %101 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %102 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @reached_minimum_link_rate(i8* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %100
  %107 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %108 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @reduce_link_rate(i8* %109)
  %111 = load %struct.dc_link_settings*, %struct.dc_link_settings** %7, align 8
  %112 = getelementptr inbounds %struct.dc_link_settings, %struct.dc_link_settings* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  br label %114

113:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %117

114:                                              ; preds = %106
  br label %116

115:                                              ; preds = %15
  store i32 0, i32* %5, align 4
  br label %117

116:                                              ; preds = %114, %99, %70
  store i32 1, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %115, %113, %97, %68, %43, %14
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @reached_minimum_link_rate(i8*) #1

declare dso_local i8* @reduce_link_rate(i8*) #1

declare dso_local i32 @reached_minimum_lane_count(i8*) #1

declare dso_local i8* @reduce_lane_count(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
