; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_get_power_num_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_amdgpu_smu.c_smu_get_power_num_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }
%struct.pp_states_info = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@POWER_STATE_TYPE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_get_power_num_states(%struct.smu_context* %0, %struct.pp_states_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca %struct.pp_states_info*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store %struct.pp_states_info* %1, %struct.pp_states_info** %5, align 8
  %6 = load %struct.pp_states_info*, %struct.pp_states_info** %5, align 8
  %7 = icmp ne %struct.pp_states_info* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %21

11:                                               ; preds = %2
  %12 = load %struct.pp_states_info*, %struct.pp_states_info** %5, align 8
  %13 = call i32 @memset(%struct.pp_states_info* %12, i32 0, i32 16)
  %14 = load %struct.pp_states_info*, %struct.pp_states_info** %5, align 8
  %15 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load i32, i32* @POWER_STATE_TYPE_DEFAULT, align 4
  %17 = load %struct.pp_states_info*, %struct.pp_states_info** %5, align 8
  %18 = getelementptr inbounds %struct.pp_states_info, %struct.pp_states_info* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %11, %8
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @memset(%struct.pp_states_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
