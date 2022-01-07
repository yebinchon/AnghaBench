; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_buffer_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f54.c_rmi_f54_buffer_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.f54_data = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@F54_REPORT_NONE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error requesting F54 report\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Timed out\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Error acquiring frame ptr\0A\00", align 1
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @rmi_f54_buffer_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmi_f54_buffer_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.f54_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.f54_data* @vb2_get_drv_priv(i32 %10)
  store %struct.f54_data* %11, %struct.f54_data** %3, align 8
  %12 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %13 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %16 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %17 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @rmi_f54_get_reptype(%struct.f54_data* %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @F54_REPORT_NONE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %24, i32* %5, align 4
  br label %106

25:                                               ; preds = %1
  %26 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %27 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %31, i32* %5, align 4
  br label %106

32:                                               ; preds = %25
  %33 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %34 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @rmi_f54_request_report(%struct.TYPE_2__* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %42 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %46, i32* %5, align 4
  br label %106

47:                                               ; preds = %32
  %48 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %49 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %48, i32 0, i32 1
  %50 = call i32 @mutex_lock(i32* %49)
  br label %51

51:                                               ; preds = %72, %47
  %52 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %53 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %58 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %61 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %60, i32 0, i32 5
  %62 = call i32 @msecs_to_jiffies(i32 1000)
  %63 = call i32 @wait_for_completion_timeout(i32* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %56
  %66 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %67 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %66, i32 0, i32 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %71, i32* %5, align 4
  br label %106

72:                                               ; preds = %56
  %73 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %74 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %73, i32 0, i32 1
  %75 = call i32 @mutex_lock(i32* %74)
  br label %51

76:                                               ; preds = %51
  %77 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %78 = call i32* @vb2_plane_vaddr(%struct.vb2_buffer* %77, i32 0)
  store i32* %78, i32** %4, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %83 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %82, i32 0, i32 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %87, i32* %5, align 4
  br label %102

88:                                               ; preds = %76
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %91 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %94 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @memcpy(i32* %89, i32 %92, i32 %95)
  %97 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %98 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %99 = call i32 @rmi_f54_get_report_size(%struct.f54_data* %98)
  %100 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %97, i32 0, i32 %99)
  %101 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %88, %81
  %103 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %104 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  br label %106

106:                                              ; preds = %102, %65, %40, %30, %23
  %107 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @vb2_buffer_done(%struct.vb2_buffer* %107, i32 %108)
  %110 = load %struct.f54_data*, %struct.f54_data** %3, align 8
  %111 = getelementptr inbounds %struct.f54_data, %struct.f54_data* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  ret void
}

declare dso_local %struct.f54_data* @vb2_get_drv_priv(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rmi_f54_get_reptype(%struct.f54_data*, i32) #1

declare dso_local i32 @rmi_f54_request_report(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32* @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

declare dso_local i32 @rmi_f54_get_report_size(%struct.f54_data*) #1

declare dso_local i32 @vb2_buffer_done(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
