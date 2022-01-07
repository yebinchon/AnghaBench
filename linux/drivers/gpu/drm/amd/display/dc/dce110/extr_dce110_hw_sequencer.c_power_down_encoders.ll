; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_power_down_encoders.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_power_down_encoders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.TYPE_14__**, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, i32)* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_13__*)* }

@SIGNAL_TYPE_NONE = common dso_local global i32 0, align 4
@CONNECTOR_ID_DISPLAY_PORT = common dso_local global i32 0, align 4
@CONNECTOR_ID_EDP = common dso_local global i32 0, align 4
@SIGNAL_TYPE_EDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*)* @power_down_encoders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_down_encoders(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %2, align 8
  %6 = load i32, i32* @SIGNAL_TYPE_NONE, align 4
  store i32 %6, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %39, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.dc*, %struct.dc** %2, align 8
  %10 = getelementptr inbounds %struct.dc, %struct.dc* %9, i32 0, i32 2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %7
  %16 = load %struct.dc*, %struct.dc** %2, align 8
  %17 = getelementptr inbounds %struct.dc, %struct.dc* %16, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %20, i64 %22
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %27, align 8
  %29 = load %struct.dc*, %struct.dc** %2, align 8
  %30 = getelementptr inbounds %struct.dc, %struct.dc* %29, i32 0, i32 2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %33, i64 %35
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = call i32 %28(%struct.TYPE_13__* %37)
  br label %39

39:                                               ; preds = %15
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %7

42:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %120, %42
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.dc*, %struct.dc** %2, align 8
  %46 = getelementptr inbounds %struct.dc, %struct.dc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %123

49:                                               ; preds = %43
  %50 = load %struct.dc*, %struct.dc** %2, align 8
  %51 = getelementptr inbounds %struct.dc, %struct.dc* %50, i32 0, i32 1
  %52 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %52, i64 %54
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dal_graphics_object_id_get_connector_id(i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @CONNECTOR_ID_DISPLAY_PORT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %49
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @CONNECTOR_ID_EDP, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %95

67:                                               ; preds = %63, %49
  %68 = load %struct.dc*, %struct.dc** %2, align 8
  %69 = getelementptr inbounds %struct.dc, %struct.dc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %70, i64 %72
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %67
  %80 = load %struct.dc*, %struct.dc** %2, align 8
  %81 = getelementptr inbounds %struct.dc, %struct.dc* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %82, i64 %84
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = call i32 @dp_receiver_power_ctrl(%struct.TYPE_14__* %86, i32 0)
  br label %88

88:                                               ; preds = %79, %67
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @CONNECTOR_ID_EDP, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @SIGNAL_TYPE_EDP, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %88
  br label %95

95:                                               ; preds = %94, %63
  %96 = load %struct.dc*, %struct.dc** %2, align 8
  %97 = getelementptr inbounds %struct.dc, %struct.dc* %96, i32 0, i32 1
  %98 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %98, i64 %100
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %107, align 8
  %109 = load %struct.dc*, %struct.dc** %2, align 8
  %110 = getelementptr inbounds %struct.dc, %struct.dc* %109, i32 0, i32 1
  %111 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %111, i64 %113
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 %108(%struct.TYPE_12__* %117, i32 %118)
  br label %120

120:                                              ; preds = %95
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  br label %43

123:                                              ; preds = %43
  ret void
}

declare dso_local i32 @dal_graphics_object_id_get_connector_id(i32) #1

declare dso_local i32 @dp_receiver_power_ctrl(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
