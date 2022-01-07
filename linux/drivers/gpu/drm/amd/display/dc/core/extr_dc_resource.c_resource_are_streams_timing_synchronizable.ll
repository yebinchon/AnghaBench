; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_are_streams_timing_synchronizable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_are_streams_timing_synchronizable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_stream_state = type { i64, i64, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resource_are_streams_timing_synchronizable(%struct.dc_stream_state* %0, %struct.dc_stream_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_stream_state*, align 8
  %5 = alloca %struct.dc_stream_state*, align 8
  store %struct.dc_stream_state* %0, %struct.dc_stream_state** %4, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %5, align 8
  %6 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %7 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %11 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %9, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

16:                                               ; preds = %2
  %17 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %18 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %22 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %113

27:                                               ; preds = %16
  %28 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %29 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %33 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %113

38:                                               ; preds = %27
  %39 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %40 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %44 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %113

49:                                               ; preds = %38
  %50 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %51 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %55 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %113

60:                                               ; preds = %49
  %61 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %62 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %66 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %113

71:                                               ; preds = %60
  %72 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %73 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %76 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %71
  %80 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %81 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dc_is_dp_signal(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %87 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dc_is_dp_signal(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85, %79
  store i32 0, i32* %3, align 4
  br label %113

92:                                               ; preds = %85, %71
  %93 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %94 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %97 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %113

101:                                              ; preds = %92
  %102 = load %struct.dc_stream_state*, %struct.dc_stream_state** %4, align 8
  %103 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load %struct.dc_stream_state*, %struct.dc_stream_state** %5, align 8
  %108 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106, %101
  store i32 0, i32* %3, align 4
  br label %113

112:                                              ; preds = %106
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %111, %100, %91, %70, %59, %48, %37, %26, %15
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @dc_is_dp_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
