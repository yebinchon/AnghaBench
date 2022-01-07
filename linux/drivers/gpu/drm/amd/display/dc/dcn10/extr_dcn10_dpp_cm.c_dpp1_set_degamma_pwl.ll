; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_set_degamma_pwl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_set_degamma_pwl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.pwl_params = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp1_set_degamma_pwl(%struct.dpp* %0, %struct.pwl_params* %1) #0 {
  %3 = alloca %struct.dpp*, align 8
  %4 = alloca %struct.pwl_params*, align 8
  %5 = alloca i32, align 4
  store %struct.dpp* %0, %struct.dpp** %3, align 8
  store %struct.pwl_params* %1, %struct.pwl_params** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.dpp*, %struct.dpp** %3, align 8
  %7 = call i32 @dpp1_power_on_degamma_lut(%struct.dpp* %6, i32 1)
  %8 = load %struct.dpp*, %struct.dpp** %3, align 8
  %9 = call i32 @dpp1_enable_cm_block(%struct.dpp* %8)
  %10 = load %struct.dpp*, %struct.dpp** %3, align 8
  %11 = call i32 @dpp1_degamma_ram_inuse(%struct.dpp* %10, i32* %5)
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.dpp*, %struct.dpp** %3, align 8
  %16 = load %struct.pwl_params*, %struct.pwl_params** %4, align 8
  %17 = call i32 @dpp1_program_degamma_lutb_settings(%struct.dpp* %15, %struct.pwl_params* %16)
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.dpp*, %struct.dpp** %3, align 8
  %20 = load %struct.pwl_params*, %struct.pwl_params** %4, align 8
  %21 = call i32 @dpp1_program_degamma_luta_settings(%struct.dpp* %19, %struct.pwl_params* %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.dpp*, %struct.dpp** %3, align 8
  %24 = load %struct.pwl_params*, %struct.pwl_params** %4, align 8
  %25 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pwl_params*, %struct.pwl_params** %4, align 8
  %28 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @dpp1_program_degamma_lut(%struct.dpp* %23, i32 %26, i32 %29, i32 %33)
  %35 = load %struct.dpp*, %struct.dpp** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @dpp1_degamma_ram_select(%struct.dpp* %35, i32 %39)
  ret void
}

declare dso_local i32 @dpp1_power_on_degamma_lut(%struct.dpp*, i32) #1

declare dso_local i32 @dpp1_enable_cm_block(%struct.dpp*) #1

declare dso_local i32 @dpp1_degamma_ram_inuse(%struct.dpp*, i32*) #1

declare dso_local i32 @dpp1_program_degamma_lutb_settings(%struct.dpp*, %struct.pwl_params*) #1

declare dso_local i32 @dpp1_program_degamma_luta_settings(%struct.dpp*, %struct.pwl_params*) #1

declare dso_local i32 @dpp1_program_degamma_lut(%struct.dpp*, i32, i32, i32) #1

declare dso_local i32 @dpp1_degamma_ram_select(%struct.dpp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
