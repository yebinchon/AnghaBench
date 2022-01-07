; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_get_csb_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_get_csb_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cs_section_def* }
%struct.cs_section_def = type { i64, %struct.cs_extent_def* }
%struct.cs_extent_def = type { i32*, i32, i32 }

@PACKET3_PREAMBLE_CNTL = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_BEGIN_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CONTEXT_CONTROL = common dso_local global i32 0, align 4
@SECT_CONTEXT = common dso_local global i64 0, align 8
@PACKET3_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONTEXT_REG_START = common dso_local global i32 0, align 4
@mmPA_SC_RASTER_CONFIG = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_END_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CLEAR_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i64*)* @gfx_v7_0_get_csb_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_get_csb_buffer(%struct.amdgpu_device* %0, i64* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cs_section_def*, align 8
  %8 = alloca %struct.cs_extent_def*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %5, align 8
  store %struct.cs_section_def* null, %struct.cs_section_def** %7, align 8
  store %struct.cs_extent_def* null, %struct.cs_extent_def** %8, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.cs_section_def*, %struct.cs_section_def** %12, align 8
  %14 = icmp eq %struct.cs_section_def* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %229

16:                                               ; preds = %2
  %17 = load i64*, i64** %4, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %229

20:                                               ; preds = %16
  %21 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %22 = call i32 @PACKET3(i32 %21, i32 0)
  %23 = call i64 @cpu_to_le32(i32 %22)
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  %27 = getelementptr inbounds i64, i64* %24, i64 %25
  store volatile i64 %23, i64* %27, align 8
  %28 = load i32, i32* @PACKET3_PREAMBLE_BEGIN_CLEAR_STATE, align 4
  %29 = call i64 @cpu_to_le32(i32 %28)
  %30 = load i64*, i64** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %5, align 8
  %33 = getelementptr inbounds i64, i64* %30, i64 %31
  store volatile i64 %29, i64* %33, align 8
  %34 = load i32, i32* @PACKET3_CONTEXT_CONTROL, align 4
  %35 = call i32 @PACKET3(i32 %34, i32 1)
  %36 = call i64 @cpu_to_le32(i32 %35)
  %37 = load i64*, i64** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %5, align 8
  %40 = getelementptr inbounds i64, i64* %37, i64 %38
  store volatile i64 %36, i64* %40, align 8
  %41 = call i64 @cpu_to_le32(i32 -2147483648)
  %42 = load i64*, i64** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  %45 = getelementptr inbounds i64, i64* %42, i64 %43
  store volatile i64 %41, i64* %45, align 8
  %46 = call i64 @cpu_to_le32(i32 -2147483648)
  %47 = load i64*, i64** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  %50 = getelementptr inbounds i64, i64* %47, i64 %48
  store volatile i64 %46, i64* %50, align 8
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.cs_section_def*, %struct.cs_section_def** %54, align 8
  store %struct.cs_section_def* %55, %struct.cs_section_def** %7, align 8
  br label %56

56:                                               ; preds = %126, %20
  %57 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %58 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %57, i32 0, i32 1
  %59 = load %struct.cs_extent_def*, %struct.cs_extent_def** %58, align 8
  %60 = icmp ne %struct.cs_extent_def* %59, null
  br i1 %60, label %61, label %129

61:                                               ; preds = %56
  %62 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %63 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %62, i32 0, i32 1
  %64 = load %struct.cs_extent_def*, %struct.cs_extent_def** %63, align 8
  store %struct.cs_extent_def* %64, %struct.cs_extent_def** %8, align 8
  br label %65

65:                                               ; preds = %122, %61
  %66 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %67 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %125

70:                                               ; preds = %65
  %71 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %72 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SECT_CONTEXT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %120

76:                                               ; preds = %70
  %77 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %78 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %79 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @PACKET3(i32 %77, i32 %80)
  %82 = call i64 @cpu_to_le32(i32 %81)
  %83 = load i64*, i64** %4, align 8
  %84 = load i64, i64* %5, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %5, align 8
  %86 = getelementptr inbounds i64, i64* %83, i64 %84
  store volatile i64 %82, i64* %86, align 8
  %87 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %88 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %91 = sub nsw i32 %89, %90
  %92 = call i64 @cpu_to_le32(i32 %91)
  %93 = load i64*, i64** %4, align 8
  %94 = load i64, i64* %5, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %5, align 8
  %96 = getelementptr inbounds i64, i64* %93, i64 %94
  store volatile i64 %92, i64* %96, align 8
  store i64 0, i64* %6, align 8
  br label %97

97:                                               ; preds = %116, %76
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %100 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = icmp ult i64 %98, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %97
  %105 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %106 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @cpu_to_le32(i32 %110)
  %112 = load i64*, i64** %4, align 8
  %113 = load i64, i64* %5, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %5, align 8
  %115 = getelementptr inbounds i64, i64* %112, i64 %113
  store volatile i64 %111, i64* %115, align 8
  br label %116

116:                                              ; preds = %104
  %117 = load i64, i64* %6, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %6, align 8
  br label %97

119:                                              ; preds = %97
  br label %121

120:                                              ; preds = %70
  br label %229

121:                                              ; preds = %119
  br label %122

122:                                              ; preds = %121
  %123 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %124 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %123, i32 1
  store %struct.cs_extent_def* %124, %struct.cs_extent_def** %8, align 8
  br label %65

125:                                              ; preds = %65
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %128 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %127, i32 1
  store %struct.cs_section_def* %128, %struct.cs_section_def** %7, align 8
  br label %56

129:                                              ; preds = %56
  %130 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %131 = call i32 @PACKET3(i32 %130, i32 2)
  %132 = call i64 @cpu_to_le32(i32 %131)
  %133 = load i64*, i64** %4, align 8
  %134 = load i64, i64* %5, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %5, align 8
  %136 = getelementptr inbounds i64, i64* %133, i64 %134
  store volatile i64 %132, i64* %136, align 8
  %137 = load i32, i32* @mmPA_SC_RASTER_CONFIG, align 4
  %138 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %139 = sub nsw i32 %137, %138
  %140 = call i64 @cpu_to_le32(i32 %139)
  %141 = load i64*, i64** %4, align 8
  %142 = load i64, i64* %5, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %5, align 8
  %144 = getelementptr inbounds i64, i64* %141, i64 %142
  store volatile i64 %140, i64* %144, align 8
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %146 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  switch i32 %147, label %192 [
    i32 132, label %148
    i32 129, label %159
    i32 130, label %170
    i32 128, label %170
    i32 131, label %181
  ]

148:                                              ; preds = %129
  %149 = call i64 @cpu_to_le32(i32 369098770)
  %150 = load i64*, i64** %4, align 8
  %151 = load i64, i64* %5, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %5, align 8
  %153 = getelementptr inbounds i64, i64* %150, i64 %151
  store volatile i64 %149, i64* %153, align 8
  %154 = call i64 @cpu_to_le32(i32 0)
  %155 = load i64*, i64** %4, align 8
  %156 = load i64, i64* %5, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %5, align 8
  %158 = getelementptr inbounds i64, i64* %155, i64 %156
  store volatile i64 %154, i64* %158, align 8
  br label %203

159:                                              ; preds = %129
  %160 = call i64 @cpu_to_le32(i32 0)
  %161 = load i64*, i64** %4, align 8
  %162 = load i64, i64* %5, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %5, align 8
  %164 = getelementptr inbounds i64, i64* %161, i64 %162
  store volatile i64 %160, i64* %164, align 8
  %165 = call i64 @cpu_to_le32(i32 0)
  %166 = load i64*, i64** %4, align 8
  %167 = load i64, i64* %5, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %5, align 8
  %169 = getelementptr inbounds i64, i64* %166, i64 %167
  store volatile i64 %165, i64* %169, align 8
  br label %203

170:                                              ; preds = %129, %129
  %171 = call i64 @cpu_to_le32(i32 0)
  %172 = load i64*, i64** %4, align 8
  %173 = load i64, i64* %5, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %5, align 8
  %175 = getelementptr inbounds i64, i64* %172, i64 %173
  store volatile i64 %171, i64* %175, align 8
  %176 = call i64 @cpu_to_le32(i32 0)
  %177 = load i64*, i64** %4, align 8
  %178 = load i64, i64* %5, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %5, align 8
  %180 = getelementptr inbounds i64, i64* %177, i64 %178
  store volatile i64 %176, i64* %180, align 8
  br label %203

181:                                              ; preds = %129
  %182 = call i64 @cpu_to_le32(i32 973084186)
  %183 = load i64*, i64** %4, align 8
  %184 = load i64, i64* %5, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %5, align 8
  %186 = getelementptr inbounds i64, i64* %183, i64 %184
  store volatile i64 %182, i64* %186, align 8
  %187 = call i64 @cpu_to_le32(i32 46)
  %188 = load i64*, i64** %4, align 8
  %189 = load i64, i64* %5, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %5, align 8
  %191 = getelementptr inbounds i64, i64* %188, i64 %189
  store volatile i64 %187, i64* %191, align 8
  br label %203

192:                                              ; preds = %129
  %193 = call i64 @cpu_to_le32(i32 0)
  %194 = load i64*, i64** %4, align 8
  %195 = load i64, i64* %5, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %5, align 8
  %197 = getelementptr inbounds i64, i64* %194, i64 %195
  store volatile i64 %193, i64* %197, align 8
  %198 = call i64 @cpu_to_le32(i32 0)
  %199 = load i64*, i64** %4, align 8
  %200 = load i64, i64* %5, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %5, align 8
  %202 = getelementptr inbounds i64, i64* %199, i64 %200
  store volatile i64 %198, i64* %202, align 8
  br label %203

203:                                              ; preds = %192, %181, %170, %159, %148
  %204 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %205 = call i32 @PACKET3(i32 %204, i32 0)
  %206 = call i64 @cpu_to_le32(i32 %205)
  %207 = load i64*, i64** %4, align 8
  %208 = load i64, i64* %5, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %5, align 8
  %210 = getelementptr inbounds i64, i64* %207, i64 %208
  store volatile i64 %206, i64* %210, align 8
  %211 = load i32, i32* @PACKET3_PREAMBLE_END_CLEAR_STATE, align 4
  %212 = call i64 @cpu_to_le32(i32 %211)
  %213 = load i64*, i64** %4, align 8
  %214 = load i64, i64* %5, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %5, align 8
  %216 = getelementptr inbounds i64, i64* %213, i64 %214
  store volatile i64 %212, i64* %216, align 8
  %217 = load i32, i32* @PACKET3_CLEAR_STATE, align 4
  %218 = call i32 @PACKET3(i32 %217, i32 0)
  %219 = call i64 @cpu_to_le32(i32 %218)
  %220 = load i64*, i64** %4, align 8
  %221 = load i64, i64* %5, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %5, align 8
  %223 = getelementptr inbounds i64, i64* %220, i64 %221
  store volatile i64 %219, i64* %223, align 8
  %224 = call i64 @cpu_to_le32(i32 0)
  %225 = load i64*, i64** %4, align 8
  %226 = load i64, i64* %5, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* %5, align 8
  %228 = getelementptr inbounds i64, i64* %225, i64 %226
  store volatile i64 %224, i64* %228, align 8
  br label %229

229:                                              ; preds = %203, %120, %19, %15
  ret void
}

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
