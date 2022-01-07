; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_get_memory_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_get_memory_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { i32 }

@MC_SEQ_MISC0 = common dso_local global i32 0, align 4
@MC_SEQ_MISC0_GDDR5_MASK = common dso_local global i32 0, align 4
@MC_SEQ_MISC0_GDDR5_SHIFT = common dso_local global i32 0, align 4
@MC_SEQ_MISC0_GDDR5_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv770_get_memory_type(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv7xx_power_info*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %5)
  store %struct.rv7xx_power_info* %6, %struct.rv7xx_power_info** %3, align 8
  %7 = load i32, i32* @MC_SEQ_MISC0, align 4
  %8 = call i32 @RREG32(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MC_SEQ_MISC0_GDDR5_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @MC_SEQ_MISC0_GDDR5_SHIFT, align 4
  %13 = ashr i32 %11, %12
  %14 = load i32, i32* @MC_SEQ_MISC0_GDDR5_VALUE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %18 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %21 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %16
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
