; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_get_mvdd_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_get_mvdd_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { i32, i64 }
%struct.evergreen_power_info = type { i32, i32 }
%struct.atom_memory_info = type { i32 }

@GENERAL_PWRMGT = common dso_local global i32 0, align 4
@BACKBIAS_PAD_EN = common dso_local global i32 0, align 4
@BACKBIAS_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cypress_get_mvdd_configuration(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.evergreen_power_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.atom_memory_info, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %9)
  store %struct.rv7xx_power_info* %10, %struct.rv7xx_power_info** %4, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %11)
  store %struct.evergreen_power_info* %12, %struct.evergreen_power_info** %5, align 8
  %13 = load i32, i32* @GENERAL_PWRMGT, align 4
  %14 = call i32 @RREG32(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @BACKBIAS_PAD_EN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %21 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %23 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %25 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  store i32 0, i32* %2, align 4
  br label %67

26:                                               ; preds = %1
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @BACKBIAS_VALUE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %33 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %36 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %39 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %45 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = call i32 @rv770_get_memory_module_index(%struct.radeon_device* %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @radeon_atom_get_memory_info(%struct.radeon_device* %48, i32 %49, %struct.atom_memory_info* %7)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %54 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  store i32 0, i32* %2, align 4
  br label %67

55:                                               ; preds = %37
  %56 = call i64 @cypress_get_mclk_split_point(%struct.atom_memory_info* %7)
  %57 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %58 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %60 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %65 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  store i32 0, i32* %2, align 4
  br label %67

66:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %63, %52, %19
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @rv770_get_memory_module_index(%struct.radeon_device*) #1

declare dso_local i64 @radeon_atom_get_memory_info(%struct.radeon_device*, i32, %struct.atom_memory_info*) #1

declare dso_local i64 @cypress_get_mclk_split_point(%struct.atom_memory_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
