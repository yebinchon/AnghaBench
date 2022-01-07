; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_get_csb_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_get_csb_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cs_section_def* }
%struct.cs_section_def = type { i64, %struct.cs_extent_def* }
%struct.cs_extent_def = type { i32*, i32, i32 }

@PACKET3_PREAMBLE_CNTL = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_BEGIN_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CONTEXT_CONTROL = common dso_local global i32 0, align 4
@SECT_CONTEXT = common dso_local global i64 0, align 8
@PACKET3_SET_CONTEXT_REG = common dso_local global i32 0, align 4
@PA_SC_RASTER_CONFIG = common dso_local global i32 0, align 4
@PACKET3_SET_CONTEXT_REG_START = common dso_local global i32 0, align 4
@PACKET3_PREAMBLE_END_CLEAR_STATE = common dso_local global i32 0, align 4
@PACKET3_CLEAR_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cik_get_csb_buffer(%struct.radeon_device* %0, i64* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cs_section_def*, align 8
  %8 = alloca %struct.cs_extent_def*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %5, align 8
  store %struct.cs_section_def* null, %struct.cs_section_def** %7, align 8
  store %struct.cs_extent_def* null, %struct.cs_extent_def** %8, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.cs_section_def*, %struct.cs_section_def** %11, align 8
  %13 = icmp eq %struct.cs_section_def* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %226

15:                                               ; preds = %2
  %16 = load i64*, i64** %4, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %226

19:                                               ; preds = %15
  %20 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %21 = call i32 @PACKET3(i32 %20, i32 0)
  %22 = call i64 @cpu_to_le32(i32 %21)
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %5, align 8
  %26 = getelementptr inbounds i64, i64* %23, i64 %24
  store volatile i64 %22, i64* %26, align 8
  %27 = load i32, i32* @PACKET3_PREAMBLE_BEGIN_CLEAR_STATE, align 4
  %28 = call i64 @cpu_to_le32(i32 %27)
  %29 = load i64*, i64** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %5, align 8
  %32 = getelementptr inbounds i64, i64* %29, i64 %30
  store volatile i64 %28, i64* %32, align 8
  %33 = load i32, i32* @PACKET3_CONTEXT_CONTROL, align 4
  %34 = call i32 @PACKET3(i32 %33, i32 1)
  %35 = call i64 @cpu_to_le32(i32 %34)
  %36 = load i64*, i64** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  %39 = getelementptr inbounds i64, i64* %36, i64 %37
  store volatile i64 %35, i64* %39, align 8
  %40 = call i64 @cpu_to_le32(i32 -2147483648)
  %41 = load i64*, i64** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %5, align 8
  %44 = getelementptr inbounds i64, i64* %41, i64 %42
  store volatile i64 %40, i64* %44, align 8
  %45 = call i64 @cpu_to_le32(i32 -2147483648)
  %46 = load i64*, i64** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %5, align 8
  %49 = getelementptr inbounds i64, i64* %46, i64 %47
  store volatile i64 %45, i64* %49, align 8
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.cs_section_def*, %struct.cs_section_def** %52, align 8
  store %struct.cs_section_def* %53, %struct.cs_section_def** %7, align 8
  br label %54

54:                                               ; preds = %123, %19
  %55 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %56 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %55, i32 0, i32 1
  %57 = load %struct.cs_extent_def*, %struct.cs_extent_def** %56, align 8
  %58 = icmp ne %struct.cs_extent_def* %57, null
  br i1 %58, label %59, label %126

59:                                               ; preds = %54
  %60 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %61 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %60, i32 0, i32 1
  %62 = load %struct.cs_extent_def*, %struct.cs_extent_def** %61, align 8
  store %struct.cs_extent_def* %62, %struct.cs_extent_def** %8, align 8
  br label %63

63:                                               ; preds = %119, %59
  %64 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %65 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %122

68:                                               ; preds = %63
  %69 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %70 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SECT_CONTEXT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %117

74:                                               ; preds = %68
  %75 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %76 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %77 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PACKET3(i32 %75, i32 %78)
  %80 = call i64 @cpu_to_le32(i32 %79)
  %81 = load i64*, i64** %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %5, align 8
  %84 = getelementptr inbounds i64, i64* %81, i64 %82
  store volatile i64 %80, i64* %84, align 8
  %85 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %86 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 40960
  %89 = call i64 @cpu_to_le32(i32 %88)
  %90 = load i64*, i64** %4, align 8
  %91 = load i64, i64* %5, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %5, align 8
  %93 = getelementptr inbounds i64, i64* %90, i64 %91
  store volatile i64 %89, i64* %93, align 8
  store i64 0, i64* %6, align 8
  br label %94

94:                                               ; preds = %113, %74
  %95 = load i64, i64* %6, align 8
  %96 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %97 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = icmp ult i64 %95, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %94
  %102 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %103 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %6, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @cpu_to_le32(i32 %107)
  %109 = load i64*, i64** %4, align 8
  %110 = load i64, i64* %5, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %5, align 8
  %112 = getelementptr inbounds i64, i64* %109, i64 %110
  store volatile i64 %108, i64* %112, align 8
  br label %113

113:                                              ; preds = %101
  %114 = load i64, i64* %6, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %6, align 8
  br label %94

116:                                              ; preds = %94
  br label %118

117:                                              ; preds = %68
  br label %226

118:                                              ; preds = %116
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.cs_extent_def*, %struct.cs_extent_def** %8, align 8
  %121 = getelementptr inbounds %struct.cs_extent_def, %struct.cs_extent_def* %120, i32 1
  store %struct.cs_extent_def* %121, %struct.cs_extent_def** %8, align 8
  br label %63

122:                                              ; preds = %63
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.cs_section_def*, %struct.cs_section_def** %7, align 8
  %125 = getelementptr inbounds %struct.cs_section_def, %struct.cs_section_def* %124, i32 1
  store %struct.cs_section_def* %125, %struct.cs_section_def** %7, align 8
  br label %54

126:                                              ; preds = %54
  %127 = load i32, i32* @PACKET3_SET_CONTEXT_REG, align 4
  %128 = call i32 @PACKET3(i32 %127, i32 2)
  %129 = call i64 @cpu_to_le32(i32 %128)
  %130 = load i64*, i64** %4, align 8
  %131 = load i64, i64* %5, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %5, align 8
  %133 = getelementptr inbounds i64, i64* %130, i64 %131
  store volatile i64 %129, i64* %133, align 8
  %134 = load i32, i32* @PA_SC_RASTER_CONFIG, align 4
  %135 = load i32, i32* @PACKET3_SET_CONTEXT_REG_START, align 4
  %136 = sub nsw i32 %134, %135
  %137 = call i64 @cpu_to_le32(i32 %136)
  %138 = load i64*, i64** %4, align 8
  %139 = load i64, i64* %5, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %5, align 8
  %141 = getelementptr inbounds i64, i64* %138, i64 %139
  store volatile i64 %137, i64* %141, align 8
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  switch i32 %144, label %189 [
    i32 132, label %145
    i32 129, label %156
    i32 130, label %167
    i32 128, label %167
    i32 131, label %178
  ]

145:                                              ; preds = %126
  %146 = call i64 @cpu_to_le32(i32 369098770)
  %147 = load i64*, i64** %4, align 8
  %148 = load i64, i64* %5, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %5, align 8
  %150 = getelementptr inbounds i64, i64* %147, i64 %148
  store volatile i64 %146, i64* %150, align 8
  %151 = call i64 @cpu_to_le32(i32 0)
  %152 = load i64*, i64** %4, align 8
  %153 = load i64, i64* %5, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %5, align 8
  %155 = getelementptr inbounds i64, i64* %152, i64 %153
  store volatile i64 %151, i64* %155, align 8
  br label %200

156:                                              ; preds = %126
  %157 = call i64 @cpu_to_le32(i32 0)
  %158 = load i64*, i64** %4, align 8
  %159 = load i64, i64* %5, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %5, align 8
  %161 = getelementptr inbounds i64, i64* %158, i64 %159
  store volatile i64 %157, i64* %161, align 8
  %162 = call i64 @cpu_to_le32(i32 0)
  %163 = load i64*, i64** %4, align 8
  %164 = load i64, i64* %5, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %5, align 8
  %166 = getelementptr inbounds i64, i64* %163, i64 %164
  store volatile i64 %162, i64* %166, align 8
  br label %200

167:                                              ; preds = %126, %126
  %168 = call i64 @cpu_to_le32(i32 0)
  %169 = load i64*, i64** %4, align 8
  %170 = load i64, i64* %5, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %5, align 8
  %172 = getelementptr inbounds i64, i64* %169, i64 %170
  store volatile i64 %168, i64* %172, align 8
  %173 = call i64 @cpu_to_le32(i32 0)
  %174 = load i64*, i64** %4, align 8
  %175 = load i64, i64* %5, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %5, align 8
  %177 = getelementptr inbounds i64, i64* %174, i64 %175
  store volatile i64 %173, i64* %177, align 8
  br label %200

178:                                              ; preds = %126
  %179 = call i64 @cpu_to_le32(i32 973084186)
  %180 = load i64*, i64** %4, align 8
  %181 = load i64, i64* %5, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %5, align 8
  %183 = getelementptr inbounds i64, i64* %180, i64 %181
  store volatile i64 %179, i64* %183, align 8
  %184 = call i64 @cpu_to_le32(i32 46)
  %185 = load i64*, i64** %4, align 8
  %186 = load i64, i64* %5, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %5, align 8
  %188 = getelementptr inbounds i64, i64* %185, i64 %186
  store volatile i64 %184, i64* %188, align 8
  br label %200

189:                                              ; preds = %126
  %190 = call i64 @cpu_to_le32(i32 0)
  %191 = load i64*, i64** %4, align 8
  %192 = load i64, i64* %5, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %5, align 8
  %194 = getelementptr inbounds i64, i64* %191, i64 %192
  store volatile i64 %190, i64* %194, align 8
  %195 = call i64 @cpu_to_le32(i32 0)
  %196 = load i64*, i64** %4, align 8
  %197 = load i64, i64* %5, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %5, align 8
  %199 = getelementptr inbounds i64, i64* %196, i64 %197
  store volatile i64 %195, i64* %199, align 8
  br label %200

200:                                              ; preds = %189, %178, %167, %156, %145
  %201 = load i32, i32* @PACKET3_PREAMBLE_CNTL, align 4
  %202 = call i32 @PACKET3(i32 %201, i32 0)
  %203 = call i64 @cpu_to_le32(i32 %202)
  %204 = load i64*, i64** %4, align 8
  %205 = load i64, i64* %5, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %5, align 8
  %207 = getelementptr inbounds i64, i64* %204, i64 %205
  store volatile i64 %203, i64* %207, align 8
  %208 = load i32, i32* @PACKET3_PREAMBLE_END_CLEAR_STATE, align 4
  %209 = call i64 @cpu_to_le32(i32 %208)
  %210 = load i64*, i64** %4, align 8
  %211 = load i64, i64* %5, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %5, align 8
  %213 = getelementptr inbounds i64, i64* %210, i64 %211
  store volatile i64 %209, i64* %213, align 8
  %214 = load i32, i32* @PACKET3_CLEAR_STATE, align 4
  %215 = call i32 @PACKET3(i32 %214, i32 0)
  %216 = call i64 @cpu_to_le32(i32 %215)
  %217 = load i64*, i64** %4, align 8
  %218 = load i64, i64* %5, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %5, align 8
  %220 = getelementptr inbounds i64, i64* %217, i64 %218
  store volatile i64 %216, i64* %220, align 8
  %221 = call i64 @cpu_to_le32(i32 0)
  %222 = load i64*, i64** %4, align 8
  %223 = load i64, i64* %5, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %5, align 8
  %225 = getelementptr inbounds i64, i64* %222, i64 %223
  store volatile i64 %221, i64* %225, align 8
  br label %226

226:                                              ; preds = %200, %117, %18, %14
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
