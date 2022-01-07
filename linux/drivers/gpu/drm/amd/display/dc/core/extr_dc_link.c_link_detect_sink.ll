; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_link_detect_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_link_detect_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_8__, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.audio_support }
%struct.audio_support = type { i32 }
%struct.TYPE_7__ = type { i32 }

@CONNECTOR_ID_PCIE = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DVI_SINGLE_LINK = common dso_local global i32 0, align 4
@DETECT_REASON_HPDRX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_link*, i32)* @link_detect_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_detect_sink(%struct.dc_link* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.audio_support*, align 8
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %8 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %7, i32 0, i32 2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %13 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @get_basic_signal_type(i32 %11, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %18 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CONNECTOR_ID_PCIE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %26 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %62 [
    i32 128, label %29
    i32 129, label %50
  ]

29:                                               ; preds = %24
  %30 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %31 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store %struct.audio_support* %35, %struct.audio_support** %6, align 8
  %36 = load %struct.audio_support*, %struct.audio_support** %6, align 8
  %37 = getelementptr inbounds %struct.audio_support, %struct.audio_support* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %29
  %41 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %42 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 128
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @SIGNAL_TYPE_DVI_SINGLE_LINK, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %40
  br label %49

49:                                               ; preds = %48, %29
  br label %63

50:                                               ; preds = %24
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @DETECT_REASON_HPDRX, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %56 = call i32 @dm_helpers_is_dp_sink_present(%struct.dc_link* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @SIGNAL_TYPE_DVI_SINGLE_LINK, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %54
  br label %61

61:                                               ; preds = %60, %50
  br label %63

62:                                               ; preds = %24
  br label %63

63:                                               ; preds = %62, %61, %49
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @get_basic_signal_type(i32, i32) #1

declare dso_local i32 @dm_helpers_is_dp_sink_present(%struct.dc_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
