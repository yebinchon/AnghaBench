; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_cp_gfx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_cp_gfx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_section_def = type { i64, %struct.cs_extent_def* }
%struct.cs_extent_def = type { i32*, i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.amdgpu_ring* }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_ring = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmCP_MAX_CONTEXT = common dso_local global i32 0, align 4
@mmCP_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"amdgpu: cp failed to lock ring (%d).\0A\00", align 1
@PACKET3_PREAMBLE_CNTL = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_BEGIN_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CONTEXT_CONTROL = common dso_local global i32 0, align 4
@gfx9_cs_data = common dso_local global %struct.cs_section_def* null, align 8
@SECT_CONTEXT = common dso_local global i64 0, align 8
@PACKET3_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONTEXT_REG_START = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_END_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_SET_BASE = common dso_local global i32 0, align 4
@CE_PARTITION_BASE = common dso_local global i32 0, align 4
@PACKET3_SET_UCONFIG_REG = common dso_local global i32 0, align 4
@PACKET3_SET_UCONFIG_REG_INDEX_TYPE = common dso_local global i32 0, align 4
@mmVGT_INDEX_TYPE = common dso_local global i32 0, align 4
@PACKET3_SET_UCONFIG_REG_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v9_0_cp_gfx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_cp_gfx_start(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca %struct.cs_section_def*, align 8
  %6 = alloca %struct.cs_extent_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i64 0
  store %struct.amdgpu_ring* %14, %struct.amdgpu_ring** %4, align 8
  store %struct.cs_section_def* null, %struct.cs_section_def** %5, align 8
  store %struct.cs_extent_def* null, %struct.cs_extent_def** %6, align 8
  %15 = load i32, i32* @GC, align 4
  %16 = load i32, i32* @mmCP_MAX_CONTEXT, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @WREG32_SOC15(i32 %15, i32 0, i32 %16, i32 %22)
  %24 = load i32, i32* @GC, align 4
  %25 = load i32, i32* @mmCP_DEVICE_ID, align 4
  %26 = call i32 @WREG32_SOC15(i32 %24, i32 0, i32 %25, i32 1)
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = call i32 @gfx_v9_0_cp_gfx_enable(%struct.amdgpu_device* %27, i32 1)
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = call i64 @gfx_v9_0_get_csb_size(%struct.amdgpu_device* %30)
  %32 = add nsw i64 %31, 4
  %33 = add nsw i64 %32, 3
  %34 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %29, i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %165

41:                                               ; preds = %1
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %43 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %44 = call i32 @PACKET3(i32 %43, i32 0)
  %45 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %42, i32 %44)
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %47 = load i32, i32* @PACKET3_PREAMBLE_BEGIN_CLEAR_STATE, align 4
  %48 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %46, i32 %47)
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %50 = load i32, i32* @PACKET3_CONTEXT_CONTROL, align 4
  %51 = call i32 @PACKET3(i32 %50, i32 1)
  %52 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %49, i32 %51)
  %53 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %53, i32 -2147483648)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %56 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %55, i32 -2147483648)
  %57 = load %struct.cs_section_def*, %struct.cs_section_def** @gfx9_cs_data, align 8
  store %struct.cs_section_def* %57, %struct.cs_section_def** %5, align 8
  br label %58

58:                                               ; preds = %118, %41
  %59 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %60 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %59, i32 0, i32 1
  %61 = load %struct.cs_extent_def*, %struct.cs_extent_def** %60, align 8
  %62 = icmp ne %struct.cs_extent_def* %61, null
  br i1 %62, label %63, label %121

63:                                               ; preds = %58
  %64 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %65 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %64, i32 0, i32 1
  %66 = load %struct.cs_extent_def*, %struct.cs_extent_def** %65, align 8
  store %struct.cs_extent_def* %66, %struct.cs_extent_def** %6, align 8
  br label %67

67:                                               ; preds = %114, %63
  %68 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %69 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %117

72:                                               ; preds = %67
  %73 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %74 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SECT_CONTEXT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %113

78:                                               ; preds = %72
  %79 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %80 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %81 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %82 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @PACKET3(i32 %80, i32 %83)
  %85 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %79, i32 %84)
  %86 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %87 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %88 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %91 = sub nsw i32 %89, %90
  %92 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %86, i32 %91)
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %109, %78
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %96 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %101 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %102 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %100, i32 %107)
  br label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %93

112:                                              ; preds = %93
  br label %113

113:                                              ; preds = %112, %72
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %116 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %115, i32 1
  store %struct.cs_extent_def* %116, %struct.cs_extent_def** %6, align 8
  br label %67

117:                                              ; preds = %67
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %120 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %119, i32 1
  store %struct.cs_section_def* %120, %struct.cs_section_def** %5, align 8
  br label %58

121:                                              ; preds = %58
  %122 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %123 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %124 = call i32 @PACKET3(i32 %123, i32 0)
  %125 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %122, i32 %124)
  %126 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %127 = load i32, i32* @PACKET3_PREAMBLE_END_CLEAR_STATE, align 4
  %128 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %126, i32 %127)
  %129 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %130 = load i32, i32* @PACKET3_CLEAR_STATE, align 4
  %131 = call i32 @PACKET3(i32 %130, i32 0)
  %132 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %129, i32 %131)
  %133 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %134 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %133, i32 0)
  %135 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %136 = load i32, i32* @PACKET3_SET_BASE, align 4
  %137 = call i32 @PACKET3(i32 %136, i32 2)
  %138 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %135, i32 %137)
  %139 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %140 = load i32, i32* @CE_PARTITION_BASE, align 4
  %141 = call i32 @PACKET3_BASE_INDEX(i32 %140)
  %142 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %139, i32 %141)
  %143 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %144 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %143, i32 32768)
  %145 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %146 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %145, i32 32768)
  %147 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %148 = load i32, i32* @PACKET3_SET_UCONFIG_REG, align 4
  %149 = call i32 @PACKET3(i32 %148, i32 1)
  %150 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %147, i32 %149)
  %151 = load i32, i32* @PACKET3_SET_UCONFIG_REG_INDEX_TYPE, align 4
  %152 = load i32, i32* @GC, align 4
  %153 = load i32, i32* @mmVGT_INDEX_TYPE, align 4
  %154 = call i32 @SOC15_REG_OFFSET(i32 %152, i32 0, i32 %153)
  %155 = load i32, i32* @PACKET3_SET_UCONFIG_REG_START, align 4
  %156 = sub nsw i32 %154, %155
  %157 = or i32 %151, %156
  store i32 %157, i32* %9, align 4
  %158 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %158, i32 %159)
  %161 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %162 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %161, i32 0)
  %163 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %164 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %163)
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %121, %37
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v9_0_cp_gfx_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i64) #1

declare dso_local i64 @gfx_v9_0_get_csb_size(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_BASE_INDEX(i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
