; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_rlc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_rlc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.rlc_firmware_header_v1_0 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RLC_RL_BASE = common dso_local global i32 0, align 4
@RLC_RL_SIZE = common dso_local global i32 0, align 4
@RLC_LB_CNTL = common dso_local global i32 0, align 4
@RLC_LB_CNTR_MAX = common dso_local global i32 0, align 4
@RLC_LB_CNTR_INIT = common dso_local global i32 0, align 4
@RLC_LB_INIT_CU_MASK = common dso_local global i32 0, align 4
@RLC_MC_CNTL = common dso_local global i32 0, align 4
@RLC_UCODE_CNTL = common dso_local global i32 0, align 4
@RLC_UCODE_ADDR = common dso_local global i32 0, align 4
@RLC_UCODE_DATA = common dso_local global i32 0, align 4
@SI_RLC_UCODE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_rlc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_rlc_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rlc_firmware_header_v1_0*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %127

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = call i32 @si_rlc_stop(%struct.radeon_device* %17)
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = call i32 @si_rlc_reset(%struct.radeon_device* %19)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = call i32 @si_init_pg(%struct.radeon_device* %21)
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = call i32 @si_init_cg(%struct.radeon_device* %23)
  %25 = load i32, i32* @RLC_RL_BASE, align 4
  %26 = call i32 @WREG32(i32 %25, i64 0)
  %27 = load i32, i32* @RLC_RL_SIZE, align 4
  %28 = call i32 @WREG32(i32 %27, i64 0)
  %29 = load i32, i32* @RLC_LB_CNTL, align 4
  %30 = call i32 @WREG32(i32 %29, i64 0)
  %31 = load i32, i32* @RLC_LB_CNTR_MAX, align 4
  %32 = call i32 @WREG32(i32 %31, i64 4294967295)
  %33 = load i32, i32* @RLC_LB_CNTR_INIT, align 4
  %34 = call i32 @WREG32(i32 %33, i64 0)
  %35 = load i32, i32* @RLC_LB_INIT_CU_MASK, align 4
  %36 = call i32 @WREG32(i32 %35, i64 4294967295)
  %37 = load i32, i32* @RLC_MC_CNTL, align 4
  %38 = call i32 @WREG32(i32 %37, i64 0)
  %39 = load i32, i32* @RLC_UCODE_CNTL, align 4
  %40 = call i32 @WREG32(i32 %39, i64 0)
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %93

45:                                               ; preds = %16
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.rlc_firmware_header_v1_0*
  store %struct.rlc_firmware_header_v1_0* %51, %struct.rlc_firmware_header_v1_0** %5, align 8
  %52 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %5, align 8
  %53 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = sdiv i32 %56, 4
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %6, align 8
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %5, align 8
  %65 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %63, %69
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %7, align 8
  %72 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %5, align 8
  %73 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %72, i32 0, i32 0
  %74 = call i32 @radeon_ucode_print_rlc_hdr(%struct.TYPE_4__* %73)
  store i64 0, i64* %4, align 8
  br label %75

75:                                               ; preds = %89, %45
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @WREG32(i32 %80, i64 %81)
  %83 = load i32, i32* @RLC_UCODE_DATA, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %7, align 8
  %86 = ptrtoint i32* %84 to i32
  %87 = call i64 @le32_to_cpup(i32 %86)
  %88 = call i32 @WREG32(i32 %83, i64 %87)
  br label %89

89:                                               ; preds = %79
  %90 = load i64, i64* %4, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %4, align 8
  br label %75

92:                                               ; preds = %75
  br label %118

93:                                               ; preds = %16
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i32*
  store i32* %99, i32** %8, align 8
  store i64 0, i64* %4, align 8
  br label %100

100:                                              ; preds = %114, %93
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* @SI_RLC_UCODE_SIZE, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %106 = load i64, i64* %4, align 8
  %107 = call i32 @WREG32(i32 %105, i64 %106)
  %108 = load i32, i32* @RLC_UCODE_DATA, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %8, align 8
  %111 = ptrtoint i32* %109 to i32
  %112 = call i64 @be32_to_cpup(i32 %111)
  %113 = call i32 @WREG32(i32 %108, i64 %112)
  br label %114

114:                                              ; preds = %104
  %115 = load i64, i64* %4, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %4, align 8
  br label %100

117:                                              ; preds = %100
  br label %118

118:                                              ; preds = %117, %92
  %119 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %120 = call i32 @WREG32(i32 %119, i64 0)
  %121 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %122 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %123 = call i32 @si_lbpw_supported(%struct.radeon_device* %122)
  %124 = call i32 @si_enable_lbpw(%struct.radeon_device* %121, i32 %123)
  %125 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %126 = call i32 @si_rlc_start(%struct.radeon_device* %125)
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %118, %13
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @si_rlc_stop(%struct.radeon_device*) #1

declare dso_local i32 @si_rlc_reset(%struct.radeon_device*) #1

declare dso_local i32 @si_init_pg(%struct.radeon_device*) #1

declare dso_local i32 @si_init_cg(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @radeon_ucode_print_rlc_hdr(%struct.TYPE_4__*) #1

declare dso_local i64 @le32_to_cpup(i32) #1

declare dso_local i64 @be32_to_cpup(i32) #1

declare dso_local i32 @si_enable_lbpw(%struct.radeon_device*, i32) #1

declare dso_local i32 @si_lbpw_supported(%struct.radeon_device*) #1

declare dso_local i32 @si_rlc_start(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
