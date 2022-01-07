; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_mc_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_mc_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.r100_mc_save = type { i32 }

@RADEON_IS_AGP = common dso_local global i32 0, align 4
@R_00014C_MC_AGP_LOCATION = common dso_local global i32 0, align 4
@R_000170_AGP_BASE = common dso_local global i32 0, align 4
@CHIP_RV200 = common dso_local global i64 0, align 8
@R_00015C_AGP_BASE_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Wait for MC idle timeout.\0A\00", align 1
@R_000148_MC_FB_LOCATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @r100_mc_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r100_mc_program(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.r100_mc_save, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call i32 @r100_mc_stop(%struct.radeon_device* %4, %struct.r100_mc_save* %3)
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @RADEON_IS_AGP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %1
  %13 = load i32, i32* @R_00014C_MC_AGP_LOCATION, align 4
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %17, 16
  %19 = call i32 @S_00014C_MC_AGP_START(i32 %18)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 16
  %25 = call i32 @S_00014C_MC_AGP_TOP(i32 %24)
  %26 = or i32 %19, %25
  %27 = call i32 @WREG32(i32 %13, i32 %26)
  %28 = load i32, i32* @R_000170_AGP_BASE, align 4
  %29 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @lower_32_bits(i32 %32)
  %34 = call i32 @WREG32(i32 %28, i32 %33)
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CHIP_RV200, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %12
  %41 = load i32, i32* @R_00015C_AGP_BASE_2, align 4
  %42 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @upper_32_bits(i32 %45)
  %47 = and i32 %46, 255
  %48 = call i32 @WREG32(i32 %41, i32 %47)
  br label %49

49:                                               ; preds = %40, %12
  br label %64

50:                                               ; preds = %1
  %51 = load i32, i32* @R_00014C_MC_AGP_LOCATION, align 4
  %52 = call i32 @WREG32(i32 %51, i32 268435455)
  %53 = load i32, i32* @R_000170_AGP_BASE, align 4
  %54 = call i32 @WREG32(i32 %53, i32 0)
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CHIP_RV200, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @R_00015C_AGP_BASE_2, align 4
  %62 = call i32 @WREG32(i32 %61, i32 0)
  br label %63

63:                                               ; preds = %60, %50
  br label %64

64:                                               ; preds = %63, %49
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = call i64 @r100_mc_wait_for_idle(%struct.radeon_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_warn(i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i32, i32* @R_000148_MC_FB_LOCATION, align 4
  %75 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = ashr i32 %78, 16
  %80 = call i32 @S_000148_MC_FB_START(i32 %79)
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 16
  %86 = call i32 @S_000148_MC_FB_TOP(i32 %85)
  %87 = or i32 %80, %86
  %88 = call i32 @WREG32(i32 %74, i32 %87)
  %89 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %90 = call i32 @r100_mc_resume(%struct.radeon_device* %89, %struct.r100_mc_save* %3)
  ret void
}

declare dso_local i32 @r100_mc_stop(%struct.radeon_device*, %struct.r100_mc_save*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @S_00014C_MC_AGP_START(i32) #1

declare dso_local i32 @S_00014C_MC_AGP_TOP(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i64 @r100_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @S_000148_MC_FB_START(i32) #1

declare dso_local i32 @S_000148_MC_FB_TOP(i32) #1

declare dso_local i32 @r100_mc_resume(%struct.radeon_device*, %struct.r100_mc_save*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
