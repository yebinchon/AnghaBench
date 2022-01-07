; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_get_pcie_gen2_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_get_pcie_gen2_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { i32, i32 }

@PCIE_LC_SPEED_CNTL = common dso_local global i32 0, align 4
@LC_OTHER_SIDE_EVER_SENT_GEN2 = common dso_local global i32 0, align 4
@LC_OTHER_SIDE_SUPPORTS_GEN2 = common dso_local global i32 0, align 4
@LC_CURRENT_DATA_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rv770_get_pcie_gen2_status(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.rv7xx_power_info*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %5)
  store %struct.rv7xx_power_info* %6, %struct.rv7xx_power_info** %3, align 8
  %7 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %8 = call i32 @RREG32_PCIE_PORT(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @LC_OTHER_SIDE_EVER_SENT_GEN2, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @LC_OTHER_SIDE_SUPPORTS_GEN2, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %20 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %24

21:                                               ; preds = %13, %1
  %22 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %23 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %26 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @LC_CURRENT_DATA_RATE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %36 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %40

37:                                               ; preds = %29
  %38 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %39 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %44

41:                                               ; preds = %24
  %42 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %3, align 8
  %43 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %40
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_PCIE_PORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
