; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_frontend.c_dvb_frontend_get_frequency_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_frontend.c_dvb_frontend_get_frequency_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_10__, %struct.TYPE_8__*, i32, %struct.dtv_frontend_properties }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.dtv_frontend_properties = type { i32 }

@.str = private unnamed_addr constant [73 x i8] c"DVB: adapter %i frontend %u frequency limits undefined - fix the driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"frequency interval: tuner: %u...%u, frontend: %u...%u\00", align 1
@kHz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, i64*, i64*, i64*)* @dvb_frontend_get_frequency_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_frontend_get_frequency_limits(%struct.dvb_frontend* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.dtv_frontend_properties*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 3
  store %struct.dtv_frontend_properties* %15, %struct.dtv_frontend_properties** %9, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %12, align 8
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i64 @max(i64 %38, i64 %39)
  %41 = load i64*, i64** %6, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %4
  %45 = load i64, i64* %11, align 8
  %46 = load i64*, i64** %7, align 8
  store i64 %45, i64* %46, align 8
  br label %59

47:                                               ; preds = %4
  %48 = load i64, i64* %11, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* %13, align 8
  %52 = load i64*, i64** %7, align 8
  store i64 %51, i64* %52, align 8
  br label %58

53:                                               ; preds = %47
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i64 @min(i64 %54, i64 %55)
  %57 = load i64*, i64** %7, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %50
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i64*, i64** %6, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i64*, i64** %7, align 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %63, %59
  %68 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %69 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %74 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %79 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_warn(i32 %72, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %67, %63
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %84 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @dev_dbg(i32 %87, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %88, i64 %89, i64 %90, i64 %91)
  %93 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %9, align 8
  %94 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %117 [
    i32 131, label %96
    i32 130, label %96
    i32 128, label %96
    i32 129, label %96
  ]

96:                                               ; preds = %82, %82, %82, %82
  %97 = load i64, i64* @kHz, align 8
  %98 = load i64*, i64** %6, align 8
  %99 = load i64, i64* %98, align 8
  %100 = sdiv i64 %99, %97
  store i64 %100, i64* %98, align 8
  %101 = load i64, i64* @kHz, align 8
  %102 = load i64*, i64** %7, align 8
  %103 = load i64, i64* %102, align 8
  %104 = sdiv i64 %103, %101
  store i64 %104, i64* %102, align 8
  %105 = load i64*, i64** %8, align 8
  %106 = icmp ne i64* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %96
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %109 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @kHz, align 8
  %114 = sdiv i64 %112, %113
  %115 = load i64*, i64** %8, align 8
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %107, %96
  br label %128

117:                                              ; preds = %82
  %118 = load i64*, i64** %8, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %122 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %8, align 8
  store i64 %125, i64* %126, align 8
  br label %127

127:                                              ; preds = %120, %117
  br label %128

128:                                              ; preds = %127, %116
  ret void
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
