; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_connector_print_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_connector_print_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_printer = type { i32 }
%struct.drm_connector_state = type { i8*, %struct.TYPE_11__*, %struct.TYPE_8__*, %struct.drm_connector* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.drm_connector = type { i64, %struct.TYPE_12__*, i32, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32 (%struct.drm_printer*, %struct.drm_connector_state*)* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"connector[%u]: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\09crtc=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\09self_refresh_aware=%d\0A\00", align 1
@DRM_MODE_CONNECTOR_WRITEBACK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"\09fb=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_printer*, %struct.drm_connector_state*)* @drm_atomic_connector_print_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_atomic_connector_print_state(%struct.drm_printer* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.drm_printer*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  store %struct.drm_printer* %0, %struct.drm_printer** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %6 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %7 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %6, i32 0, i32 3
  %8 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  store %struct.drm_connector* %8, %struct.drm_connector** %5, align 8
  %9 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (%struct.drm_printer*, i8*, i8*, ...) @drm_printf(%struct.drm_printer* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %18)
  %20 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %21 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %22 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %27 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %26, i32 0, i32 2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %25
  %33 = phi i8* [ %30, %25 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %31 ]
  %34 = call i32 (%struct.drm_printer*, i8*, i8*, ...) @drm_printf(%struct.drm_printer* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %36 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %37 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (%struct.drm_printer*, i8*, i8*, ...) @drm_printf(%struct.drm_printer* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  %40 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %41 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DRM_MODE_CONNECTOR_WRITEBACK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %32
  %46 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %47 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %52 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = icmp ne %struct.TYPE_10__* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %59 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %60 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (%struct.drm_printer*, i8*, i8*, ...) @drm_printf(%struct.drm_printer* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %57, %50, %45
  br label %69

69:                                               ; preds = %68, %32
  %70 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %71 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %70, i32 0, i32 1
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32 (%struct.drm_printer*, %struct.drm_connector_state*)*, i32 (%struct.drm_printer*, %struct.drm_connector_state*)** %73, align 8
  %75 = icmp ne i32 (%struct.drm_printer*, %struct.drm_connector_state*)* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %78 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32 (%struct.drm_printer*, %struct.drm_connector_state*)*, i32 (%struct.drm_printer*, %struct.drm_connector_state*)** %80, align 8
  %82 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %83 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %84 = call i32 %81(%struct.drm_printer* %82, %struct.drm_connector_state* %83)
  br label %85

85:                                               ; preds = %76, %69
  ret void
}

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
