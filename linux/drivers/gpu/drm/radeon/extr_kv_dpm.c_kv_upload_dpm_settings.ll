; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_upload_dpm_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_upload_dpm_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.kv_power_info = type { i32, i32, i64, i32 }

@SMU7_Fusion_DpmTable = common dso_local global i32 0, align 4
@GraphicsLevel = common dso_local global i32 0, align 4
@SMU7_MAX_LEVELS_GRAPHICS = common dso_local global i32 0, align 4
@GraphicsDpmLevelCount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @kv_upload_dpm_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_upload_dpm_settings(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.kv_power_info*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.kv_power_info* @kv_get_pi(%struct.radeon_device* %6)
  store %struct.kv_power_info* %7, %struct.kv_power_info** %4, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %10 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %13 = load i32, i32* @GraphicsLevel, align 4
  %14 = call i64 @offsetof(i32 %12, i32 %13)
  %15 = add nsw i64 %11, %14
  %16 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %17 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %16, i32 0, i32 3
  %18 = load i32, i32* @SMU7_MAX_LEVELS_GRAPHICS, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %23 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @kv_copy_bytes_to_smc(%struct.radeon_device* %8, i64 %15, i32* %17, i32 %21, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %46

30:                                               ; preds = %1
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %33 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %36 = load i32, i32* @GraphicsDpmLevelCount, align 4
  %37 = call i64 @offsetof(i32 %35, i32 %36)
  %38 = add nsw i64 %34, %37
  %39 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %40 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %39, i32 0, i32 1
  %41 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %42 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @kv_copy_bytes_to_smc(%struct.radeon_device* %31, i64 %38, i32* %40, i32 4, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %30, %28
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @kv_copy_bytes_to_smc(%struct.radeon_device*, i64, i32*, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
