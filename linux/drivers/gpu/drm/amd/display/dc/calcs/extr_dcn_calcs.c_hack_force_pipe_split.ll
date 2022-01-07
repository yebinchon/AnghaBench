; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_hack_force_pipe_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_hack_force_pipe_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn_bw_internal_vars = type { float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn_bw_internal_vars*, i32)* @hack_force_pipe_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hack_force_pipe_split(%struct.dcn_bw_internal_vars* %0, i32 %1) #0 {
  %3 = alloca %struct.dcn_bw_internal_vars*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store %struct.dcn_bw_internal_vars* %0, %struct.dcn_bw_internal_vars** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = udiv i32 %6, 10000
  %8 = uitofp i32 %7 to float
  store float %8, float* %5, align 4
  %9 = load float, float* %5, align 4
  %10 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %3, align 8
  %11 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %10, i32 0, i32 0
  %12 = load float*, float** %11, align 8
  %13 = getelementptr inbounds float, float* %12, i64 0
  %14 = load float, float* %13, align 4
  %15 = fcmp olt float %9, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load float, float* %5, align 4
  %18 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %3, align 8
  %19 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %18, i32 0, i32 0
  %20 = load float*, float** %19, align 8
  %21 = getelementptr inbounds float, float* %20, i64 0
  store float %17, float* %21, align 4
  br label %22

22:                                               ; preds = %16, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
