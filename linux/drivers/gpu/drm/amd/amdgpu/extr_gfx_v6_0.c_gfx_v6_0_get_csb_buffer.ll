; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_get_csb_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_get_csb_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.cs_section_def* }
%struct.cs_section_def = type { i64, %struct.cs_extent_def* }
%struct.cs_extent_def = type { i32*, i32, i32 }

@PACKET3_PREAMBLE_CNTL = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_BEGIN_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CONTEXT_CONTROL = common dso_local global i32 0, align 4
@SECT_CONTEXT = common dso_local global i64 0, align 8
@PACKET3_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@mmPA_SC_RASTER_CONFIG = common dso_local global i32 0, align 4
@PACKET3_SET_CONTEXT_REG_START = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_END_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CLEAR_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i64*)* @gfx_v6_0_get_csb_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v6_0_get_csb_buffer(%struct.amdgpu_device* %0, i64* %1) #0 {
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
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.cs_section_def*, %struct.cs_section_def** %12, align 8
  %14 = icmp eq %struct.cs_section_def* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %184

16:                                               ; preds = %2
  %17 = load i64*, i64** %4, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %184

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
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.cs_section_def*, %struct.cs_section_def** %54, align 8
  store %struct.cs_section_def* %55, %struct.cs_section_def** %7, align 8
  br label %56

56:                                               ; preds = %125, %20
  %57 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %58 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %57, i32 0, i32 1
  %59 = load %struct.cs_extent_def*, %struct.cs_extent_def** %58, align 8
  %60 = icmp ne %struct.cs_extent_def* %59, null
  br i1 %60, label %61, label %128

61:                                               ; preds = %56
  %62 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %63 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %62, i32 0, i32 1
  %64 = load %struct.cs_extent_def*, %struct.cs_extent_def** %63, align 8
  store %struct.cs_extent_def* %64, %struct.cs_extent_def** %8, align 8
  br label %65

65:                                               ; preds = %121, %61
  %66 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %67 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %124

70:                                               ; preds = %65
  %71 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %72 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SECT_CONTEXT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %119

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
  %90 = sub nsw i32 %89, 40960
  %91 = call i64 @cpu_to_le32(i32 %90)
  %92 = load i64*, i64** %4, align 8
  %93 = load i64, i64* %5, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %5, align 8
  %95 = getelementptr inbounds i64, i64* %92, i64 %93
  store volatile i64 %91, i64* %95, align 8
  store i64 0, i64* %6, align 8
  br label %96

96:                                               ; preds = %115, %76
  %97 = load i64, i64* %6, align 8
  %98 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %99 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %97, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %96
  %104 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %105 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @cpu_to_le32(i32 %109)
  %111 = load i64*, i64** %4, align 8
  %112 = load i64, i64* %5, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %5, align 8
  %114 = getelementptr inbounds i64, i64* %111, i64 %112
  store volatile i64 %110, i64* %114, align 8
  br label %115

115:                                              ; preds = %103
  %116 = load i64, i64* %6, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %6, align 8
  br label %96

118:                                              ; preds = %96
  br label %120

119:                                              ; preds = %70
  br label %184

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %123 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %122, i32 1
  store %struct.cs_extent_def* %123, %struct.cs_extent_def** %8, align 8
  br label %65

124:                                              ; preds = %65
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %127 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %126, i32 1
  store %struct.cs_section_def* %127, %struct.cs_section_def** %7, align 8
  br label %56

128:                                              ; preds = %56
  %129 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %130 = call i32 @PACKET3(i32 %129, i32 1)
  %131 = call i64 @cpu_to_le32(i32 %130)
  %132 = load i64*, i64** %4, align 8
  %133 = load i64, i64* %5, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %5, align 8
  %135 = getelementptr inbounds i64, i64* %132, i64 %133
  store volatile i64 %131, i64* %135, align 8
  %136 = load i32, i32* @mmPA_SC_RASTER_CONFIG, align 4
  %137 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %138 = sub nsw i32 %136, %137
  %139 = call i64 @cpu_to_le32(i32 %138)
  %140 = load i64*, i64** %4, align 8
  %141 = load i64, i64* %5, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %5, align 8
  %143 = getelementptr inbounds i64, i64* %140, i64 %141
  store volatile i64 %139, i64* %143, align 8
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %148, i64 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
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

184:                                              ; preds = %128, %119, %19, %15
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
