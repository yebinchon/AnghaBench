; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_log_hubbub_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_log_hubbub_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_5__*, %struct.dc_context* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, %struct.dcn_hubbub_wm*)* }
%struct.dcn_hubbub_wm = type { %struct.dcn_hubbub_wm_set* }
%struct.dcn_hubbub_wm_set = type { i32, i32, i32, i32, i32, i32 }
%struct.dc_context = type { i32 }
%struct.dc_log_buffer_ctx = type { i32 }

@.str = private unnamed_addr constant [97 x i8] c"HUBBUB WM:      data_urgent  pte_meta_urgent         sr_enter          sr_exit  dram_clk_change\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"WM_Set[%d]:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn10_log_hubbub_state(%struct.dc* %0, %struct.dc_log_buffer_ctx* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_log_buffer_ctx*, align 8
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.dcn_hubbub_wm, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dcn_hubbub_wm_set*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_log_buffer_ctx* %1, %struct.dc_log_buffer_ctx** %4, align 8
  %9 = load %struct.dc*, %struct.dc** %3, align 8
  %10 = getelementptr inbounds %struct.dc, %struct.dc* %9, i32 0, i32 1
  %11 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  store %struct.dc_context* %11, %struct.dc_context** %5, align 8
  %12 = call i32 @memset(%struct.dcn_hubbub_wm* %6, i32 0, i32 8)
  %13 = load %struct.dc*, %struct.dc** %3, align 8
  %14 = getelementptr inbounds %struct.dc, %struct.dc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_6__*, %struct.dcn_hubbub_wm*)*, i32 (%struct.TYPE_6__*, %struct.dcn_hubbub_wm*)** %20, align 8
  %22 = load %struct.dc*, %struct.dc** %3, align 8
  %23 = getelementptr inbounds %struct.dc, %struct.dc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i32 %21(%struct.TYPE_6__* %26, %struct.dcn_hubbub_wm* %6)
  %28 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %63, %2
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %66

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.dcn_hubbub_wm, %struct.dcn_hubbub_wm* %6, i32 0, i32 0
  %34 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %34, i64 %36
  store %struct.dcn_hubbub_wm_set* %37, %struct.dcn_hubbub_wm_set** %8, align 8
  %38 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %8, align 8
  %39 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %8, align 8
  %43 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @DTN_INFO_MICRO_SEC(i32 %44)
  %46 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %8, align 8
  %47 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DTN_INFO_MICRO_SEC(i32 %48)
  %50 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %8, align 8
  %51 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DTN_INFO_MICRO_SEC(i32 %52)
  %54 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %8, align 8
  %55 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @DTN_INFO_MICRO_SEC(i32 %56)
  %58 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %8, align 8
  %59 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @DTN_INFO_MICRO_SEC(i32 %60)
  %62 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %32
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %29

66:                                               ; preds = %29
  %67 = call i32 (i8*, ...) @DTN_INFO(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memset(%struct.dcn_hubbub_wm*, i32, i32) #1

declare dso_local i32 @DTN_INFO(i8*, ...) #1

declare dso_local i32 @DTN_INFO_MICRO_SEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
