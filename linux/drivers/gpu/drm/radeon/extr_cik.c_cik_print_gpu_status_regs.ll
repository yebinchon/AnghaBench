; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_print_gpu_status_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_print_gpu_status_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"  GRBM_STATUS=0x%08X\0A\00", align 1
@GRBM_STATUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"  GRBM_STATUS2=0x%08X\0A\00", align 1
@GRBM_STATUS2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"  GRBM_STATUS_SE0=0x%08X\0A\00", align 1
@GRBM_STATUS_SE0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"  GRBM_STATUS_SE1=0x%08X\0A\00", align 1
@GRBM_STATUS_SE1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"  GRBM_STATUS_SE2=0x%08X\0A\00", align 1
@GRBM_STATUS_SE2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"  GRBM_STATUS_SE3=0x%08X\0A\00", align 1
@GRBM_STATUS_SE3 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"  SRBM_STATUS=0x%08X\0A\00", align 1
@SRBM_STATUS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"  SRBM_STATUS2=0x%08X\0A\00", align 1
@SRBM_STATUS2 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"  SDMA0_STATUS_REG   = 0x%08X\0A\00", align 1
@SDMA0_STATUS_REG = common dso_local global i64 0, align 8
@SDMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"  SDMA1_STATUS_REG   = 0x%08X\0A\00", align 1
@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"  CP_STAT = 0x%08x\0A\00", align 1
@CP_STAT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [29 x i8] c"  CP_STALLED_STAT1 = 0x%08x\0A\00", align 1
@CP_STALLED_STAT1 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [29 x i8] c"  CP_STALLED_STAT2 = 0x%08x\0A\00", align 1
@CP_STALLED_STAT2 = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [29 x i8] c"  CP_STALLED_STAT3 = 0x%08x\0A\00", align 1
@CP_STALLED_STAT3 = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [29 x i8] c"  CP_CPF_BUSY_STAT = 0x%08x\0A\00", align 1
@CP_CPF_BUSY_STAT = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [33 x i8] c"  CP_CPF_STALLED_STAT1 = 0x%08x\0A\00", align 1
@CP_CPF_STALLED_STAT1 = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [26 x i8] c"  CP_CPF_STATUS = 0x%08x\0A\00", align 1
@CP_CPF_STATUS = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [29 x i8] c"  CP_CPC_BUSY_STAT = 0x%08x\0A\00", align 1
@CP_CPC_BUSY_STAT = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [33 x i8] c"  CP_CPC_STALLED_STAT1 = 0x%08x\0A\00", align 1
@CP_CPC_STALLED_STAT1 = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [26 x i8] c"  CP_CPC_STATUS = 0x%08x\0A\00", align 1
@CP_CPC_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @cik_print_gpu_status_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_print_gpu_status_regs(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i64, i64* @GRBM_STATUS, align 8
  %7 = call i32 @RREG32(i64 %6)
  %8 = call i32 @dev_info(i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* @GRBM_STATUS2, align 8
  %13 = call i32 @RREG32(i64 %12)
  %14 = call i32 @dev_info(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @GRBM_STATUS_SE0, align 8
  %19 = call i32 @RREG32(i64 %18)
  %20 = call i32 @dev_info(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @GRBM_STATUS_SE1, align 8
  %25 = call i32 @RREG32(i64 %24)
  %26 = call i32 @dev_info(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @GRBM_STATUS_SE2, align 8
  %31 = call i32 @RREG32(i64 %30)
  %32 = call i32 @dev_info(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @GRBM_STATUS_SE3, align 8
  %37 = call i32 @RREG32(i64 %36)
  %38 = call i32 @dev_info(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* @SRBM_STATUS, align 8
  %43 = call i32 @RREG32(i64 %42)
  %44 = call i32 @dev_info(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %43)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @SRBM_STATUS2, align 8
  %49 = call i32 @RREG32(i64 %48)
  %50 = call i32 @dev_info(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* @SDMA0_STATUS_REG, align 8
  %55 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @RREG32(i64 %56)
  %58 = call i32 @dev_info(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %57)
  %59 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* @SDMA0_STATUS_REG, align 8
  %63 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @RREG32(i64 %64)
  %66 = call i32 @dev_info(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %65)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* @CP_STAT, align 8
  %71 = call i32 @RREG32(i64 %70)
  %72 = call i32 @dev_info(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %71)
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* @CP_STALLED_STAT1, align 8
  %77 = call i32 @RREG32(i64 %76)
  %78 = call i32 @dev_info(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %77)
  %79 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* @CP_STALLED_STAT2, align 8
  %83 = call i32 @RREG32(i64 %82)
  %84 = call i32 @dev_info(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %83)
  %85 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* @CP_STALLED_STAT3, align 8
  %89 = call i32 @RREG32(i64 %88)
  %90 = call i32 @dev_info(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %89)
  %91 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* @CP_CPF_BUSY_STAT, align 8
  %95 = call i32 @RREG32(i64 %94)
  %96 = call i32 @dev_info(i32 %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %95)
  %97 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* @CP_CPF_STALLED_STAT1, align 8
  %101 = call i32 @RREG32(i64 %100)
  %102 = call i32 @dev_info(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 %101)
  %103 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* @CP_CPF_STATUS, align 8
  %107 = call i32 @RREG32(i64 %106)
  %108 = call i32 @dev_info(i32 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %107)
  %109 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i64, i64* @CP_CPC_BUSY_STAT, align 8
  %113 = call i32 @RREG32(i64 %112)
  %114 = call i32 @dev_info(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i32 %113)
  %115 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* @CP_CPC_STALLED_STAT1, align 8
  %119 = call i32 @RREG32(i64 %118)
  %120 = call i32 @dev_info(i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i32 %119)
  %121 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* @CP_CPC_STATUS, align 8
  %125 = call i32 @RREG32(i64 %124)
  %126 = call i32 @dev_info(i32 %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i32 %125)
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
