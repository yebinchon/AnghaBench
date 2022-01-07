; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_section_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dmxdev.c_dvb_dmxdev_section_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_section_filter = type { %struct.dmxdev_filter* }
%struct.dmxdev_filter = type { i64, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@DMXDEV_STATE_GO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"section callback %*ph\0A\00", align 1
@DMX_ONESHOT = common dso_local global i32 0, align 4
@DMXDEV_STATE_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64, %struct.dmx_section_filter*, i32*)* @dvb_dmxdev_section_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmxdev_section_callback(i32* %0, i64 %1, i32* %2, i64 %3, %struct.dmx_section_filter* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dmx_section_filter*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dmxdev_filter*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.dmx_section_filter* %4, %struct.dmx_section_filter** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.dmx_section_filter*, %struct.dmx_section_filter** %12, align 8
  %17 = getelementptr inbounds %struct.dmx_section_filter, %struct.dmx_section_filter* %16, i32 0, i32 0
  %18 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %17, align 8
  store %struct.dmxdev_filter* %18, %struct.dmxdev_filter** %14, align 8
  %19 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %20 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %19, i32 0, i32 4
  %21 = call i64 @dvb_vb2_is_streaming(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %6
  %24 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %25 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %31 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = call i32 @wake_up(i32* %32)
  store i32 0, i32* %7, align 4
  br label %128

34:                                               ; preds = %23, %6
  %35 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %36 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %41 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DMXDEV_STATE_GO, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %47 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  store i32 0, i32* %7, align 4
  br label %128

51:                                               ; preds = %34
  %52 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %53 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %52, i32 0, i32 5
  %54 = call i32 @del_timer(i32* %53)
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 6, i32* %55)
  %57 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %58 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %57, i32 0, i32 4
  %59 = call i64 @dvb_vb2_is_streaming(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %51
  %62 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %63 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %62, i32 0, i32 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = call i32 @dvb_vb2_fill_buffer(i32* %63, i32* %64, i64 %65, i32* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %9, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %61
  %73 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %74 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %73, i32 0, i32 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @dvb_vb2_fill_buffer(i32* %74, i32* %75, i64 %76, i32* %77)
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %72, %61
  br label %97

80:                                               ; preds = %51
  %81 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %82 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %81, i32 0, i32 1
  %83 = load i32*, i32** %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @dvb_dmxdev_buffer_write(%struct.TYPE_8__* %82, i32* %83, i64 %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %9, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %80
  %91 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %92 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %91, i32 0, i32 1
  %93 = load i32*, i32** %10, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @dvb_dmxdev_buffer_write(%struct.TYPE_8__* %92, i32* %93, i64 %94)
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %90, %80
  br label %97

97:                                               ; preds = %96, %79
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* %15, align 4
  %102 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %103 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  br label %105

105:                                              ; preds = %100, %97
  %106 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %107 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @DMX_ONESHOT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load i64, i64* @DMXDEV_STATE_DONE, align 8
  %116 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %117 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %114, %105
  %119 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %120 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %119, i32 0, i32 2
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = call i32 @spin_unlock(i32* %122)
  %124 = load %struct.dmxdev_filter*, %struct.dmxdev_filter** %14, align 8
  %125 = getelementptr inbounds %struct.dmxdev_filter, %struct.dmxdev_filter* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = call i32 @wake_up(i32* %126)
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %118, %45, %29
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i64 @dvb_vb2_is_streaming(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @dprintk(i8*, i32, i32*) #1

declare dso_local i32 @dvb_vb2_fill_buffer(i32*, i32*, i64, i32*) #1

declare dso_local i32 @dvb_dmxdev_buffer_write(%struct.TYPE_8__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
