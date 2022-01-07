; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_cp_gfx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_cp_gfx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__, %struct.amdgpu_ring* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.cs_section_def* }
%struct.cs_section_def = type { i64, %struct.cs_extent_def* }
%struct.cs_extent_def = type { i32*, i32, i32 }
%struct.amdgpu_ring = type { i32 }

@mmCP_MAX_CONTEXT = common dso_local global i32 0, align 4
@mmCP_ENDIAN_SWAP = common dso_local global i32 0, align 4
@mmCP_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"amdgpu: cp failed to lock ring (%d).\0A\00", align 1
@PACKET3_SET_BASE = common dso_local global i32 0, align 4
@CE_PARTITION_BASE = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_CNTL = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_BEGIN_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CONTEXT_CONTROL = common dso_local global i32 0, align 4
@SECT_CONTEXT = common dso_local global i64 0, align 8
@PACKET3_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONTEXT_REG_START = common dso_local global i32 0, align 4
@mmPA_SC_RASTER_CONFIG = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_END_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CLEAR_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v7_0_cp_gfx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v7_0_cp_gfx_start(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca %struct.cs_section_def*, align 8
  %6 = alloca %struct.cs_extent_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i64 0
  store %struct.amdgpu_ring* %13, %struct.amdgpu_ring** %4, align 8
  store %struct.cs_section_def* null, %struct.cs_section_def** %5, align 8
  store %struct.cs_extent_def* null, %struct.cs_extent_def** %6, align 8
  %14 = load i32, i32* @mmCP_MAX_CONTEXT, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = call i32 @WREG32(i32 %14, i32 %20)
  %22 = load i32, i32* @mmCP_ENDIAN_SWAP, align 4
  %23 = call i32 @WREG32(i32 %22, i32 0)
  %24 = load i32, i32* @mmCP_DEVICE_ID, align 4
  %25 = call i32 @WREG32(i32 %24, i32 1)
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = call i32 @gfx_v7_0_cp_gfx_enable(%struct.amdgpu_device* %26, i32 1)
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = call i64 @gfx_v7_0_get_csb_size(%struct.amdgpu_device* %29)
  %31 = add nsw i64 %30, 8
  %32 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %28, i64 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %194

39:                                               ; preds = %1
  %40 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %41 = load i32, i32* @PACKET3_SET_BASE, align 4
  %42 = call i32 @PACKET3(i32 %41, i32 2)
  %43 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %40, i32 %42)
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %45 = load i32, i32* @CE_PARTITION_BASE, align 4
  %46 = call i32 @PACKET3_BASE_INDEX(i32 %45)
  %47 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %44, i32 %46)
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %49 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %48, i32 32768)
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %51 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %50, i32 32768)
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %53 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %54 = call i32 @PACKET3(i32 %53, i32 0)
  %55 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %52, i32 %54)
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %57 = load i32, i32* @PACKET3_PREAMBLE_BEGIN_CLEAR_STATE, align 4
  %58 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %56, i32 %57)
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %60 = load i32, i32* @PACKET3_CONTEXT_CONTROL, align 4
  %61 = call i32 @PACKET3(i32 %60, i32 1)
  %62 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %59, i32 %61)
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %64 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %63, i32 -2147483648)
  %65 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %66 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %65, i32 -2147483648)
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.cs_section_def*, %struct.cs_section_def** %70, align 8
  store %struct.cs_section_def* %71, %struct.cs_section_def** %5, align 8
  br label %72

72:                                               ; preds = %132, %39
  %73 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %74 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %73, i32 0, i32 1
  %75 = load %struct.cs_extent_def*, %struct.cs_extent_def** %74, align 8
  %76 = icmp ne %struct.cs_extent_def* %75, null
  br i1 %76, label %77, label %135

77:                                               ; preds = %72
  %78 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %79 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %78, i32 0, i32 1
  %80 = load %struct.cs_extent_def*, %struct.cs_extent_def** %79, align 8
  store %struct.cs_extent_def* %80, %struct.cs_extent_def** %6, align 8
  br label %81

81:                                               ; preds = %128, %77
  %82 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %83 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %131

86:                                               ; preds = %81
  %87 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %88 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SECT_CONTEXT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %127

92:                                               ; preds = %86
  %93 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %94 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %95 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %96 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @PACKET3(i32 %94, i32 %97)
  %99 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %93, i32 %98)
  %100 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %101 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %102 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %105 = sub nsw i32 %103, %104
  %106 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %100, i32 %105)
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %123, %92
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %110 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %107
  %114 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %115 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %116 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %114, i32 %121)
  br label %123

123:                                              ; preds = %113
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %107

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126, %86
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %130 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %129, i32 1
  store %struct.cs_extent_def* %130, %struct.cs_extent_def** %6, align 8
  br label %81

131:                                              ; preds = %81
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %134 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %133, i32 1
  store %struct.cs_section_def* %134, %struct.cs_section_def** %5, align 8
  br label %72

135:                                              ; preds = %72
  %136 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %137 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %138 = call i32 @PACKET3(i32 %137, i32 2)
  %139 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %136, i32 %138)
  %140 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %141 = load i32, i32* @mmPA_SC_RASTER_CONFIG, align 4
  %142 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %143 = sub nsw i32 %141, %142
  %144 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %140, i32 %143)
  %145 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %146 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %147 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %150, i64 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %145, i32 %155)
  %157 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %159 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %162, i64 0
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %157, i32 %167)
  %169 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %170 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %171 = call i32 @PACKET3(i32 %170, i32 0)
  %172 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %169, i32 %171)
  %173 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %174 = load i32, i32* @PACKET3_PREAMBLE_END_CLEAR_STATE, align 4
  %175 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %173, i32 %174)
  %176 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %177 = load i32, i32* @PACKET3_CLEAR_STATE, align 4
  %178 = call i32 @PACKET3(i32 %177, i32 0)
  %179 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %176, i32 %178)
  %180 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %181 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %180, i32 0)
  %182 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %183 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %184 = call i32 @PACKET3(i32 %183, i32 2)
  %185 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %182, i32 %184)
  %186 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %187 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %186, i32 790)
  %188 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %189 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %188, i32 14)
  %190 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %191 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %190, i32 16)
  %192 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %193 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %192)
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %135, %35
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @gfx_v7_0_cp_gfx_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i64) #1

declare dso_local i64 @gfx_v7_0_get_csb_size(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_BASE_INDEX(i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
