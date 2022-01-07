; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_cp_gfx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_cp_gfx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_section_def = type { i64, %struct.cs_extent_def* }
%struct.cs_extent_def = type { i32*, i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.amdgpu_ring* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32 }
%struct.amdgpu_ring = type { i32 }

@mmCP_MAX_CONTEXT = common dso_local global i32 0, align 4
@mmCP_ENDIAN_SWAP = common dso_local global i32 0, align 4
@mmCP_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"amdgpu: cp failed to lock ring (%d).\0A\00", align 1
@PACKET3_PREAMBLE_CNTL = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_BEGIN_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CONTEXT_CONTROL = common dso_local global i32 0, align 4
@vi_cs_data = common dso_local global %struct.cs_section_def* null, align 8
@SECT_CONTEXT = common dso_local global i64 0, align 8
@PACKET3_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONTEXT_REG_START = common dso_local global i32 0, align 4
@mmPA_SC_RASTER_CONFIG = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_END_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_SET_BASE = common dso_local global i32 0, align 4
@CE_PARTITION_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v8_0_cp_gfx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_cp_gfx_start(%struct.amdgpu_device* %0) #0 {
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
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i64 0
  store %struct.amdgpu_ring* %13, %struct.amdgpu_ring** %4, align 8
  store %struct.cs_section_def* null, %struct.cs_section_def** %5, align 8
  store %struct.cs_extent_def* null, %struct.cs_extent_def** %6, align 8
  %14 = load i32, i32* @mmCP_MAX_CONTEXT, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = call i32 @WREG32(i32 %14, i32 %20)
  %22 = load i32, i32* @mmCP_ENDIAN_SWAP, align 4
  %23 = call i32 @WREG32(i32 %22, i32 0)
  %24 = load i32, i32* @mmCP_DEVICE_ID, align 4
  %25 = call i32 @WREG32(i32 %24, i32 1)
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = call i32 @gfx_v8_0_cp_gfx_enable(%struct.amdgpu_device* %26, i32 1)
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = call i64 @gfx_v8_0_get_csb_size(%struct.amdgpu_device* %29)
  %31 = add nsw i64 %30, 4
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
  br label %180

39:                                               ; preds = %1
  %40 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %41 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %42 = call i32 @PACKET3(i32 %41, i32 0)
  %43 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %40, i32 %42)
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %45 = load i32, i32* @PACKET3_PREAMBLE_BEGIN_CLEAR_STATE, align 4
  %46 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %44, i32 %45)
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %48 = load i32, i32* @PACKET3_CONTEXT_CONTROL, align 4
  %49 = call i32 @PACKET3(i32 %48, i32 1)
  %50 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %47, i32 %49)
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %52 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %51, i32 -2147483648)
  %53 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %53, i32 -2147483648)
  %55 = load %struct.cs_section_def*, %struct.cs_section_def** @vi_cs_data, align 8
  store %struct.cs_section_def* %55, %struct.cs_section_def** %5, align 8
  br label %56

56:                                               ; preds = %116, %39
  %57 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %58 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %57, i32 0, i32 1
  %59 = load %struct.cs_extent_def*, %struct.cs_extent_def** %58, align 8
  %60 = icmp ne %struct.cs_extent_def* %59, null
  br i1 %60, label %61, label %119

61:                                               ; preds = %56
  %62 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %63 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %62, i32 0, i32 1
  %64 = load %struct.cs_extent_def*, %struct.cs_extent_def** %63, align 8
  store %struct.cs_extent_def* %64, %struct.cs_extent_def** %6, align 8
  br label %65

65:                                               ; preds = %112, %61
  %66 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %67 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %115

70:                                               ; preds = %65
  %71 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %72 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SECT_CONTEXT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %111

76:                                               ; preds = %70
  %77 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %78 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %79 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %80 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @PACKET3(i32 %78, i32 %81)
  %83 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %77, i32 %82)
  %84 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %85 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %86 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %89 = sub nsw i32 %87, %88
  %90 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %84, i32 %89)
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %107, %76
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %94 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %99 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %100 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %98, i32 %105)
  br label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %91

110:                                              ; preds = %91
  br label %111

111:                                              ; preds = %110, %70
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.cs_extent_def*, %struct.cs_extent_def** %6, align 8
  %114 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %113, i32 1
  store %struct.cs_extent_def* %114, %struct.cs_extent_def** %6, align 8
  br label %65

115:                                              ; preds = %65
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.cs_section_def*, %struct.cs_section_def** %5, align 8
  %118 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %117, i32 1
  store %struct.cs_section_def* %118, %struct.cs_section_def** %5, align 8
  br label %56

119:                                              ; preds = %56
  %120 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %121 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %122 = call i32 @PACKET3(i32 %121, i32 2)
  %123 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %120, i32 %122)
  %124 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %125 = load i32, i32* @mmPA_SC_RASTER_CONFIG, align 4
  %126 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %127 = sub nsw i32 %125, %126
  %128 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %124, i32 %127)
  %129 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %131 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %134, i64 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %129, i32 %139)
  %141 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %142 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %143 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %146, i64 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %141, i32 %151)
  %153 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %154 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %155 = call i32 @PACKET3(i32 %154, i32 0)
  %156 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %153, i32 %155)
  %157 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %158 = load i32, i32* @PACKET3_PREAMBLE_END_CLEAR_STATE, align 4
  %159 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %157, i32 %158)
  %160 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %161 = load i32, i32* @PACKET3_CLEAR_STATE, align 4
  %162 = call i32 @PACKET3(i32 %161, i32 0)
  %163 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %160, i32 %162)
  %164 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %165 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %164, i32 0)
  %166 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %167 = load i32, i32* @PACKET3_SET_BASE, align 4
  %168 = call i32 @PACKET3(i32 %167, i32 2)
  %169 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %166, i32 %168)
  %170 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %171 = load i32, i32* @CE_PARTITION_BASE, align 4
  %172 = call i32 @PACKET3_BASE_INDEX(i32 %171)
  %173 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %170, i32 %172)
  %174 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %175 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %174, i32 32768)
  %176 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %177 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %176, i32 32768)
  %178 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %179 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %178)
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %119, %35
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @gfx_v8_0_cp_gfx_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i64) #1

declare dso_local i64 @gfx_v8_0_get_csb_size(%struct.amdgpu_device*) #1

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
