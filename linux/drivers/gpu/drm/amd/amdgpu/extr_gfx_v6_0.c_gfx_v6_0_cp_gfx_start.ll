; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_cp_gfx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_cp_gfx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.amdgpu_ring* }
%struct.TYPE_5__ = type { %struct.cs_section_def* }
%struct.cs_section_def = type { i64, %struct.cs_extent_def* }
%struct.cs_extent_def = type { i32*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.amdgpu_ring = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"amdgpu: cp failed to lock ring (%d).\0A\00", align 1
@PACKET3_ME_INITIALIZE = common dso_local global i32 0, align 4
@PACKET3_SET_BASE = common dso_local global i32 0, align 4
@CE_PARTITION_BASE = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_CNTL = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_BEGIN_CLEAR_STATE = common dso_local global i32 0, align 4
@SECT_CONTEXT = common dso_local global i64 0, align 8
@PACKET3_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONTEXT_REG_START = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_END_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CLEAR_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v6_0_cp_gfx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v6_0_cp_gfx_start(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.cs_section_def*, align 8
  %5 = alloca %struct.cs_extent_def*, align 8
  %6 = alloca %struct.amdgpu_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.cs_section_def* null, %struct.cs_section_def** %4, align 8
  store %struct.cs_extent_def* null, %struct.cs_extent_def** %5, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i64 0
  store %struct.amdgpu_ring* %13, %struct.amdgpu_ring** %6, align 8
  %14 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %15 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %14, i32 11)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %175

22:                                               ; preds = %1
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %24 = load i32, i32* @PACKET3_ME_INITIALIZE, align 4
  %25 = call i32 @PACKET3(i32 %24, i32 5)
  %26 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %23, i32 %25)
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %28 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %27, i32 1)
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %30 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %29, i32 0)
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %31, i32 %37)
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %40 = call i32 @PACKET3_ME_INITIALIZE_DEVICE_ID(i32 1)
  %41 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %39, i32 %40)
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %43 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %42, i32 0)
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %45 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %44, i32 0)
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %47 = load i32, i32* @PACKET3_SET_BASE, align 4
  %48 = call i32 @PACKET3(i32 %47, i32 2)
  %49 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %46, i32 %48)
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %51 = load i32, i32* @CE_PARTITION_BASE, align 4
  %52 = call i32 @PACKET3_BASE_INDEX(i32 %51)
  %53 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %50, i32 %52)
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %55 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %54, i32 49152)
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %57 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %56, i32 57344)
  %58 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %59 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %58)
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = call i32 @gfx_v6_0_cp_gfx_enable(%struct.amdgpu_device* %60, i32 1)
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = call i32 @gfx_v6_0_get_csb_size(%struct.amdgpu_device* %63)
  %65 = add nsw i32 %64, 10
  %66 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %62, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %22
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %175

73:                                               ; preds = %22
  %74 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %75 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %76 = call i32 @PACKET3(i32 %75, i32 0)
  %77 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %74, i32 %76)
  %78 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %79 = load i32, i32* @PACKET3_PREAMBLE_BEGIN_CLEAR_STATE, align 4
  %80 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %78, i32 %79)
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.cs_section_def*, %struct.cs_section_def** %84, align 8
  store %struct.cs_section_def* %85, %struct.cs_section_def** %4, align 8
  br label %86

86:                                               ; preds = %146, %73
  %87 = load %struct.cs_section_def*, %struct.cs_section_def** %4, align 8
  %88 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %87, i32 0, i32 1
  %89 = load %struct.cs_extent_def*, %struct.cs_extent_def** %88, align 8
  %90 = icmp ne %struct.cs_extent_def* %89, null
  br i1 %90, label %91, label %149

91:                                               ; preds = %86
  %92 = load %struct.cs_section_def*, %struct.cs_section_def** %4, align 8
  %93 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %92, i32 0, i32 1
  %94 = load %struct.cs_extent_def*, %struct.cs_extent_def** %93, align 8
  store %struct.cs_extent_def* %94, %struct.cs_extent_def** %5, align 8
  br label %95

95:                                               ; preds = %142, %91
  %96 = load %struct.cs_extent_def*, %struct.cs_extent_def** %5, align 8
  %97 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %145

100:                                              ; preds = %95
  %101 = load %struct.cs_section_def*, %struct.cs_section_def** %4, align 8
  %102 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SECT_CONTEXT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %141

106:                                              ; preds = %100
  %107 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %108 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %109 = load %struct.cs_extent_def*, %struct.cs_extent_def** %5, align 8
  %110 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @PACKET3(i32 %108, i32 %111)
  %113 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %107, i32 %112)
  %114 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %115 = load %struct.cs_extent_def*, %struct.cs_extent_def** %5, align 8
  %116 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %119 = sub nsw i32 %117, %118
  %120 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %114, i32 %119)
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %137, %106
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.cs_extent_def*, %struct.cs_extent_def** %5, align 8
  %124 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %121
  %128 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %129 = load %struct.cs_extent_def*, %struct.cs_extent_def** %5, align 8
  %130 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %128, i32 %135)
  br label %137

137:                                              ; preds = %127
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %121

140:                                              ; preds = %121
  br label %141

141:                                              ; preds = %140, %100
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.cs_extent_def*, %struct.cs_extent_def** %5, align 8
  %144 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %143, i32 1
  store %struct.cs_extent_def* %144, %struct.cs_extent_def** %5, align 8
  br label %95

145:                                              ; preds = %95
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.cs_section_def*, %struct.cs_section_def** %4, align 8
  %148 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %147, i32 1
  store %struct.cs_section_def* %148, %struct.cs_section_def** %4, align 8
  br label %86

149:                                              ; preds = %86
  %150 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %151 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %152 = call i32 @PACKET3(i32 %151, i32 0)
  %153 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %150, i32 %152)
  %154 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %155 = load i32, i32* @PACKET3_PREAMBLE_END_CLEAR_STATE, align 4
  %156 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %154, i32 %155)
  %157 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %158 = load i32, i32* @PACKET3_CLEAR_STATE, align 4
  %159 = call i32 @PACKET3(i32 %158, i32 0)
  %160 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %157, i32 %159)
  %161 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %162 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %161, i32 0)
  %163 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %164 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %165 = call i32 @PACKET3(i32 %164, i32 2)
  %166 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %163, i32 %165)
  %167 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %168 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %167, i32 790)
  %169 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %170 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %169, i32 14)
  %171 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %172 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %171, i32 16)
  %173 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %174 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %173)
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %149, %69, %18
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_ME_INITIALIZE_DEVICE_ID(i32) #1

declare dso_local i32 @PACKET3_BASE_INDEX(i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i32 @gfx_v6_0_cp_gfx_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v6_0_get_csb_size(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
