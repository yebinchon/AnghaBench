; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_cap_soc_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_cap_soc_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._vcs_dpi_soc_bounding_box_st = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pp_smu_nv_clock_table = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._vcs_dpi_soc_bounding_box_st*, %struct.pp_smu_nv_clock_table*)* @cap_soc_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cap_soc_clocks(%struct._vcs_dpi_soc_bounding_box_st* %0, %struct.pp_smu_nv_clock_table* byval(%struct.pp_smu_nv_clock_table) align 8 %1) #0 {
  %3 = alloca %struct._vcs_dpi_soc_bounding_box_st*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._vcs_dpi_soc_bounding_box_st* %0, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %239, %2
  %7 = load i32, i32* %4, align 4
  %8 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %9 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %242

12:                                               ; preds = %6
  %13 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %14 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sdiv i32 %22, 1000
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sdiv i32 %31, 1000
  %33 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %34 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %32, i32* %39, align 4
  br label %40

40:                                               ; preds = %29, %25, %12
  %41 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %42 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 1000
  %52 = mul nsw i32 %51, 16
  %53 = icmp sgt i32 %48, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 1000
  %62 = mul nsw i32 %61, 16
  %63 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %64 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %62, i32* %69, align 4
  br label %70

70:                                               ; preds = %58, %54, %40
  %71 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %72 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sdiv i32 %80, 1000
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sdiv i32 %89, 1000
  %91 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %92 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  store i32 %90, i32* %97, align 4
  br label %98

98:                                               ; preds = %87, %83, %70
  %99 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %100 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %108, 1000
  %110 = icmp sgt i32 %106, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %98
  %112 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %117, 1000
  %119 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %120 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  store i32 %118, i32* %125, align 4
  br label %126

126:                                              ; preds = %115, %111, %98
  %127 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %128 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = sdiv i32 %136, 1000
  %138 = icmp sgt i32 %134, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %126
  %140 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = sdiv i32 %145, 1000
  %147 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %148 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %147, i32 0, i32 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 4
  store i32 %146, i32* %153, align 4
  br label %154

154:                                              ; preds = %143, %139, %126
  %155 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %156 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %155, i32 0, i32 1
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = sdiv i32 %164, 1000
  %166 = icmp sgt i32 %162, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %154
  %168 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = sdiv i32 %173, 1000
  %175 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %176 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %175, i32 0, i32 1
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 5
  store i32 %174, i32* %181, align 4
  br label %182

182:                                              ; preds = %171, %167, %154
  %183 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %184 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %183, i32 0, i32 1
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = load i32, i32* %4, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = sdiv i32 %192, 1000
  %194 = icmp sgt i32 %190, %193
  br i1 %194, label %195, label %210

195:                                              ; preds = %182
  %196 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = sdiv i32 %201, 1000
  %203 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %204 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %203, i32 0, i32 1
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 6
  store i32 %202, i32* %209, align 4
  br label %210

210:                                              ; preds = %199, %195, %182
  %211 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %212 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %211, i32 0, i32 1
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = load i32, i32* %4, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 7
  %220 = load i32, i32* %219, align 4
  %221 = sdiv i32 %220, 1000
  %222 = icmp sgt i32 %218, %221
  br i1 %222, label %223, label %238

223:                                              ; preds = %210
  %224 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 7
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.pp_smu_nv_clock_table, %struct.pp_smu_nv_clock_table* %1, i32 0, i32 7
  %229 = load i32, i32* %228, align 4
  %230 = sdiv i32 %229, 1000
  %231 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %232 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %231, i32 0, i32 1
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = load i32, i32* %4, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 7
  store i32 %230, i32* %237, align 4
  br label %238

238:                                              ; preds = %227, %223, %210
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %4, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %4, align 4
  br label %6

242:                                              ; preds = %6
  %243 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %244 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = sub nsw i32 %245, 1
  store i32 %246, i32* %4, align 4
  br label %247

247:                                              ; preds = %419, %242
  %248 = load i32, i32* %4, align 4
  %249 = icmp sgt i32 %248, 1
  br i1 %249, label %250, label %422

250:                                              ; preds = %247
  store i32 1, i32* %5, align 4
  %251 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %252 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %251, i32 0, i32 1
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** %252, align 8
  %254 = load i32, i32* %4, align 4
  %255 = sub nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %261 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %260, i32 0, i32 1
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** %261, align 8
  %263 = load i32, i32* %4, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %259, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %250
  store i32 0, i32* %5, align 4
  br label %270

270:                                              ; preds = %269, %250
  %271 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %272 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %271, i32 0, i32 1
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** %272, align 8
  %274 = load i32, i32* %4, align 4
  %275 = sub nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %281 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %280, i32 0, i32 1
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** %281, align 8
  %283 = load i32, i32* %4, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %279, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %270
  store i32 0, i32* %5, align 4
  br label %290

290:                                              ; preds = %289, %270
  %291 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %292 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %291, i32 0, i32 1
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** %292, align 8
  %294 = load i32, i32* %4, align 4
  %295 = sub nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  %300 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %301 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %300, i32 0, i32 1
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** %301, align 8
  %303 = load i32, i32* %4, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %299, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %290
  store i32 0, i32* %5, align 4
  br label %310

310:                                              ; preds = %309, %290
  %311 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %312 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %311, i32 0, i32 1
  %313 = load %struct.TYPE_2__*, %struct.TYPE_2__** %312, align 8
  %314 = load i32, i32* %4, align 4
  %315 = sub nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %321 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %320, i32 0, i32 1
  %322 = load %struct.TYPE_2__*, %struct.TYPE_2__** %321, align 8
  %323 = load i32, i32* %4, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %319, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %310
  store i32 0, i32* %5, align 4
  br label %330

330:                                              ; preds = %329, %310
  %331 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %332 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %331, i32 0, i32 1
  %333 = load %struct.TYPE_2__*, %struct.TYPE_2__** %332, align 8
  %334 = load i32, i32* %4, align 4
  %335 = sub nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 7
  %339 = load i32, i32* %338, align 4
  %340 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %341 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %340, i32 0, i32 1
  %342 = load %struct.TYPE_2__*, %struct.TYPE_2__** %341, align 8
  %343 = load i32, i32* %4, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 7
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %339, %347
  br i1 %348, label %349, label %350

349:                                              ; preds = %330
  store i32 0, i32* %5, align 4
  br label %350

350:                                              ; preds = %349, %330
  %351 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %352 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %351, i32 0, i32 1
  %353 = load %struct.TYPE_2__*, %struct.TYPE_2__** %352, align 8
  %354 = load i32, i32* %4, align 4
  %355 = sub nsw i32 %354, 1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %361 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %360, i32 0, i32 1
  %362 = load %struct.TYPE_2__*, %struct.TYPE_2__** %361, align 8
  %363 = load i32, i32* %4, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = icmp ne i32 %359, %367
  br i1 %368, label %369, label %370

369:                                              ; preds = %350
  store i32 0, i32* %5, align 4
  br label %370

370:                                              ; preds = %369, %350
  %371 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %372 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %371, i32 0, i32 1
  %373 = load %struct.TYPE_2__*, %struct.TYPE_2__** %372, align 8
  %374 = load i32, i32* %4, align 4
  %375 = sub nsw i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %377, i32 0, i32 5
  %379 = load i32, i32* %378, align 4
  %380 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %381 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %380, i32 0, i32 1
  %382 = load %struct.TYPE_2__*, %struct.TYPE_2__** %381, align 8
  %383 = load i32, i32* %4, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %385, i32 0, i32 5
  %387 = load i32, i32* %386, align 4
  %388 = icmp ne i32 %379, %387
  br i1 %388, label %389, label %390

389:                                              ; preds = %370
  store i32 0, i32* %5, align 4
  br label %390

390:                                              ; preds = %389, %370
  %391 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %392 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %391, i32 0, i32 1
  %393 = load %struct.TYPE_2__*, %struct.TYPE_2__** %392, align 8
  %394 = load i32, i32* %4, align 4
  %395 = sub nsw i32 %394, 1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %393, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i32 0, i32 6
  %399 = load i32, i32* %398, align 4
  %400 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %401 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %400, i32 0, i32 1
  %402 = load %struct.TYPE_2__*, %struct.TYPE_2__** %401, align 8
  %403 = load i32, i32* %4, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %405, i32 0, i32 6
  %407 = load i32, i32* %406, align 4
  %408 = icmp ne i32 %399, %407
  br i1 %408, label %409, label %410

409:                                              ; preds = %390
  store i32 0, i32* %5, align 4
  br label %410

410:                                              ; preds = %409, %390
  %411 = load i32, i32* %5, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %418

413:                                              ; preds = %410
  %414 = load %struct._vcs_dpi_soc_bounding_box_st*, %struct._vcs_dpi_soc_bounding_box_st** %3, align 8
  %415 = getelementptr inbounds %struct._vcs_dpi_soc_bounding_box_st, %struct._vcs_dpi_soc_bounding_box_st* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = add nsw i32 %416, -1
  store i32 %417, i32* %415, align 8
  br label %418

418:                                              ; preds = %413, %410
  br label %419

419:                                              ; preds = %418
  %420 = load i32, i32* %4, align 4
  %421 = add nsw i32 %420, -1
  store i32 %421, i32* %4, align 4
  br label %247

422:                                              ; preds = %247
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
