; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_link_add_remote_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_link_add_remote_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_sink = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dc_link = type { i32 }
%struct.dc_sink_init_data = type { i32 }

@DC_MAX_EDID_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Max EDID buffer size breached!\0A\00", align 1
@EDID_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Bad EDID, status%d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dc_sink* @dc_link_add_remote_sink(%struct.dc_link* %0, i32* %1, i32 %2, %struct.dc_sink_init_data* %3) #0 {
  %5 = alloca %struct.dc_sink*, align 8
  %6 = alloca %struct.dc_link*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dc_sink_init_data*, align 8
  %10 = alloca %struct.dc_sink*, align 8
  %11 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.dc_sink_init_data* %3, %struct.dc_sink_init_data** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @DC_MAX_EDID_BUFFER_SIZE, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.dc_sink* null, %struct.dc_sink** %5, align 8
  br label %75

17:                                               ; preds = %4
  %18 = load %struct.dc_sink_init_data*, %struct.dc_sink_init_data** %9, align 8
  %19 = icmp ne %struct.dc_sink_init_data* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 (...) @BREAK_TO_DEBUGGER()
  store %struct.dc_sink* null, %struct.dc_sink** %5, align 8
  br label %75

22:                                               ; preds = %17
  %23 = load %struct.dc_sink_init_data*, %struct.dc_sink_init_data** %9, align 8
  %24 = getelementptr inbounds %struct.dc_sink_init_data, %struct.dc_sink_init_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 (...) @BREAK_TO_DEBUGGER()
  store %struct.dc_sink* null, %struct.dc_sink** %5, align 8
  br label %75

29:                                               ; preds = %22
  %30 = load %struct.dc_sink_init_data*, %struct.dc_sink_init_data** %9, align 8
  %31 = call %struct.dc_sink* @dc_sink_create(%struct.dc_sink_init_data* %30)
  store %struct.dc_sink* %31, %struct.dc_sink** %10, align 8
  %32 = load %struct.dc_sink*, %struct.dc_sink** %10, align 8
  %33 = icmp ne %struct.dc_sink* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store %struct.dc_sink* null, %struct.dc_sink** %5, align 8
  br label %75

35:                                               ; preds = %29
  %36 = load %struct.dc_sink*, %struct.dc_sink** %10, align 8
  %37 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @memmove(i32 %39, i32* %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.dc_sink*, %struct.dc_sink** %10, align 8
  %45 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %48 = load %struct.dc_sink*, %struct.dc_sink** %10, align 8
  %49 = call i32 @link_add_remote_sink_helper(%struct.dc_link* %47, %struct.dc_sink* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %35
  br label %72

52:                                               ; preds = %35
  %53 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %54 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dc_sink*, %struct.dc_sink** %10, align 8
  %57 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %56, i32 0, i32 0
  %58 = load %struct.dc_sink*, %struct.dc_sink** %10, align 8
  %59 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %58, i32 0, i32 1
  %60 = call i32 @dm_helpers_parse_edid_caps(i32 %55, %struct.TYPE_2__* %57, i32* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @EDID_OK, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %52
  %65 = load %struct.dc_sink*, %struct.dc_sink** %10, align 8
  %66 = getelementptr inbounds %struct.dc_sink, %struct.dc_sink* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %64, %52
  %71 = load %struct.dc_sink*, %struct.dc_sink** %10, align 8
  store %struct.dc_sink* %71, %struct.dc_sink** %5, align 8
  br label %75

72:                                               ; preds = %51
  %73 = load %struct.dc_sink*, %struct.dc_sink** %10, align 8
  %74 = call i32 @dc_sink_release(%struct.dc_sink* %73)
  store %struct.dc_sink* null, %struct.dc_sink** %5, align 8
  br label %75

75:                                               ; preds = %72, %70, %34, %27, %20, %15
  %76 = load %struct.dc_sink*, %struct.dc_sink** %5, align 8
  ret %struct.dc_sink* %76
}

declare dso_local i32 @dm_error(i8*, ...) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local %struct.dc_sink* @dc_sink_create(%struct.dc_sink_init_data*) #1

declare dso_local i32 @memmove(i32, i32*, i32) #1

declare dso_local i32 @link_add_remote_sink_helper(%struct.dc_link*, %struct.dc_sink*) #1

declare dso_local i32 @dm_helpers_parse_edid_caps(i32, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @dc_sink_release(%struct.dc_sink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
