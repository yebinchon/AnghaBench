; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_hack_bounding_box.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_hack_bounding_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn_bw_internal_vars = type { i32 }
%struct.dc_debug_options = type { i64, i64 }
%struct.dc_state = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MPC_SPLIT_AVOID = common dso_local global i64 0, align 8
@MPC_SPLIT_AVOID_MULT_DISP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn_bw_internal_vars*, %struct.dc_debug_options*, %struct.dc_state*)* @hack_bounding_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hack_bounding_box(%struct.dcn_bw_internal_vars* %0, %struct.dc_debug_options* %1, %struct.dc_state* %2) #0 {
  %4 = alloca %struct.dcn_bw_internal_vars*, align 8
  %5 = alloca %struct.dc_debug_options*, align 8
  %6 = alloca %struct.dc_state*, align 8
  store %struct.dcn_bw_internal_vars* %0, %struct.dcn_bw_internal_vars** %4, align 8
  store %struct.dc_debug_options* %1, %struct.dc_debug_options** %5, align 8
  store %struct.dc_state* %2, %struct.dc_state** %6, align 8
  %7 = load %struct.dc_debug_options*, %struct.dc_debug_options** %5, align 8
  %8 = getelementptr inbounds %struct.dc_debug_options, %struct.dc_debug_options* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MPC_SPLIT_AVOID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %4, align 8
  %14 = call i32 @hack_disable_optional_pipe_split(%struct.dcn_bw_internal_vars* %13)
  br label %15

15:                                               ; preds = %12, %3
  %16 = load %struct.dc_debug_options*, %struct.dc_debug_options** %5, align 8
  %17 = getelementptr inbounds %struct.dc_debug_options, %struct.dc_debug_options* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MPC_SPLIT_AVOID_MULT_DISP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %23 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %4, align 8
  %28 = call i32 @hack_disable_optional_pipe_split(%struct.dcn_bw_internal_vars* %27)
  br label %29

29:                                               ; preds = %26, %21, %15
  %30 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %31 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.dc_debug_options*, %struct.dc_debug_options** %5, align 8
  %36 = getelementptr inbounds %struct.dc_debug_options, %struct.dc_debug_options* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %4, align 8
  %41 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %42 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @hack_force_pipe_split(%struct.dcn_bw_internal_vars* %40, i32 %48)
  br label %50

50:                                               ; preds = %39, %34, %29
  ret void
}

declare dso_local i32 @hack_disable_optional_pipe_split(%struct.dcn_bw_internal_vars*) #1

declare dso_local i32 @hack_force_pipe_split(%struct.dcn_bw_internal_vars*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
