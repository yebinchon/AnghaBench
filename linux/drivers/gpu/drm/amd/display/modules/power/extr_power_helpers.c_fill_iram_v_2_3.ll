; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/power/extr_power_helpers.c_fill_iram_v_2_3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/power/extr_power_helpers.c_fill_iram_v_2_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iram_table_v_2_2 = type { i32, i32*, i8**, i8**, i8**, i32**, i32**, i32**, i32**, i32*, i32*, i32*, i32*, i32* }
%struct.dmcu_iram_parameters = type { i32 }

@NUM_AGGR_LEVEL = common dso_local global i32 0, align 4
@abm_settings = common dso_local global %struct.TYPE_2__** null, align 8
@NUM_AMBI_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_iram_v_2_3(%struct.iram_table_v_2_2* %0, i32 %1) #0 {
  %3 = alloca %struct.dmcu_iram_parameters, align 4
  %4 = alloca %struct.iram_table_v_2_2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %3, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store %struct.iram_table_v_2_2* %0, %struct.iram_table_v_2_2** %4, align 8
  %9 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %12 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %187, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @NUM_AGGR_LEVEL, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %190

17:                                               ; preds = %13
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @abm_settings, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %29 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %28, i32 0, i32 13
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @abm_settings, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %45 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %44, i32 0, i32 12
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @abm_settings, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %61 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %60, i32 0, i32 11
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @abm_settings, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %66, i64 %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %77 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %76, i32 0, i32 10
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @abm_settings, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 %84
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %93 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %92, i32 0, i32 9
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %183, %17
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @NUM_AMBI_LEVEL, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %186

102:                                              ; preds = %98
  %103 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @abm_settings, align 8
  %104 = load i32, i32* %7, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %103, i64 %105
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %114 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %113, i32 0, i32 8
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %112, i32* %122, align 4
  %123 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @abm_settings, align 8
  %124 = load i32, i32* %7, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %123, i64 %125
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %134 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %133, i32 0, i32 7
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %132, i32* %142, align 4
  %143 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @abm_settings, align 8
  %144 = load i32, i32* %7, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %143, i64 %145
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %154 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %153, i32 0, i32 6
  %155 = load i32**, i32*** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %152, i32* %162, align 4
  %163 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @abm_settings, align 8
  %164 = load i32, i32* %7, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %163, i64 %165
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %174 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %173, i32 0, i32 5
  %175 = load i32**, i32*** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %172, i32* %182, align 4
  br label %183

183:                                              ; preds = %102
  %184 = load i32, i32* %6, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %98

186:                                              ; preds = %98
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %5, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %5, align 4
  br label %13

190:                                              ; preds = %13
  %191 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %192 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  store i32 101, i32* %194, align 4
  %195 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %196 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 101, i32* %198, align 4
  %199 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %200 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  store i32 101, i32* %202, align 4
  %203 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %204 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 3
  store i32 101, i32* %206, align 4
  %207 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %208 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 4
  store i32 101, i32* %210, align 4
  %211 = call i8* @cpu_to_be16(i32 4732)
  %212 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %213 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %212, i32 0, i32 4
  %214 = load i8**, i8*** %213, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 0
  store i8* %211, i8** %215, align 8
  %216 = call i8* @cpu_to_be16(i32 5403)
  %217 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %218 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %217, i32 0, i32 4
  %219 = load i8**, i8*** %218, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 1
  store i8* %216, i8** %220, align 8
  %221 = call i8* @cpu_to_be16(i32 6101)
  %222 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %223 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %222, i32 0, i32 4
  %224 = load i8**, i8*** %223, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 2
  store i8* %221, i8** %225, align 8
  %226 = call i8* @cpu_to_be16(i32 6742)
  %227 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %228 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %227, i32 0, i32 4
  %229 = load i8**, i8*** %228, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 3
  store i8* %226, i8** %230, align 8
  %231 = call i8* @cpu_to_be16(i32 7299)
  %232 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %233 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %232, i32 0, i32 4
  %234 = load i8**, i8*** %233, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 4
  store i8* %231, i8** %235, align 8
  %236 = call i8* @cpu_to_be16(i32 7794)
  %237 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %238 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %237, i32 0, i32 4
  %239 = load i8**, i8*** %238, align 8
  %240 = getelementptr inbounds i8*, i8** %239, i64 5
  store i8* %236, i8** %240, align 8
  %241 = call i8* @cpu_to_be16(i32 8432)
  %242 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %243 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %242, i32 0, i32 4
  %244 = load i8**, i8*** %243, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 6
  store i8* %241, i8** %245, align 8
  %246 = call i8* @cpu_to_be16(i32 9003)
  %247 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %248 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %247, i32 0, i32 4
  %249 = load i8**, i8*** %248, align 8
  %250 = getelementptr inbounds i8*, i8** %249, i64 7
  store i8* %246, i8** %250, align 8
  %251 = call i8* @cpu_to_be16(i32 10649)
  %252 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %253 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %252, i32 0, i32 3
  %254 = load i8**, i8*** %253, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i64 0
  store i8* %251, i8** %255, align 8
  %256 = call i8* @cpu_to_be16(i32 14745)
  %257 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %258 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %257, i32 0, i32 3
  %259 = load i8**, i8*** %258, align 8
  %260 = getelementptr inbounds i8*, i8** %259, i64 1
  store i8* %256, i8** %260, align 8
  %261 = call i8* @cpu_to_be16(i32 18022)
  %262 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %263 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %262, i32 0, i32 3
  %264 = load i8**, i8*** %263, align 8
  %265 = getelementptr inbounds i8*, i8** %264, i64 2
  store i8* %261, i8** %265, align 8
  %266 = call i8* @cpu_to_be16(i32 22937)
  %267 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %268 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %267, i32 0, i32 3
  %269 = load i8**, i8*** %268, align 8
  %270 = getelementptr inbounds i8*, i8** %269, i64 3
  store i8* %266, i8** %270, align 8
  %271 = call i8* @cpu_to_be16(i32 25395)
  %272 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %273 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %272, i32 0, i32 3
  %274 = load i8**, i8*** %273, align 8
  %275 = getelementptr inbounds i8*, i8** %274, i64 4
  store i8* %271, i8** %275, align 8
  %276 = call i8* @cpu_to_be16(i32 30720)
  %277 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %278 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %277, i32 0, i32 3
  %279 = load i8**, i8*** %278, align 8
  %280 = getelementptr inbounds i8*, i8** %279, i64 5
  store i8* %276, i8** %280, align 8
  %281 = call i8* @cpu_to_be16(i32 35840)
  %282 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %283 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %282, i32 0, i32 3
  %284 = load i8**, i8*** %283, align 8
  %285 = getelementptr inbounds i8*, i8** %284, i64 6
  store i8* %281, i8** %285, align 8
  %286 = call i8* @cpu_to_be16(i32 40960)
  %287 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %288 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %287, i32 0, i32 3
  %289 = load i8**, i8*** %288, align 8
  %290 = getelementptr inbounds i8*, i8** %289, i64 7
  store i8* %286, i8** %290, align 8
  %291 = call i8* @cpu_to_be16(i32 13833)
  %292 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %293 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %292, i32 0, i32 2
  %294 = load i8**, i8*** %293, align 8
  %295 = getelementptr inbounds i8*, i8** %294, i64 0
  store i8* %291, i8** %295, align 8
  %296 = call i8* @cpu_to_be16(i32 11770)
  %297 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %298 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %297, i32 0, i32 2
  %299 = load i8**, i8*** %298, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i64 1
  store i8* %296, i8** %300, align 8
  %301 = call i8* @cpu_to_be16(i32 10218)
  %302 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %303 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %302, i32 0, i32 2
  %304 = load i8**, i8*** %303, align 8
  %305 = getelementptr inbounds i8*, i8** %304, i64 2
  store i8* %301, i8** %305, align 8
  %306 = call i8* @cpu_to_be16(i32 9053)
  %307 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %308 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %307, i32 0, i32 2
  %309 = load i8**, i8*** %308, align 8
  %310 = getelementptr inbounds i8*, i8** %309, i64 3
  store i8* %306, i8** %310, align 8
  %311 = call i8* @cpu_to_be16(i32 8258)
  %312 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %313 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %312, i32 0, i32 2
  %314 = load i8**, i8*** %313, align 8
  %315 = getelementptr inbounds i8*, i8** %314, i64 4
  store i8* %311, i8** %315, align 8
  %316 = call i8* @cpu_to_be16(i32 7619)
  %317 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %318 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %317, i32 0, i32 2
  %319 = load i8**, i8*** %318, align 8
  %320 = getelementptr inbounds i8*, i8** %319, i64 5
  store i8* %316, i8** %320, align 8
  %321 = call i8* @cpu_to_be16(i32 6938)
  %322 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %323 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %322, i32 0, i32 2
  %324 = load i8**, i8*** %323, align 8
  %325 = getelementptr inbounds i8*, i8** %324, i64 6
  store i8* %321, i8** %325, align 8
  %326 = call i8* @cpu_to_be16(i32 6416)
  %327 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %328 = getelementptr inbounds %struct.iram_table_v_2_2, %struct.iram_table_v_2_2* %327, i32 0, i32 2
  %329 = load i8**, i8*** %328, align 8
  %330 = getelementptr inbounds i8*, i8** %329, i64 7
  store i8* %326, i8** %330, align 8
  %331 = load %struct.iram_table_v_2_2*, %struct.iram_table_v_2_2** %4, align 8
  %332 = getelementptr inbounds %struct.dmcu_iram_parameters, %struct.dmcu_iram_parameters* %3, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @fill_backlight_transform_table_v_2_2(i32 %333, %struct.iram_table_v_2_2* %331)
  ret void
}

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @fill_backlight_transform_table_v_2_2(i32, %struct.iram_table_v_2_2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
