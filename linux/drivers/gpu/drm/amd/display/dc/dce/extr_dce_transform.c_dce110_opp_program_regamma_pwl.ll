; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_dce110_opp_program_regamma_pwl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_dce110_opp_program_regamma_pwl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transform = type { i32 }
%struct.pwl_params = type { i32 }
%struct.dce_transform = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_opp_program_regamma_pwl(%struct.transform* %0, %struct.pwl_params* %1) #0 {
  %3 = alloca %struct.transform*, align 8
  %4 = alloca %struct.pwl_params*, align 8
  %5 = alloca %struct.dce_transform*, align 8
  store %struct.transform* %0, %struct.transform** %3, align 8
  store %struct.pwl_params* %1, %struct.pwl_params** %4, align 8
  %6 = load %struct.transform*, %struct.transform** %3, align 8
  %7 = call %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform* %6)
  store %struct.dce_transform* %7, %struct.dce_transform** %5, align 8
  %8 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %9 = load %struct.pwl_params*, %struct.pwl_params** %4, align 8
  %10 = call i32 @regamma_config_regions_and_segments(%struct.dce_transform* %8, %struct.pwl_params* %9)
  %11 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %12 = load %struct.pwl_params*, %struct.pwl_params** %4, align 8
  %13 = call i32 @program_pwl(%struct.dce_transform* %11, %struct.pwl_params* %12)
  ret void
}

declare dso_local %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform*) #1

declare dso_local i32 @regamma_config_regions_and_segments(%struct.dce_transform*, %struct.pwl_params*) #1

declare dso_local i32 @program_pwl(%struct.dce_transform*, %struct.pwl_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
