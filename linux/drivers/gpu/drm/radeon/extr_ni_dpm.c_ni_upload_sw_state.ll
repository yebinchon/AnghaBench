; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_upload_sw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_upload_sw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i32, i32 }

@NISLANDS_SMC_STATETABLE = common dso_local global i32 0, align 4
@driverState = common dso_local global i32 0, align 4
@NISLANDS_MAX_SMC_PERFORMANCE_LEVELS_PER_SWSTATE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*)* @ni_upload_sw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_upload_sw_state(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.rv7xx_power_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %11)
  store %struct.rv7xx_power_info* %12, %struct.rv7xx_power_info** %6, align 8
  %13 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %14 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NISLANDS_SMC_STATETABLE, align 4
  %17 = load i32, i32* @driverState, align 4
  %18 = call i32 @offsetof(i32 %16, i32 %17)
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @NISLANDS_MAX_SMC_PERFORMANCE_LEVELS_PER_SWSTATE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = add i64 4, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kzalloc(i32 %26, i32 %27)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %55

34:                                               ; preds = %2
  %35 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %36 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @ni_convert_power_state_to_smc(%struct.radeon_device* %35, %struct.radeon_ps* %36, i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %51

42:                                               ; preds = %34
  %43 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %6, align 8
  %48 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rv770_copy_bytes_to_smc(%struct.radeon_device* %43, i32 %44, i32* %45, i32 %46, i32 %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %42, %41
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @kfree(i32* %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %31
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @ni_convert_power_state_to_smc(%struct.radeon_device*, %struct.radeon_ps*, i32*) #1

declare dso_local i32 @rv770_copy_bytes_to_smc(%struct.radeon_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
