; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_optc.c_optc2_use_gsl_as_master_update_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_optc.c_optc2_use_gsl_as_master_update_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timing_generator = type { i32 }
%struct.gsl_params = type { i32 }
%struct.optc = type { i32 }

@OTG_GSL_CONTROL = common dso_local global i32 0, align 4
@OTG_MASTER_UPDATE_LOCK_GSL_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optc2_use_gsl_as_master_update_lock(%struct.timing_generator* %0, %struct.gsl_params* %1) #0 {
  %3 = alloca %struct.timing_generator*, align 8
  %4 = alloca %struct.gsl_params*, align 8
  %5 = alloca %struct.optc*, align 8
  store %struct.timing_generator* %0, %struct.timing_generator** %3, align 8
  store %struct.gsl_params* %1, %struct.gsl_params** %4, align 8
  %6 = load %struct.timing_generator*, %struct.timing_generator** %3, align 8
  %7 = call %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator* %6)
  store %struct.optc* %7, %struct.optc** %5, align 8
  %8 = load i32, i32* @OTG_GSL_CONTROL, align 4
  %9 = load i32, i32* @OTG_MASTER_UPDATE_LOCK_GSL_EN, align 4
  %10 = load %struct.gsl_params*, %struct.gsl_params** %4, align 8
  %11 = getelementptr inbounds %struct.gsl_params, %struct.gsl_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @REG_UPDATE(i32 %8, i32 %9, i32 %12)
  ret void
}

declare dso_local %struct.optc* @DCN10TG_FROM_TG(%struct.timing_generator*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
