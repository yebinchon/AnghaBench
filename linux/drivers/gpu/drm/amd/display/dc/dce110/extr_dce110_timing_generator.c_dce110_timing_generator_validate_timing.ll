; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_validate_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_timing_generator.c_dce110_timing_generator_validate_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.dc_crtc_timing = type { i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dce110_timing_generator = type { i64, i64, i64, i64, i64 }

@TIMING_3D_FORMAT_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce110_timing_generator_validate_timing(%struct.timing_generator* %0, %struct.dc_crtc_timing* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timing_generator*, align 8
  %6 = alloca %struct.dc_crtc_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dce110_timing_generator*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %5, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.timing_generator*, %struct.timing_generator** %5, align 8
  %14 = call %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator* %13)
  store %struct.dce110_timing_generator* %14, %struct.dce110_timing_generator** %12, align 8
  %15 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %16 = icmp ne %struct.dc_crtc_timing* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %20 = icmp ne %struct.dc_crtc_timing* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %119

22:                                               ; preds = %3
  %23 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %24 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %27 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  store i64 %29, i64* %10, align 8
  %30 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %31 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add nsw i64 %32, %33
  store i64 %34, i64* %11, align 8
  %35 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %36 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TIMING_3D_FORMAT_NONE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %119

41:                                               ; preds = %22
  %42 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %43 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %119

48:                                               ; preds = %41
  %49 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %50 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %12, align 8
  %53 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %51, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %58 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %12, align 8
  %61 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56, %48
  store i32 0, i32* %4, align 4
  br label %119

65:                                               ; preds = %56
  %66 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %67 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %70 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %74 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %78 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %12, align 8
  %83 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %119

87:                                               ; preds = %65
  %88 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %89 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %12, align 8
  %92 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %119

96:                                               ; preds = %87
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %100 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  %103 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %104 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %102, %105
  %107 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %6, align 8
  %108 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %106, %109
  %111 = sub nsw i64 %97, %110
  store i64 %111, i64* %9, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %12, align 8
  %114 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %119

118:                                              ; preds = %96
  store i32 1, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %117, %95, %86, %64, %47, %40, %21
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.dce110_timing_generator* @DCE110TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
