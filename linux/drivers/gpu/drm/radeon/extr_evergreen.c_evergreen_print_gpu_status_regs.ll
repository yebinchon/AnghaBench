; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_print_gpu_status_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_print_gpu_status_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"  GRBM_STATUS               = 0x%08X\0A\00", align 1
@GRBM_STATUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"  GRBM_STATUS_SE0           = 0x%08X\0A\00", align 1
@GRBM_STATUS_SE0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"  GRBM_STATUS_SE1           = 0x%08X\0A\00", align 1
@GRBM_STATUS_SE1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"  SRBM_STATUS               = 0x%08X\0A\00", align 1
@SRBM_STATUS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"  SRBM_STATUS2              = 0x%08X\0A\00", align 1
@SRBM_STATUS2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"  R_008674_CP_STALLED_STAT1 = 0x%08X\0A\00", align 1
@CP_STALLED_STAT1 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"  R_008678_CP_STALLED_STAT2 = 0x%08X\0A\00", align 1
@CP_STALLED_STAT2 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"  R_00867C_CP_BUSY_STAT     = 0x%08X\0A\00", align 1
@CP_BUSY_STAT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"  R_008680_CP_STAT          = 0x%08X\0A\00", align 1
@CP_STAT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [38 x i8] c"  R_00D034_DMA_STATUS_REG   = 0x%08X\0A\00", align 1
@DMA_STATUS_REG = common dso_local global i64 0, align 8
@CHIP_CAYMAN = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [38 x i8] c"  R_00D834_DMA_STATUS_REG   = 0x%08X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_print_gpu_status_regs(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load i64, i64* @GRBM_STATUS, align 8
  %7 = call i32 @RREG32(i64 %6)
  %8 = call i32 @dev_info(i32 %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i64, i64* @GRBM_STATUS_SE0, align 8
  %13 = call i32 @RREG32(i64 %12)
  %14 = call i32 @dev_info(i32 %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* @GRBM_STATUS_SE1, align 8
  %19 = call i32 @RREG32(i64 %18)
  %20 = call i32 @dev_info(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* @SRBM_STATUS, align 8
  %25 = call i32 @RREG32(i64 %24)
  %26 = call i32 @dev_info(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* @SRBM_STATUS2, align 8
  %31 = call i32 @RREG32(i64 %30)
  %32 = call i32 @dev_info(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* @CP_STALLED_STAT1, align 8
  %37 = call i32 @RREG32(i64 %36)
  %38 = call i32 @dev_info(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* @CP_STALLED_STAT2, align 8
  %43 = call i32 @RREG32(i64 %42)
  %44 = call i32 @dev_info(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %43)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* @CP_BUSY_STAT, align 8
  %49 = call i32 @RREG32(i64 %48)
  %50 = call i32 @dev_info(i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* @CP_STAT, align 8
  %55 = call i32 @RREG32(i64 %54)
  %56 = call i32 @dev_info(i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %55)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* @DMA_STATUS_REG, align 8
  %61 = call i32 @RREG32(i64 %60)
  %62 = call i32 @dev_info(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %61)
  %63 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CHIP_CAYMAN, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %1
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* @DMA_STATUS_REG, align 8
  %73 = add nsw i64 %72, 2048
  %74 = call i32 @RREG32(i64 %73)
  %75 = call i32 @dev_info(i32 %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %68, %1
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @RREG32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
