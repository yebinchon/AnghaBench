; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_cp_gfx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_cp_gfx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_section_def = type { i64, %struct.cs_extent_def* }
%struct.cs_extent_def = type { i32*, i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.amdgpu_ring*, %struct.TYPE_3__ }
%struct.amdgpu_ring = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@GC = common dso_local global i32 0, align 4
@mmCP_MAX_CONTEXT = common dso_local global i32 0, align 4
@mmCP_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"amdgpu: cp failed to lock ring (%d).\0A\00", align 1
@PACKET3_PREAMBLE_CNTL = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_BEGIN_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CONTEXT_CONTROL = common dso_local global i32 0, align 4
@gfx10_cs_data = common dso_local global %struct.cs_section_def* null, align 8
@SECT_CONTEXT = common dso_local global i64 0, align 8
@PACKET3_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONTEXT_REG_START = common dso_local global i32 0, align 4
@mmPA_SC_TILE_STEERING_OVERRIDE = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_END_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_SET_BASE = common dso_local global i32 0, align 4
@CE_PARTITION_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v10_0_cp_gfx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_cp_gfx_start(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca %struct.cs_section_def*, align 8
  %6 = alloca %struct.cs_extent_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.cs_section_def* null, %struct.cs_section_def** %5, align 8
  store %struct.cs_extent_def* null, %struct.cs_extent_def** %6, align 8
  %10 = load i32, i32* @GC, align 4
  %11 = load i32, i32* @mmCP_MAX_CONTEXT, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = call i32 @WREG32_SOC15(i32 %10, i32 0, i32 %11, i32 %17)
  %19 = load i32, i32* @GC, align 4
  %20 = load i32, i32* @mmCP_DEVICE_ID, align 4
  %21 = call i32 @WREG32_SOC15(i32 %19, i32 0, i32 %20, i32 1)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = call i32 @gfx_v10_0_cp_gfx_enable(%struct.amdgpu_device* %22, i32 1)
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %26, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %27, i64 0
  store %struct.amdgpu_ring* %28, %struct.amdgpu_ring** %4, align 8
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = call i32 @gfx_v10_0_get_csb_size(%struct.amdgpu_device* %30)
  %32 = add nsw i32 %31, 4
  %33 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %189

40:                                               ; preds = %1
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %42 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %43 = call i32 @PACKET3(i32 %42, i32 0)
  %44 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %41, i32 %43)
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %46 = load i32, i32* @PACKET3_PREAMBLE_BEGIN_CLEAR_STATE, align 4
  %47 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %45, i32 %46)
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %49 = load i32, i32* @PACKET3_CONTEXT_CONTROL, align 4
  %50 = call i32 @PACKET3(i32 %49, i32 1)
  %51 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %48, i32 %50)
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %53 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %52, i32 -2147483648)
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %55 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %54, i32 -2147483648)
  %56 = load %struct.cs_section_def*, %struct.cs_section_def** @gfx10_cs_data, align 8
  store %struct.cs_section_def* %56, %struct.cs_section_def** %5, align 8
  br label %57

57:                                               ; preds = %117, %40
  %58 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %59 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %58, i32 0, i32 1
  %60 = load %struct.cs_extent_def*, %struct.cs_extent_def** %59, align 8
  %61 = icmp ne %struct.cs_extent_def* %60, null
  br i1 %61, label %62, label %120

62:                                               ; preds = %57
  %63 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %64 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %63, i32 0, i32 1
  %65 = load %struct.cs_extent_def*, %struct.cs_extent_def** %64, align 8
  store %struct.cs_extent_def* %65, %struct.cs_extent_def** %6, align 8
  br label %66

66:                                               ; preds = %113, %62
  %67 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %68 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %116

71:                                               ; preds = %66
  %72 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %73 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SECT_CONTEXT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %71
  %78 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %79 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %80 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %81 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @PACKET3(i32 %79, i32 %82)
  %84 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %78, i32 %83)
  %85 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %86 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %87 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %90 = sub nsw i32 %88, %89
  %91 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %85, i32 %90)
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %108, %77
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %95 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %92
  %99 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %100 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %101 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %99, i32 %106)
  br label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %92

111:                                              ; preds = %92
  br label %112

112:                                              ; preds = %111, %71
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %115 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %114, i32 1
  store %struct.cs_extent_def* %115, %struct.cs_extent_def** %6, align 8
  br label %66

116:                                              ; preds = %66
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %119 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %118, i32 1
  store %struct.cs_section_def* %119, %struct.cs_section_def** %5, align 8
  br label %57

120:                                              ; preds = %57
  %121 = load i32, i32* @GC, align 4
  %122 = load i32, i32* @mmPA_SC_TILE_STEERING_OVERRIDE, align 4
  %123 = call i32 @SOC15_REG_OFFSET(i32 %121, i32 0, i32 %122)
  %124 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %9, align 4
  %126 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %127 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %128 = call i32 @PACKET3(i32 %127, i32 1)
  %129 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %126, i32 %128)
  %130 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %130, i32 %131)
  %133 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %135 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %133, i32 %138)
  %140 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %141 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %142 = call i32 @PACKET3(i32 %141, i32 0)
  %143 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %140, i32 %142)
  %144 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %145 = load i32, i32* @PACKET3_PREAMBLE_END_CLEAR_STATE, align 4
  %146 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %144, i32 %145)
  %147 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %148 = load i32, i32* @PACKET3_CLEAR_STATE, align 4
  %149 = call i32 @PACKET3(i32 %148, i32 0)
  %150 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %147, i32 %149)
  %151 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %152 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %151, i32 0)
  %153 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %154 = load i32, i32* @PACKET3_SET_BASE, align 4
  %155 = call i32 @PACKET3(i32 %154, i32 2)
  %156 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %153, i32 %155)
  %157 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %158 = load i32, i32* @CE_PARTITION_BASE, align 4
  %159 = call i32 @PACKET3_BASE_INDEX(i32 %158)
  %160 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %157, i32 %159)
  %161 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %162 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %161, i32 32768)
  %163 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %164 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %163, i32 32768)
  %165 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %166 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %165)
  %167 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %168 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %169, align 8
  %171 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %170, i64 1
  store %struct.amdgpu_ring* %171, %struct.amdgpu_ring** %4, align 8
  %172 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %173 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %172, i32 2)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %120
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %2, align 4
  br label %189

180:                                              ; preds = %120
  %181 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %182 = load i32, i32* @PACKET3_CLEAR_STATE, align 4
  %183 = call i32 @PACKET3(i32 %182, i32 0)
  %184 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %181, i32 %183)
  %185 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %186 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %185, i32 0)
  %187 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %188 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %187)
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %180, %176, %36
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v10_0_cp_gfx_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @gfx_v10_0_get_csb_size(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @PACKET3_BASE_INDEX(i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
