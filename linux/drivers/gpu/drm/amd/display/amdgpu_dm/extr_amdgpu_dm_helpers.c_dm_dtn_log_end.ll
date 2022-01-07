; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_dtn_log_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_dtn_log_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.dc_log_buffer_ctx = type { i32 }

@dm_dtn_log_end.msg = internal constant [11 x i8] c"[dtn end]\0A\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_dtn_log_end(%struct.dc_context* %0, %struct.dc_log_buffer_ctx* %1) #0 {
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca %struct.dc_log_buffer_ctx*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %3, align 8
  store %struct.dc_log_buffer_ctx* %1, %struct.dc_log_buffer_ctx** %4, align 8
  %5 = load %struct.dc_log_buffer_ctx*, %struct.dc_log_buffer_ctx** %4, align 8
  %6 = icmp ne %struct.dc_log_buffer_ctx* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = call i32 @pr_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @dm_dtn_log_end.msg, i64 0, i64 0))
  br label %13

9:                                                ; preds = %2
  %10 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %11 = load %struct.dc_log_buffer_ctx*, %struct.dc_log_buffer_ctx** %4, align 8
  %12 = call i32 @dm_dtn_log_append_v(%struct.dc_context* %10, %struct.dc_log_buffer_ctx* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @dm_dtn_log_end.msg, i64 0, i64 0))
  br label %13

13:                                               ; preds = %9, %7
  ret void
}

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @dm_dtn_log_append_v(%struct.dc_context*, %struct.dc_log_buffer_ctx*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
