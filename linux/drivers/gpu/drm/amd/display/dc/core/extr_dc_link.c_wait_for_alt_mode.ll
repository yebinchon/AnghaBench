; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_wait_for_alt_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_wait_for_alt_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)* }

@.str = private unnamed_addr constant [30 x i8] c"DP Alt mode state on HPD: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Alt mode entered finished after %llu ms\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Alt mode has timed out after %llu ms\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_for_alt_mode(%struct.dc_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store i32 500, i32* %4, align 4
  store i32 400, i32* %5, align 4
  %11 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %12 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DC_LOGGER_INIT(i32 %15)
  %17 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %18 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %22, align 8
  %24 = icmp eq i32 (%struct.TYPE_7__*)* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %99

26:                                               ; preds = %1
  %27 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %28 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %32, align 8
  %34 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %35 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = call i32 %33(%struct.TYPE_7__* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @DC_LOG_WARNING(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %99

43:                                               ; preds = %26
  %44 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %45 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = call i64 @dm_get_timestamp(%struct.TYPE_8__* %46)
  store i64 %47, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %82, %43
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @udelay(i32 %53)
  %55 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %56 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %60, align 8
  %62 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %63 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = call i32 %61(%struct.TYPE_7__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %52
  %68 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %69 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = call i64 @dm_get_timestamp(%struct.TYPE_8__* %70)
  store i64 %71, i64* %8, align 8
  %72 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %73 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i64 @dm_get_elapse_time_in_ns(%struct.TYPE_8__* %74, i64 %75, i64 %76)
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @div_u64(i64 %78, i32 1000000)
  %80 = call i32 @DC_LOG_WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i32 1, i32* %2, align 4
  br label %99

81:                                               ; preds = %52
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %48

85:                                               ; preds = %48
  %86 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %87 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = call i64 @dm_get_timestamp(%struct.TYPE_8__* %88)
  store i64 %89, i64* %8, align 8
  %90 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %91 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i64 @dm_get_elapse_time_in_ns(%struct.TYPE_8__* %92, i64 %93, i64 %94)
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @div_u64(i64 %96, i32 1000000)
  %98 = call i32 @DC_LOG_WARNING(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %85, %67, %42, %25
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @DC_LOGGER_INIT(i32) #1

declare dso_local i32 @DC_LOG_WARNING(i8*, i32) #1

declare dso_local i64 @dm_get_timestamp(%struct.TYPE_8__*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @dm_get_elapse_time_in_ns(%struct.TYPE_8__*, i64, i64) #1

declare dso_local i32 @div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
