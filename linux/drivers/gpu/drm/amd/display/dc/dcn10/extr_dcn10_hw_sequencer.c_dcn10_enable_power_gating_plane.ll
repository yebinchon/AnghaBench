; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_enable_power_gating_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_enable_power_gating_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { i32 }

@DOMAIN0_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN0_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN2_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN2_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN4_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN4_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN6_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN6_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN1_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN1_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN3_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN3_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN5_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN5_POWER_FORCEON = common dso_local global i32 0, align 4
@DOMAIN7_PG_CONFIG = common dso_local global i32 0, align 4
@DOMAIN7_POWER_FORCEON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_hwseq*, i32)* @dcn10_enable_power_gating_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_enable_power_gating_plane(%struct.dce_hwseq* %0, i32 %1) #0 {
  %3 = alloca %struct.dce_hwseq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dce_hwseq* %0, %struct.dce_hwseq** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, i32* @DOMAIN0_PG_CONFIG, align 4
  %11 = load i32, i32* @DOMAIN0_POWER_FORCEON, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @REG_UPDATE(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @DOMAIN2_PG_CONFIG, align 4
  %15 = load i32, i32* @DOMAIN2_POWER_FORCEON, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @REG_UPDATE(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @DOMAIN4_PG_CONFIG, align 4
  %19 = load i32, i32* @DOMAIN4_POWER_FORCEON, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @REG_UPDATE(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @DOMAIN6_PG_CONFIG, align 4
  %23 = load i32, i32* @DOMAIN6_POWER_FORCEON, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @REG_UPDATE(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @DOMAIN1_PG_CONFIG, align 4
  %27 = load i32, i32* @DOMAIN1_POWER_FORCEON, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @REG_UPDATE(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @DOMAIN3_PG_CONFIG, align 4
  %31 = load i32, i32* @DOMAIN3_POWER_FORCEON, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @REG_UPDATE(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @DOMAIN5_PG_CONFIG, align 4
  %35 = load i32, i32* @DOMAIN5_POWER_FORCEON, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @REG_UPDATE(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @DOMAIN7_PG_CONFIG, align 4
  %39 = load i32, i32* @DOMAIN7_POWER_FORCEON, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @REG_UPDATE(i32 %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
