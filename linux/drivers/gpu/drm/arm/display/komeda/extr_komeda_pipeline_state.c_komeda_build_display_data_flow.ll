; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_build_display_data_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_build_display_data_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_crtc = type { %struct.komeda_pipeline*, %struct.komeda_pipeline* }
%struct.komeda_pipeline = type { i32, i32, i32, i32 }
%struct.komeda_crtc_state = type { i32 }
%struct.komeda_data_flow_cfg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @komeda_build_display_data_flow(%struct.komeda_crtc* %0, %struct.komeda_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.komeda_crtc*, align 8
  %5 = alloca %struct.komeda_crtc_state*, align 8
  %6 = alloca %struct.komeda_pipeline*, align 8
  %7 = alloca %struct.komeda_pipeline*, align 8
  %8 = alloca %struct.komeda_data_flow_cfg, align 4
  %9 = alloca %struct.komeda_data_flow_cfg, align 4
  %10 = alloca i32, align 4
  store %struct.komeda_crtc* %0, %struct.komeda_crtc** %4, align 8
  store %struct.komeda_crtc_state* %1, %struct.komeda_crtc_state** %5, align 8
  %11 = load %struct.komeda_crtc*, %struct.komeda_crtc** %4, align 8
  %12 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %11, i32 0, i32 1
  %13 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %12, align 8
  store %struct.komeda_pipeline* %13, %struct.komeda_pipeline** %6, align 8
  %14 = load %struct.komeda_crtc*, %struct.komeda_crtc** %4, align 8
  %15 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %14, i32 0, i32 0
  %16 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %15, align 8
  store %struct.komeda_pipeline* %16, %struct.komeda_pipeline** %7, align 8
  %17 = call i32 @memset(%struct.komeda_data_flow_cfg* %8, i32 0, i32 4)
  %18 = call i32 @memset(%struct.komeda_data_flow_cfg* %9, i32 0, i32 4)
  %19 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %7, align 8
  %20 = icmp ne %struct.komeda_pipeline* %19, null
  br i1 %20, label %21, label %51

21:                                               ; preds = %2
  %22 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %7, align 8
  %23 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %5, align 8
  %26 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @has_bit(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %21
  %31 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %7, align 8
  %32 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %5, align 8
  %35 = call i32 @komeda_compiz_validate(i32 %33, %struct.komeda_crtc_state* %34, %struct.komeda_data_flow_cfg* %9)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %82

40:                                               ; preds = %30
  %41 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %42 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %5, align 8
  %45 = call i32 @komeda_compiz_set_input(i32 %43, %struct.komeda_crtc_state* %44, %struct.komeda_data_flow_cfg* %9)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %3, align 4
  br label %82

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %21, %2
  %52 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %53 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %5, align 8
  %56 = call i32 @komeda_compiz_validate(i32 %54, %struct.komeda_crtc_state* %55, %struct.komeda_data_flow_cfg* %8)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %3, align 4
  br label %82

61:                                               ; preds = %51
  %62 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %63 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %5, align 8
  %66 = call i32 @komeda_improc_validate(i32 %64, %struct.komeda_crtc_state* %65, %struct.komeda_data_flow_cfg* %8)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  br label %82

71:                                               ; preds = %61
  %72 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %73 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %5, align 8
  %76 = call i32 @komeda_timing_ctrlr_validate(i32 %74, %struct.komeda_crtc_state* %75, %struct.komeda_data_flow_cfg* %8)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %3, align 4
  br label %82

81:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %79, %69, %59, %48, %38
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @memset(%struct.komeda_data_flow_cfg*, i32, i32) #1

declare dso_local i64 @has_bit(i32, i32) #1

declare dso_local i32 @komeda_compiz_validate(i32, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @komeda_compiz_set_input(i32, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @komeda_improc_validate(i32, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @komeda_timing_ctrlr_validate(i32, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
