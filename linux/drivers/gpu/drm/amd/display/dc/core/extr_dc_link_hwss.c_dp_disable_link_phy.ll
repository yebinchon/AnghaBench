; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_hwss.c_dp_disable_link_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_hwss.c_dp_disable_link_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32, %struct.TYPE_17__*, %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_17__*, i32)* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (%struct.dc_link*, i32)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.dmcu* }
%struct.dmcu = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)* }

@SIGNAL_TYPE_EDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dp_disable_link_phy(%struct.dc_link* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.dmcu*, align 8
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %8 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %7, i32 0, i32 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.dc*, %struct.dc** %10, align 8
  store %struct.dc* %11, %struct.dc** %5, align 8
  %12 = load %struct.dc*, %struct.dc** %5, align 8
  %13 = getelementptr inbounds %struct.dc, %struct.dc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.dmcu*, %struct.dmcu** %15, align 8
  store %struct.dmcu* %16, %struct.dmcu** %6, align 8
  %17 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %18 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %24 = call i32 @dp_receiver_power_ctrl(%struct.dc_link* %23, i32 0)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SIGNAL_TYPE_EDP, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %31 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %30, i32 0, i32 1
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %35, align 8
  %37 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %38 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %37, i32 0, i32 1
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 %36(%struct.TYPE_17__* %39, i32 %40)
  %42 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %43 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %42, i32 0, i32 2
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32 (%struct.dc_link*, i32)*, i32 (%struct.dc_link*, i32)** %46, align 8
  %48 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %49 = call i32 %47(%struct.dc_link* %48, i32 0)
  br label %99

50:                                               ; preds = %25
  %51 = load %struct.dmcu*, %struct.dmcu** %6, align 8
  %52 = icmp ne %struct.dmcu* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load %struct.dmcu*, %struct.dmcu** %6, align 8
  %55 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)** %57, align 8
  %59 = icmp ne i32 (%struct.dmcu*)* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load %struct.dmcu*, %struct.dmcu** %6, align 8
  %62 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %61, i32 0, i32 0
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)** %64, align 8
  %66 = load %struct.dmcu*, %struct.dmcu** %6, align 8
  %67 = call i32 %65(%struct.dmcu* %66)
  br label %68

68:                                               ; preds = %60, %53, %50
  %69 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %70 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %69, i32 0, i32 1
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %74, align 8
  %76 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %77 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %76, i32 0, i32 1
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 %75(%struct.TYPE_17__* %78, i32 %79)
  %81 = load %struct.dmcu*, %struct.dmcu** %6, align 8
  %82 = icmp ne %struct.dmcu* %81, null
  br i1 %82, label %83, label %98

83:                                               ; preds = %68
  %84 = load %struct.dmcu*, %struct.dmcu** %6, align 8
  %85 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)** %87, align 8
  %89 = icmp ne i32 (%struct.dmcu*)* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load %struct.dmcu*, %struct.dmcu** %6, align 8
  %92 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %91, i32 0, i32 0
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)** %94, align 8
  %96 = load %struct.dmcu*, %struct.dmcu** %6, align 8
  %97 = call i32 %95(%struct.dmcu* %96)
  br label %98

98:                                               ; preds = %90, %83, %68
  br label %99

99:                                               ; preds = %98, %29
  %100 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %101 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %100, i32 0, i32 0
  %102 = call i32 @memset(i32* %101, i32 0, i32 4)
  ret void
}

declare dso_local i32 @dp_receiver_power_ctrl(%struct.dc_link*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
