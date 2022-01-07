; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_hack_disable_optional_pipe_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/calcs/extr_dcn_calcs.c_hack_disable_optional_pipe_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn_bw_internal_vars = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn_bw_internal_vars*)* @hack_disable_optional_pipe_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hack_disable_optional_pipe_split(%struct.dcn_bw_internal_vars* %0) #0 {
  %2 = alloca %struct.dcn_bw_internal_vars*, align 8
  store %struct.dcn_bw_internal_vars* %0, %struct.dcn_bw_internal_vars** %2, align 8
  %3 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %4 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.dcn_bw_internal_vars*, %struct.dcn_bw_internal_vars** %2, align 8
  %7 = getelementptr inbounds %struct.dcn_bw_internal_vars, %struct.dcn_bw_internal_vars* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %5, i32* %9, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
