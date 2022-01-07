; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_rlc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_rlc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.rlc_firmware_header_v1_0 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RLC_CGCG_CGLS_CTRL = common dso_local global i32 0, align 4
@RLC_LB_CNTR_INIT = common dso_local global i32 0, align 4
@RLC_LB_CNTR_MAX = common dso_local global i32 0, align 4
@RLC_LB_INIT_CU_MASK = common dso_local global i32 0, align 4
@RLC_LB_PARAMS = common dso_local global i32 0, align 4
@RLC_LB_CNTL = common dso_local global i32 0, align 4
@RLC_MC_CNTL = common dso_local global i32 0, align 4
@RLC_UCODE_CNTL = common dso_local global i32 0, align 4
@RLC_GPM_UCODE_ADDR = common dso_local global i32 0, align 4
@RLC_GPM_UCODE_DATA = common dso_local global i32 0, align 4
@BONAIRE_RLC_UCODE_SIZE = common dso_local global i64 0, align 8
@KV_RLC_UCODE_SIZE = common dso_local global i64 0, align 8
@KB_RLC_UCODE_SIZE = common dso_local global i64 0, align 8
@ML_RLC_UCODE_SIZE = common dso_local global i64 0, align 8
@RLC_DRIVER_DMA_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cik_rlc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_rlc_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rlc_firmware_header_v1_0*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %160

17:                                               ; preds = %1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @cik_rlc_stop(%struct.radeon_device* %18)
  %20 = load i32, i32* @RLC_CGCG_CGLS_CTRL, align 4
  %21 = call i32 @RREG32(i32 %20)
  %22 = and i32 %21, -4
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* @RLC_CGCG_CGLS_CTRL, align 4
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @WREG32(i32 %24, i32 %26)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = call i32 @si_rlc_reset(%struct.radeon_device* %28)
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = call i32 @cik_init_pg(%struct.radeon_device* %30)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = call i32 @cik_init_cg(%struct.radeon_device* %32)
  %34 = load i32, i32* @RLC_LB_CNTR_INIT, align 4
  %35 = call i32 @WREG32(i32 %34, i32 0)
  %36 = load i32, i32* @RLC_LB_CNTR_MAX, align 4
  %37 = call i32 @WREG32(i32 %36, i32 32768)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = call i32 @cik_select_se_sh(%struct.radeon_device* %38, i32 -1, i32 -1)
  %40 = load i32, i32* @RLC_LB_INIT_CU_MASK, align 4
  %41 = call i32 @WREG32(i32 %40, i32 -1)
  %42 = load i32, i32* @RLC_LB_PARAMS, align 4
  %43 = call i32 @WREG32(i32 %42, i32 6292488)
  %44 = load i32, i32* @RLC_LB_CNTL, align 4
  %45 = call i32 @WREG32(i32 %44, i32 -2147483644)
  %46 = load i32, i32* @RLC_MC_CNTL, align 4
  %47 = call i32 @WREG32(i32 %46, i32 0)
  %48 = load i32, i32* @RLC_UCODE_CNTL, align 4
  %49 = call i32 @WREG32(i32 %48, i32 0)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %108

54:                                               ; preds = %17
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.rlc_firmware_header_v1_0*
  store %struct.rlc_firmware_header_v1_0* %60, %struct.rlc_firmware_header_v1_0** %7, align 8
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %7, align 8
  %67 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32_to_cpu(i32 %69)
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %65, %71
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %8, align 8
  %74 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %7, align 8
  %75 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %74, i32 0, i32 0
  %76 = call i32 @radeon_ucode_print_rlc_hdr(%struct.TYPE_4__* %75)
  %77 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %7, align 8
  %78 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = sdiv i32 %81, 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %5, align 8
  %84 = load i32, i32* @RLC_GPM_UCODE_ADDR, align 4
  %85 = call i32 @WREG32(i32 %84, i32 0)
  store i64 0, i64* %4, align 8
  br label %86

86:                                               ; preds = %97, %54
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i32, i32* @RLC_GPM_UCODE_DATA, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %8, align 8
  %94 = ptrtoint i32* %92 to i32
  %95 = call i32 @le32_to_cpup(i32 %94)
  %96 = call i32 @WREG32(i32 %91, i32 %95)
  br label %97

97:                                               ; preds = %90
  %98 = load i64, i64* %4, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %4, align 8
  br label %86

100:                                              ; preds = %86
  %101 = load i32, i32* @RLC_GPM_UCODE_ADDR, align 4
  %102 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %7, align 8
  %103 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le32_to_cpu(i32 %105)
  %107 = call i32 @WREG32(i32 %101, i32 %106)
  br label %147

108:                                              ; preds = %17
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %113 [
    i32 132, label %112
    i32 131, label %112
    i32 129, label %115
    i32 130, label %117
    i32 128, label %119
  ]

112:                                              ; preds = %108, %108
  br label %113

113:                                              ; preds = %108, %112
  %114 = load i64, i64* @BONAIRE_RLC_UCODE_SIZE, align 8
  store i64 %114, i64* %5, align 8
  br label %121

115:                                              ; preds = %108
  %116 = load i64, i64* @KV_RLC_UCODE_SIZE, align 8
  store i64 %116, i64* %5, align 8
  br label %121

117:                                              ; preds = %108
  %118 = load i64, i64* @KB_RLC_UCODE_SIZE, align 8
  store i64 %118, i64* %5, align 8
  br label %121

119:                                              ; preds = %108
  %120 = load i64, i64* @ML_RLC_UCODE_SIZE, align 8
  store i64 %120, i64* %5, align 8
  br label %121

121:                                              ; preds = %119, %117, %115, %113
  %122 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %123 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i32*
  store i32* %127, i32** %9, align 8
  %128 = load i32, i32* @RLC_GPM_UCODE_ADDR, align 4
  %129 = call i32 @WREG32(i32 %128, i32 0)
  store i64 0, i64* %4, align 8
  br label %130

130:                                              ; preds = %141, %121
  %131 = load i64, i64* %4, align 8
  %132 = load i64, i64* %5, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i32, i32* @RLC_GPM_UCODE_DATA, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %9, align 8
  %138 = ptrtoint i32* %136 to i32
  %139 = call i32 @be32_to_cpup(i32 %138)
  %140 = call i32 @WREG32(i32 %135, i32 %139)
  br label %141

141:                                              ; preds = %134
  %142 = load i64, i64* %4, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %4, align 8
  br label %130

144:                                              ; preds = %130
  %145 = load i32, i32* @RLC_GPM_UCODE_ADDR, align 4
  %146 = call i32 @WREG32(i32 %145, i32 0)
  br label %147

147:                                              ; preds = %144, %100
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = call i32 @cik_enable_lbpw(%struct.radeon_device* %148, i32 0)
  %150 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %151 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 132
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load i32, i32* @RLC_DRIVER_DMA_STATUS, align 4
  %156 = call i32 @WREG32(i32 %155, i32 0)
  br label %157

157:                                              ; preds = %154, %147
  %158 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %159 = call i32 @cik_rlc_start(%struct.radeon_device* %158)
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %157, %14
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @cik_rlc_stop(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @si_rlc_reset(%struct.radeon_device*) #1

declare dso_local i32 @cik_init_pg(%struct.radeon_device*) #1

declare dso_local i32 @cik_init_cg(%struct.radeon_device*) #1

declare dso_local i32 @cik_select_se_sh(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @radeon_ucode_print_rlc_hdr(%struct.TYPE_4__*) #1

declare dso_local i32 @le32_to_cpup(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @cik_enable_lbpw(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_rlc_start(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
