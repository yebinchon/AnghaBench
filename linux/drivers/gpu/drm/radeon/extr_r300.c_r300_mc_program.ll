; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_r300_mc_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_r300_mc_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.r100_mc_save = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Failed to create r100_mc debugfs file.\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@R_00014C_MC_AGP_LOCATION = common dso_local global i32 0, align 4
@R_000170_AGP_BASE = common dso_local global i32 0, align 4
@R_00015C_AGP_BASE_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to wait MC idle before programming MC.\0A\00", align 1
@R_000148_MC_FB_LOCATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r300_mc_program(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.r100_mc_save, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = call i32 @r100_debugfs_mc_info_init(%struct.radeon_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = call i32 @r100_mc_stop(%struct.radeon_device* %15, %struct.r100_mc_save* %3)
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RADEON_IS_AGP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %14
  %24 = load i32, i32* @R_00014C_MC_AGP_LOCATION, align 4
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 16
  %30 = call i32 @S_00014C_MC_AGP_START(i32 %29)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 16
  %36 = call i32 @S_00014C_MC_AGP_TOP(i32 %35)
  %37 = or i32 %30, %36
  %38 = call i32 @WREG32(i32 %24, i32 %37)
  %39 = load i32, i32* @R_000170_AGP_BASE, align 4
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @lower_32_bits(i32 %43)
  %45 = call i32 @WREG32(i32 %39, i32 %44)
  %46 = load i32, i32* @R_00015C_AGP_BASE_2, align 4
  %47 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @upper_32_bits(i32 %50)
  %52 = and i32 %51, 255
  %53 = call i32 @WREG32(i32 %46, i32 %52)
  br label %61

54:                                               ; preds = %14
  %55 = load i32, i32* @R_00014C_MC_AGP_LOCATION, align 4
  %56 = call i32 @WREG32(i32 %55, i32 268435455)
  %57 = load i32, i32* @R_000170_AGP_BASE, align 4
  %58 = call i32 @WREG32(i32 %57, i32 0)
  %59 = load i32, i32* @R_00015C_AGP_BASE_2, align 4
  %60 = call i32 @WREG32(i32 %59, i32 0)
  br label %61

61:                                               ; preds = %54, %23
  %62 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %63 = call i64 @r300_mc_wait_for_idle(%struct.radeon_device* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 @DRM_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* @R_000148_MC_FB_LOCATION, align 4
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 16
  %74 = call i32 @S_000148_MC_FB_START(i32 %73)
  %75 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 16
  %80 = call i32 @S_000148_MC_FB_TOP(i32 %79)
  %81 = or i32 %74, %80
  %82 = call i32 @WREG32(i32 %68, i32 %81)
  %83 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %84 = call i32 @r100_mc_resume(%struct.radeon_device* %83, %struct.r100_mc_save* %3)
  ret void
}

declare dso_local i32 @r100_debugfs_mc_info_init(%struct.radeon_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @r100_mc_stop(%struct.radeon_device*, %struct.r100_mc_save*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @S_00014C_MC_AGP_START(i32) #1

declare dso_local i32 @S_00014C_MC_AGP_TOP(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i64 @r300_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @S_000148_MC_FB_START(i32) #1

declare dso_local i32 @S_000148_MC_FB_TOP(i32) #1

declare dso_local i32 @r100_mc_resume(%struct.radeon_device*, %struct.r100_mc_save*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
