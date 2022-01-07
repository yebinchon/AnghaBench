; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_rs600_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs600.c_rs600_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"No VRAM object for PCIE GART.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_BUS_CNTL = common dso_local global i32 0, align 4
@RS600_BUS_MASTER_DIS = common dso_local global i32 0, align 4
@R_000100_MC_PT0_CNTL = common dso_local global i64 0, align 8
@R_00016C_MC_PT0_CLIENT0_CNTL = common dso_local global i64 0, align 8
@V_00016C_SYSTEM_ACCESS_MODE_NOT_IN_SYS = common dso_local global i32 0, align 4
@V_00016C_SYSTEM_APERTURE_UNMAPPED_PASSTHROUGH = common dso_local global i32 0, align 4
@R_000102_MC_PT0_CONTEXT0_CNTL = common dso_local global i64 0, align 8
@V_000102_PAGE_TABLE_FLAT = common dso_local global i32 0, align 4
@R_00012C_MC_PT0_CONTEXT0_FLAT_BASE_ADDR = common dso_local global i64 0, align 8
@R_00013C_MC_PT0_CONTEXT0_FLAT_START_ADDR = common dso_local global i64 0, align 8
@R_00014C_MC_PT0_CONTEXT0_FLAT_END_ADDR = common dso_local global i64 0, align 8
@R_00011C_MC_PT0_CONTEXT0_DEFAULT_READ_ADDR = common dso_local global i64 0, align 8
@R_000112_MC_PT0_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i64 0, align 8
@R_000114_MC_PT0_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i64 0, align 8
@R_000009_MC_CNTL1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @rs600_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs600_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %147

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @radeon_gart_table_vram_pin(%struct.radeon_device* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %147

26:                                               ; preds = %19
  %27 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %28 = call i32 @RREG32(i32 %27)
  %29 = load i32, i32* @RS600_BUS_MASTER_DIS, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @RADEON_BUS_CNTL, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @WREG32(i32 %32, i32 %33)
  %35 = load i64, i64* @R_000100_MC_PT0_CNTL, align 8
  %36 = call i32 @S_000100_EFFECTIVE_L2_CACHE_SIZE(i32 6)
  %37 = call i32 @S_000100_EFFECTIVE_L2_QUEUE_SIZE(i32 6)
  %38 = or i32 %36, %37
  %39 = call i32 @WREG32_MC(i64 %35, i32 %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %62, %26
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 19
  br i1 %42, label %43, label %65

43:                                               ; preds = %40
  %44 = load i64, i64* @R_00016C_MC_PT0_CLIENT0_CNTL, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = call i32 @S_00016C_ENABLE_TRANSLATION_MODE_OVERRIDE(i32 1)
  %49 = load i32, i32* @V_00016C_SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %50 = call i32 @S_00016C_SYSTEM_ACCESS_MODE_MASK(i32 %49)
  %51 = or i32 %48, %50
  %52 = load i32, i32* @V_00016C_SYSTEM_APERTURE_UNMAPPED_PASSTHROUGH, align 4
  %53 = call i32 @S_00016C_SYSTEM_APERTURE_UNMAPPED_ACCESS(i32 %52)
  %54 = or i32 %51, %53
  %55 = call i32 @S_00016C_EFFECTIVE_L1_CACHE_SIZE(i32 3)
  %56 = or i32 %54, %55
  %57 = call i32 @S_00016C_ENABLE_FRAGMENT_PROCESSING(i32 1)
  %58 = or i32 %56, %57
  %59 = call i32 @S_00016C_EFFECTIVE_L1_QUEUE_SIZE(i32 3)
  %60 = or i32 %58, %59
  %61 = call i32 @WREG32_MC(i64 %47, i32 %60)
  br label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %40

65:                                               ; preds = %40
  %66 = load i64, i64* @R_000102_MC_PT0_CONTEXT0_CNTL, align 8
  %67 = call i32 @S_000102_ENABLE_PAGE_TABLE(i32 1)
  %68 = load i32, i32* @V_000102_PAGE_TABLE_FLAT, align 4
  %69 = call i32 @S_000102_PAGE_TABLE_DEPTH(i32 %68)
  %70 = or i32 %67, %69
  %71 = call i32 @WREG32_MC(i64 %66, i32 %70)
  store i32 1, i32* %6, align 4
  br label %72

72:                                               ; preds = %81, %65
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 8
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i64, i64* @R_000102_MC_PT0_CONTEXT0_CNTL, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = call i32 @WREG32_MC(i64 %79, i32 0)
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %72

84:                                               ; preds = %72
  %85 = load i64, i64* @R_00012C_MC_PT0_CONTEXT0_FLAT_BASE_ADDR, align 8
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @WREG32_MC(i64 %85, i32 %89)
  %91 = load i64, i64* @R_00013C_MC_PT0_CONTEXT0_FLAT_START_ADDR, align 8
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @WREG32_MC(i64 %91, i32 %95)
  %97 = load i64, i64* @R_00014C_MC_PT0_CONTEXT0_FLAT_END_ADDR, align 8
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @WREG32_MC(i64 %97, i32 %101)
  %103 = load i64, i64* @R_00011C_MC_PT0_CONTEXT0_DEFAULT_READ_ADDR, align 8
  %104 = call i32 @WREG32_MC(i64 %103, i32 0)
  %105 = load i64, i64* @R_000112_MC_PT0_SYSTEM_APERTURE_LOW_ADDR, align 8
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @WREG32_MC(i64 %105, i32 %109)
  %111 = load i64, i64* @R_000114_MC_PT0_SYSTEM_APERTURE_HIGH_ADDR, align 8
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @WREG32_MC(i64 %111, i32 %115)
  %117 = load i64, i64* @R_000100_MC_PT0_CNTL, align 8
  %118 = call i32 @RREG32_MC(i64 %117)
  store i32 %118, i32* %4, align 4
  %119 = load i64, i64* @R_000100_MC_PT0_CNTL, align 8
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @S_000100_ENABLE_PT(i32 1)
  %122 = or i32 %120, %121
  %123 = call i32 @WREG32_MC(i64 %119, i32 %122)
  %124 = load i64, i64* @R_000009_MC_CNTL1, align 8
  %125 = call i32 @RREG32_MC(i64 %124)
  store i32 %125, i32* %4, align 4
  %126 = load i64, i64* @R_000009_MC_CNTL1, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @S_000009_ENABLE_PAGE_TABLES(i32 1)
  %129 = or i32 %127, %128
  %130 = call i32 @WREG32_MC(i64 %126, i32 %129)
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = call i32 @rs600_gart_tlb_flush(%struct.radeon_device* %131)
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = ashr i32 %136, 20
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %137, i64 %142)
  %144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %145 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  store i32 1, i32* %146, align 4
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %84, %24, %12
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_gart_table_vram_pin(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_MC(i64, i32) #1

declare dso_local i32 @S_000100_EFFECTIVE_L2_CACHE_SIZE(i32) #1

declare dso_local i32 @S_000100_EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @S_00016C_ENABLE_TRANSLATION_MODE_OVERRIDE(i32) #1

declare dso_local i32 @S_00016C_SYSTEM_ACCESS_MODE_MASK(i32) #1

declare dso_local i32 @S_00016C_SYSTEM_APERTURE_UNMAPPED_ACCESS(i32) #1

declare dso_local i32 @S_00016C_EFFECTIVE_L1_CACHE_SIZE(i32) #1

declare dso_local i32 @S_00016C_ENABLE_FRAGMENT_PROCESSING(i32) #1

declare dso_local i32 @S_00016C_EFFECTIVE_L1_QUEUE_SIZE(i32) #1

declare dso_local i32 @S_000102_ENABLE_PAGE_TABLE(i32) #1

declare dso_local i32 @S_000102_PAGE_TABLE_DEPTH(i32) #1

declare dso_local i32 @RREG32_MC(i64) #1

declare dso_local i32 @S_000100_ENABLE_PT(i32) #1

declare dso_local i32 @S_000009_ENABLE_PAGE_TABLES(i32) #1

declare dso_local i32 @rs600_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
