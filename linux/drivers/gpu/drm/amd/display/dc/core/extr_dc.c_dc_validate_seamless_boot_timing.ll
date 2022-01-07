; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_validate_seamless_boot_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_validate_seamless_boot_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_15__*, %struct.timing_generator**, %struct.TYPE_16__** }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*, i32, i32*)* }
%struct.timing_generator = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.timing_generator*, %struct.dc_crtc_timing*)* }
%struct.TYPE_16__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_16__*)* }
%struct.dc_sink = type { %struct.dc_link* }
%struct.dc_link = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)* }
%struct.dc_crtc_timing = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_validate_seamless_boot_timing(%struct.dc* %0, %struct.dc_sink* %1, %struct.dc_crtc_timing* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dc_sink*, align 8
  %7 = alloca %struct.dc_crtc_timing*, align 8
  %8 = alloca %struct.timing_generator*, align 8
  %9 = alloca %struct.dc_link*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.dc_sink* %1, %struct.dc_sink** %6, align 8
  store %struct.dc_crtc_timing* %2, %struct.dc_crtc_timing** %7, align 8
  %13 = load %struct.dc_sink*, %struct.dc_sink** %6, align 8
  %14 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %13, i32 0, i32 0
  %15 = load %struct.dc_link*, %struct.dc_link** %14, align 8
  store %struct.dc_link* %15, %struct.dc_link** %9, align 8
  %16 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %17 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %16, i32 0, i32 1
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %21, align 8
  %23 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %24 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %23, i32 0, i32 1
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = call i32 %22(%struct.TYPE_17__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %149

29:                                               ; preds = %3
  %30 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %31 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %30, i32 0, i32 1
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %35, align 8
  %37 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %38 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %37, i32 0, i32 1
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = call i32 %36(%struct.TYPE_17__* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.dc*, %struct.dc** %5, align 8
  %43 = getelementptr inbounds %struct.dc, %struct.dc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp uge i32 %41, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %149

49:                                               ; preds = %29
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.dc*, %struct.dc** %5, align 8
  %52 = getelementptr inbounds %struct.dc, %struct.dc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp uge i32 %50, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %149

58:                                               ; preds = %49
  %59 = load %struct.dc*, %struct.dc** %5, align 8
  %60 = getelementptr inbounds %struct.dc, %struct.dc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %63, i64 %65
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %70, align 8
  %72 = load %struct.dc*, %struct.dc** %5, align 8
  %73 = getelementptr inbounds %struct.dc, %struct.dc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %76, i64 %78
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = call i32 %71(%struct.TYPE_16__* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.dc*, %struct.dc** %5, align 8
  %84 = getelementptr inbounds %struct.dc, %struct.dc* %83, i32 0, i32 0
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp uge i32 %82, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %149

90:                                               ; preds = %58
  %91 = load %struct.dc*, %struct.dc** %5, align 8
  %92 = getelementptr inbounds %struct.dc, %struct.dc* %91, i32 0, i32 0
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 4
  %95 = load %struct.timing_generator**, %struct.timing_generator*** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.timing_generator*, %struct.timing_generator** %95, i64 %97
  %99 = load %struct.timing_generator*, %struct.timing_generator** %98, align 8
  store %struct.timing_generator* %99, %struct.timing_generator** %8, align 8
  %100 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %101 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %100, i32 0, i32 0
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32 (%struct.timing_generator*, %struct.dc_crtc_timing*)*, i32 (%struct.timing_generator*, %struct.dc_crtc_timing*)** %103, align 8
  %105 = icmp ne i32 (%struct.timing_generator*, %struct.dc_crtc_timing*)* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %90
  store i32 0, i32* %4, align 4
  br label %149

107:                                              ; preds = %90
  %108 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %109 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32 (%struct.timing_generator*, %struct.dc_crtc_timing*)*, i32 (%struct.timing_generator*, %struct.dc_crtc_timing*)** %111, align 8
  %113 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %114 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %7, align 8
  %115 = call i32 %112(%struct.timing_generator* %113, %struct.dc_crtc_timing* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %149

118:                                              ; preds = %107
  %119 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %120 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @dc_is_dp_signal(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %118
  %125 = load %struct.dc*, %struct.dc** %5, align 8
  %126 = getelementptr inbounds %struct.dc, %struct.dc* %125, i32 0, i32 0
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32 (%struct.TYPE_15__*, i32, i32*)*, i32 (%struct.TYPE_15__*, i32, i32*)** %132, align 8
  %134 = load %struct.dc*, %struct.dc** %5, align 8
  %135 = getelementptr inbounds %struct.dc, %struct.dc* %134, i32 0, i32 0
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i32 %133(%struct.TYPE_15__* %138, i32 %139, i32* %12)
  %141 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %7, align 8
  %142 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  br label %149

147:                                              ; preds = %124
  br label %148

148:                                              ; preds = %147, %118
  store i32 1, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %146, %117, %106, %89, %57, %48, %28
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @dc_is_dp_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
