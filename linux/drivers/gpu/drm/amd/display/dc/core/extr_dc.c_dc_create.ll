; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.dc.0*)* }
%struct.dc.0 = type opaque
%struct.dc_init_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NO_UNDERLAY_PIPE = common dso_local global i64 0, align 8
@DC_VER = common dso_local global i32 0, align 4
@DC_BUILD_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Display Core initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dc* @dc_create(%struct.dc_init_data* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca %struct.dc_init_data*, align 8
  %4 = alloca %struct.dc*, align 8
  %5 = alloca i32, align 4
  store %struct.dc_init_data* %0, %struct.dc_init_data** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.dc* @kzalloc(i32 56, i32 %6)
  store %struct.dc* %7, %struct.dc** %4, align 8
  %8 = load %struct.dc*, %struct.dc** %4, align 8
  %9 = icmp eq %struct.dc* null, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %98

11:                                               ; preds = %1
  %12 = load %struct.dc*, %struct.dc** %4, align 8
  %13 = load %struct.dc_init_data*, %struct.dc_init_data** %3, align 8
  %14 = call i32 @construct(%struct.dc* %12, %struct.dc_init_data* %13)
  %15 = icmp eq i32 0, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %95

17:                                               ; preds = %11
  %18 = load %struct.dc*, %struct.dc** %4, align 8
  %19 = getelementptr inbounds %struct.dc, %struct.dc* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32 (%struct.dc.0*)*, i32 (%struct.dc.0*)** %20, align 8
  %22 = load %struct.dc*, %struct.dc** %4, align 8
  %23 = bitcast %struct.dc* %22 to %struct.dc.0*
  %24 = call i32 %21(%struct.dc.0* %23)
  %25 = load %struct.dc*, %struct.dc** %4, align 8
  %26 = getelementptr inbounds %struct.dc, %struct.dc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %5, align 4
  %30 = load %struct.dc*, %struct.dc** %4, align 8
  %31 = getelementptr inbounds %struct.dc, %struct.dc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NO_UNDERLAY_PIPE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %17
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.dc*, %struct.dc** %4, align 8
  %43 = getelementptr inbounds %struct.dc, %struct.dc* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @min(i32 %41, i32 %46)
  %48 = load %struct.dc*, %struct.dc** %4, align 8
  %49 = getelementptr inbounds %struct.dc, %struct.dc* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load %struct.dc*, %struct.dc** %4, align 8
  %52 = getelementptr inbounds %struct.dc, %struct.dc* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dc*, %struct.dc** %4, align 8
  %55 = getelementptr inbounds %struct.dc, %struct.dc* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load %struct.dc*, %struct.dc** %4, align 8
  %58 = getelementptr inbounds %struct.dc, %struct.dc* %57, i32 0, i32 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.dc*, %struct.dc** %4, align 8
  %63 = getelementptr inbounds %struct.dc, %struct.dc* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load %struct.dc*, %struct.dc** %4, align 8
  %66 = getelementptr inbounds %struct.dc, %struct.dc* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 64, i32* %67, align 8
  %68 = load i32, i32* @DC_VER, align 4
  %69 = load %struct.dc*, %struct.dc** %4, align 8
  %70 = getelementptr inbounds %struct.dc, %struct.dc* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.dc*, %struct.dc** %4, align 8
  %73 = getelementptr inbounds %struct.dc, %struct.dc* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = icmp ne %struct.TYPE_9__* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %40
  %79 = load %struct.dc*, %struct.dc** %4, align 8
  %80 = getelementptr inbounds %struct.dc, %struct.dc* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.dc*, %struct.dc** %4, align 8
  %87 = getelementptr inbounds %struct.dc, %struct.dc* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  br label %89

89:                                               ; preds = %78, %40
  %90 = load i32, i32* @DC_BUILD_ID, align 4
  %91 = load %struct.dc*, %struct.dc** %4, align 8
  %92 = getelementptr inbounds %struct.dc, %struct.dc* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = call i32 @DC_LOG_DC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.dc*, %struct.dc** %4, align 8
  store %struct.dc* %94, %struct.dc** %2, align 8
  br label %99

95:                                               ; preds = %16
  %96 = load %struct.dc*, %struct.dc** %4, align 8
  %97 = call i32 @kfree(%struct.dc* %96)
  br label %98

98:                                               ; preds = %95, %10
  store %struct.dc* null, %struct.dc** %2, align 8
  br label %99

99:                                               ; preds = %98, %89
  %100 = load %struct.dc*, %struct.dc** %2, align 8
  ret %struct.dc* %100
}

declare dso_local %struct.dc* @kzalloc(i32, i32) #1

declare dso_local i32 @construct(%struct.dc*, %struct.dc_init_data*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DC_LOG_DC(i8*) #1

declare dso_local i32 @kfree(%struct.dc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
