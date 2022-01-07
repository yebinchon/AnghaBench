; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_set_backlight_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_link_set_backlight_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.dc* }
%struct.dc = type { %struct.TYPE_20__*, %struct.TYPE_12__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32*, %struct.TYPE_17__, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.dc_link* }
%struct.TYPE_12__ = type { %struct.dmcu*, %struct.abm* }
%struct.dmcu = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.dmcu*)* }
%struct.abm = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.abm*, i32, i32, i32, i32)* }

@.str = private unnamed_addr constant [32 x i8] c"New Backlight level: %d (0x%X)\0A\00", align 1
@MAX_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_link_set_backlight_level(%struct.dc_link* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc*, align 8
  %9 = alloca %struct.abm*, align 8
  %10 = alloca %struct.dmcu*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %15 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %14, i32 0, i32 1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load %struct.dc*, %struct.dc** %17, align 8
  store %struct.dc* %18, %struct.dc** %8, align 8
  %19 = load %struct.dc*, %struct.dc** %8, align 8
  %20 = getelementptr inbounds %struct.dc, %struct.dc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load %struct.abm*, %struct.abm** %22, align 8
  store %struct.abm* %23, %struct.abm** %9, align 8
  %24 = load %struct.dc*, %struct.dc** %8, align 8
  %25 = getelementptr inbounds %struct.dc, %struct.dc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.dmcu*, %struct.dmcu** %27, align 8
  store %struct.dmcu* %28, %struct.dmcu** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %29 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %30 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @DC_LOGGER_INIT(i32 %33)
  %35 = load %struct.dmcu*, %struct.dmcu** %10, align 8
  %36 = icmp eq %struct.dmcu* %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %3
  %38 = load %struct.abm*, %struct.abm** %9, align 8
  %39 = icmp eq %struct.abm* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = load %struct.abm*, %struct.abm** %9, align 8
  %42 = getelementptr inbounds %struct.abm, %struct.abm* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32 (%struct.abm*, i32, i32, i32, i32)*, i32 (%struct.abm*, i32, i32, i32, i32)** %44, align 8
  %46 = icmp eq i32 (%struct.abm*, i32, i32, i32, i32)* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %37, %3
  store i32 0, i32* %4, align 4
  br label %146

48:                                               ; preds = %40
  %49 = load %struct.dmcu*, %struct.dmcu** %10, align 8
  %50 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %49, i32 0, i32 0
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)** %52, align 8
  %54 = load %struct.dmcu*, %struct.dmcu** %10, align 8
  %55 = call i32 %53(%struct.dmcu* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @DC_LOG_BACKLIGHT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %60 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @dc_is_embedded_signal(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %145

64:                                               ; preds = %48
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %130, %64
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @MAX_PIPES, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %133

69:                                               ; preds = %65
  %70 = load %struct.dc*, %struct.dc** %8, align 8
  %71 = getelementptr inbounds %struct.dc, %struct.dc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = icmp ne %struct.TYPE_15__* %80, null
  br i1 %81, label %82, label %129

82:                                               ; preds = %69
  %83 = load %struct.dc*, %struct.dc** %8, align 8
  %84 = getelementptr inbounds %struct.dc, %struct.dc* %83, i32 0, i32 0
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.dc_link*, %struct.dc_link** %94, align 8
  %96 = load %struct.dc_link*, %struct.dc_link** %5, align 8
  %97 = icmp eq %struct.dc_link* %95, %96
  br i1 %97, label %98, label %128

98:                                               ; preds = %82
  %99 = load %struct.dc*, %struct.dc** %8, align 8
  %100 = getelementptr inbounds %struct.dc, %struct.dc* %99, i32 0, i32 0
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  %114 = load %struct.dc*, %struct.dc** %8, align 8
  %115 = getelementptr inbounds %struct.dc, %struct.dc* %114, i32 0, i32 0
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %98
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %126, %98
  br label %128

128:                                              ; preds = %127, %82
  br label %129

129:                                              ; preds = %128, %69
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %65

133:                                              ; preds = %65
  %134 = load %struct.abm*, %struct.abm** %9, align 8
  %135 = getelementptr inbounds %struct.abm, %struct.abm* %134, i32 0, i32 0
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32 (%struct.abm*, i32, i32, i32, i32)*, i32 (%struct.abm*, i32, i32, i32, i32)** %137, align 8
  %139 = load %struct.abm*, %struct.abm** %9, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 %138(%struct.abm* %139, i32 %140, i32 %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %133, %48
  store i32 1, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %47
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @DC_LOGGER_INIT(i32) #1

declare dso_local i32 @DC_LOG_BACKLIGHT(i8*, i32, i32) #1

declare dso_local i64 @dc_is_embedded_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
