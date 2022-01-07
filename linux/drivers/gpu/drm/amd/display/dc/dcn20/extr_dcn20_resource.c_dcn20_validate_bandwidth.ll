; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_validate_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_validate_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.dc_state = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { double, double }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcn20_validate_bandwidth(%struct.dc* %0, %struct.dc_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_state* %1, %struct.dc_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %13 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  store double %17, double* %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.dc*, %struct.dc** %5, align 8
  %22 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %23 = call i32 @dcn20_validate_bandwidth_internal(%struct.dc* %21, %struct.dc_state* %22, i32 1)
  store i32 %23, i32* %4, align 4
  br label %105

24:                                               ; preds = %3
  %25 = load %struct.dc*, %struct.dc** %5, align 8
  %26 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %27 = call i32 @dcn20_validate_bandwidth_internal(%struct.dc* %25, %struct.dc_state* %26, i32 0)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %29 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %36 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load double, double* %39, align 8
  %41 = fcmp oeq double %40, 0.000000e+00
  br i1 %41, label %48, label %42

42:                                               ; preds = %24
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45, %24
  %49 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %50 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %91

55:                                               ; preds = %45, %42
  %56 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %57 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %63 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store double %61, double* %66, align 8
  %67 = load %struct.dc*, %struct.dc** %5, align 8
  %68 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %69 = call i32 @dcn20_validate_bandwidth_internal(%struct.dc* %67, %struct.dc_state* %68, i32 0)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %71 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %55
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %84 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %91

89:                                               ; preds = %79, %55
  %90 = call i32 @ASSERT(i32 0)
  br label %91

91:                                               ; preds = %89, %82, %48
  %92 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %93 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.dc*, %struct.dc** %5, align 8
  %96 = getelementptr inbounds %struct.dc, %struct.dc* %95, i32 0, i32 0
  %97 = call i32 @memcpy(%struct.TYPE_12__* %94, i32* %96, i32 4)
  %98 = load double, double* %11, align 8
  %99 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %100 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store double %98, double* %103, align 8
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %91, %20
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @dcn20_validate_bandwidth_internal(%struct.dc*, %struct.dc_state*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
