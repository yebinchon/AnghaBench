; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_get_csb_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_get_csb_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.cs_section_def* }
%struct.cs_section_def = type { i64, %struct.cs_extent_def* }
%struct.cs_extent_def = type { i32*, i32, i32 }

@PACKET3_PREAMBLE_CNTL = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_BEGIN_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CONTEXT_CONTROL = common dso_local global i32 0, align 4
@SECT_CONTEXT = common dso_local global i64 0, align 8
@PACKET3_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONTEXT_REG_START = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmPA_SC_TILE_STEERING_OVERRIDE = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_END_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CLEAR_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i64*)* @gfx_v10_0_get_csb_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_get_csb_buffer(%struct.amdgpu_device* %0, i64* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cs_section_def*, align 8
  %8 = alloca %struct.cs_extent_def*, align 8
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %5, align 8
  store %struct.cs_section_def* null, %struct.cs_section_def** %7, align 8
  store %struct.cs_extent_def* null, %struct.cs_extent_def** %8, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.cs_section_def*, %struct.cs_section_def** %13, align 8
  %15 = icmp eq %struct.cs_section_def* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %184

17:                                               ; preds = %2
  %18 = load i64*, i64** %4, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %184

21:                                               ; preds = %17
  %22 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %23 = call i32 @PACKET3(i32 %22, i32 0)
  %24 = call i64 @cpu_to_le32(i32 %23)
  %25 = load i64*, i64** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %5, align 8
  %28 = getelementptr inbounds i64, i64* %25, i64 %26
  store volatile i64 %24, i64* %28, align 8
  %29 = load i32, i32* @PACKET3_PREAMBLE_BEGIN_CLEAR_STATE, align 4
  %30 = call i64 @cpu_to_le32(i32 %29)
  %31 = load i64*, i64** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  %34 = getelementptr inbounds i64, i64* %31, i64 %32
  store volatile i64 %30, i64* %34, align 8
  %35 = load i32, i32* @PACKET3_CONTEXT_CONTROL, align 4
  %36 = call i32 @PACKET3(i32 %35, i32 1)
  %37 = call i64 @cpu_to_le32(i32 %36)
  %38 = load i64*, i64** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %5, align 8
  %41 = getelementptr inbounds i64, i64* %38, i64 %39
  store volatile i64 %37, i64* %41, align 8
  %42 = call i64 @cpu_to_le32(i32 -2147483648)
  %43 = load i64*, i64** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  %46 = getelementptr inbounds i64, i64* %43, i64 %44
  store volatile i64 %42, i64* %46, align 8
  %47 = call i64 @cpu_to_le32(i32 -2147483648)
  %48 = load i64*, i64** %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %5, align 8
  %51 = getelementptr inbounds i64, i64* %48, i64 %49
  store volatile i64 %47, i64* %51, align 8
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.cs_section_def*, %struct.cs_section_def** %55, align 8
  store %struct.cs_section_def* %56, %struct.cs_section_def** %7, align 8
  br label %57

57:                                               ; preds = %127, %21
  %58 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %59 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %58, i32 0, i32 1
  %60 = load %struct.cs_extent_def*, %struct.cs_extent_def** %59, align 8
  %61 = icmp ne %struct.cs_extent_def* %60, null
  br i1 %61, label %62, label %130

62:                                               ; preds = %57
  %63 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %64 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %63, i32 0, i32 1
  %65 = load %struct.cs_extent_def*, %struct.cs_extent_def** %64, align 8
  store %struct.cs_extent_def* %65, %struct.cs_extent_def** %8, align 8
  br label %66

66:                                               ; preds = %123, %62
  %67 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %68 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %126

71:                                               ; preds = %66
  %72 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %73 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SECT_CONTEXT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %121

77:                                               ; preds = %71
  %78 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %79 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %80 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @PACKET3(i32 %78, i32 %81)
  %83 = call i64 @cpu_to_le32(i32 %82)
  %84 = load i64*, i64** %4, align 8
  %85 = load i64, i64* %5, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %5, align 8
  %87 = getelementptr inbounds i64, i64* %84, i64 %85
  store volatile i64 %83, i64* %87, align 8
  %88 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %89 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %92 = sub nsw i32 %90, %91
  %93 = call i64 @cpu_to_le32(i32 %92)
  %94 = load i64*, i64** %4, align 8
  %95 = load i64, i64* %5, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %5, align 8
  %97 = getelementptr inbounds i64, i64* %94, i64 %95
  store volatile i64 %93, i64* %97, align 8
  store i64 0, i64* %6, align 8
  br label %98

98:                                               ; preds = %117, %77
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %101 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = icmp ult i64 %99, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %98
  %106 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %107 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @cpu_to_le32(i32 %111)
  %113 = load i64*, i64** %4, align 8
  %114 = load i64, i64* %5, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %5, align 8
  %116 = getelementptr inbounds i64, i64* %113, i64 %114
  store volatile i64 %112, i64* %116, align 8
  br label %117

117:                                              ; preds = %105
  %118 = load i64, i64* %6, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %6, align 8
  br label %98

120:                                              ; preds = %98
  br label %122

121:                                              ; preds = %71
  br label %184

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %125 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %124, i32 1
  store %struct.cs_extent_def* %125, %struct.cs_extent_def** %8, align 8
  br label %66

126:                                              ; preds = %66
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %129 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %128, i32 1
  store %struct.cs_section_def* %129, %struct.cs_section_def** %7, align 8
  br label %57

130:                                              ; preds = %57
  %131 = load i32, i32* @GC, align 4
  %132 = load i32, i32* @mmPA_SC_TILE_STEERING_OVERRIDE, align 4
  %133 = call i32 @SOC15_REG_OFFSET(i32 %131, i32 0, i32 %132)
  %134 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %137 = call i32 @PACKET3(i32 %136, i32 1)
  %138 = call i64 @cpu_to_le32(i32 %137)
  %139 = load i64*, i64** %4, align 8
  %140 = load i64, i64* %5, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %5, align 8
  %142 = getelementptr inbounds i64, i64* %139, i64 %140
  store volatile i64 %138, i64* %142, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i64 @cpu_to_le32(i32 %143)
  %145 = load i64*, i64** %4, align 8
  %146 = load i64, i64* %5, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %5, align 8
  %148 = getelementptr inbounds i64, i64* %145, i64 %146
  store volatile i64 %144, i64* %148, align 8
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %150 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @cpu_to_le32(i32 %153)
  %155 = load i64*, i64** %4, align 8
  %156 = load i64, i64* %5, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %5, align 8
  %158 = getelementptr inbounds i64, i64* %155, i64 %156
  store volatile i64 %154, i64* %158, align 8
  %159 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %160 = call i32 @PACKET3(i32 %159, i32 0)
  %161 = call i64 @cpu_to_le32(i32 %160)
  %162 = load i64*, i64** %4, align 8
  %163 = load i64, i64* %5, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %5, align 8
  %165 = getelementptr inbounds i64, i64* %162, i64 %163
  store volatile i64 %161, i64* %165, align 8
  %166 = load i32, i32* @PACKET3_PREAMBLE_END_CLEAR_STATE, align 4
  %167 = call i64 @cpu_to_le32(i32 %166)
  %168 = load i64*, i64** %4, align 8
  %169 = load i64, i64* %5, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %5, align 8
  %171 = getelementptr inbounds i64, i64* %168, i64 %169
  store volatile i64 %167, i64* %171, align 8
  %172 = load i32, i32* @PACKET3_CLEAR_STATE, align 4
  %173 = call i32 @PACKET3(i32 %172, i32 0)
  %174 = call i64 @cpu_to_le32(i32 %173)
  %175 = load i64*, i64** %4, align 8
  %176 = load i64, i64* %5, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %5, align 8
  %178 = getelementptr inbounds i64, i64* %175, i64 %176
  store volatile i64 %174, i64* %178, align 8
  %179 = call i64 @cpu_to_le32(i32 0)
  %180 = load i64*, i64** %4, align 8
  %181 = load i64, i64* %5, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %5, align 8
  %183 = getelementptr inbounds i64, i64* %180, i64 %181
  store volatile i64 %179, i64* %183, align 8
  br label %184

184:                                              ; preds = %130, %121, %20, %16
  ret void
}

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
