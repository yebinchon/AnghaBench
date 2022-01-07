; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_psr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_psr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.bdb_header = type { i32 }
%struct.bdb_psr = type { i32, %struct.psr_table* }
%struct.psr_table = type { i32, i32, i32, i32, i32, i32 }

@BDB_PSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"No PSR BDB found.\0A\00", align 1
@PSR_0_LINES_TO_WAIT = common dso_local global i32 0, align 4
@PSR_1_LINE_TO_WAIT = common dso_local global i32 0, align 4
@PSR_4_LINES_TO_WAIT = common dso_local global i32 0, align 4
@PSR_8_LINES_TO_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"VBT has unknown PSR lines to wait %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"VBT tp1 wakeup time value %d is outside range[0-3], defaulting to max value 2500us\0A\00", align 1
@.str.3 = private unnamed_addr constant [88 x i8] c"VBT tp2_tp3 wakeup time value %d is outside range[0-3], defaulting to max value 2500us\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.bdb_header*)* @parse_psr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_psr(%struct.drm_i915_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.bdb_psr*, align 8
  %6 = alloca %struct.psr_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %14 = load i32, i32* @BDB_PSR, align 4
  %15 = call %struct.bdb_psr* @find_section(%struct.bdb_header* %13, i32 %14)
  store %struct.bdb_psr* %15, %struct.bdb_psr** %5, align 8
  %16 = load %struct.bdb_psr*, %struct.bdb_psr** %5, align 8
  %17 = icmp ne %struct.bdb_psr* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %225

20:                                               ; preds = %2
  %21 = load %struct.bdb_psr*, %struct.bdb_psr** %5, align 8
  %22 = getelementptr inbounds %struct.bdb_psr, %struct.bdb_psr* %21, i32 0, i32 1
  %23 = load %struct.psr_table*, %struct.psr_table** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.psr_table, %struct.psr_table* %23, i64 %25
  store %struct.psr_table* %26, %struct.psr_table** %6, align 8
  %27 = load %struct.psr_table*, %struct.psr_table** %6, align 8
  %28 = getelementptr inbounds %struct.psr_table, %struct.psr_table* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 6
  store i32 %29, i32* %33, align 4
  %34 = load %struct.psr_table*, %struct.psr_table** %6, align 8
  %35 = getelementptr inbounds %struct.psr_table, %struct.psr_table* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  store i32 %36, i32* %40, align 4
  %41 = load %struct.psr_table*, %struct.psr_table** %6, align 8
  %42 = getelementptr inbounds %struct.psr_table, %struct.psr_table* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %20
  br label %58

46:                                               ; preds = %20
  %47 = load %struct.psr_table*, %struct.psr_table** %6, align 8
  %48 = getelementptr inbounds %struct.psr_table, %struct.psr_table* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 15
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %56

52:                                               ; preds = %46
  %53 = load %struct.psr_table*, %struct.psr_table** %6, align 8
  %54 = getelementptr inbounds %struct.psr_table, %struct.psr_table* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  br label %56

56:                                               ; preds = %52, %51
  %57 = phi i32 [ 15, %51 ], [ %55, %52 ]
  br label %58

58:                                               ; preds = %56, %45
  %59 = phi i32 [ 0, %45 ], [ %57, %56 ]
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  %64 = load %struct.psr_table*, %struct.psr_table** %6, align 8
  %65 = getelementptr inbounds %struct.psr_table, %struct.psr_table* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %91 [
    i32 0, label %67
    i32 1, label %73
    i32 2, label %79
    i32 3, label %85
  ]

67:                                               ; preds = %58
  %68 = load i32, i32* @PSR_0_LINES_TO_WAIT, align 4
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %70 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  store i32 %68, i32* %72, align 4
  br label %96

73:                                               ; preds = %58
  %74 = load i32, i32* @PSR_1_LINE_TO_WAIT, align 4
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %76 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 4
  store i32 %74, i32* %78, align 4
  br label %96

79:                                               ; preds = %58
  %80 = load i32, i32* @PSR_4_LINES_TO_WAIT, align 4
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %82 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  store i32 %80, i32* %84, align 4
  br label %96

85:                                               ; preds = %58
  %86 = load i32, i32* @PSR_8_LINES_TO_WAIT, align 4
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %88 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  store i32 %86, i32* %90, align 4
  br label %96

91:                                               ; preds = %58
  %92 = load %struct.psr_table*, %struct.psr_table** %6, align 8
  %93 = getelementptr inbounds %struct.psr_table, %struct.psr_table* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %91, %85, %79, %73, %67
  %97 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %98 = getelementptr inbounds %struct.bdb_header, %struct.bdb_header* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %99, 205
  br i1 %100, label %101, label %172

101:                                              ; preds = %96
  %102 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %103 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %107 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %111 = call i32 @INTEL_GEN(%struct.drm_i915_private* %110)
  %112 = icmp sge i32 %111, 10
  br i1 %112, label %113, label %172

113:                                              ; preds = %109, %105, %101
  %114 = load %struct.psr_table*, %struct.psr_table** %6, align 8
  %115 = getelementptr inbounds %struct.psr_table, %struct.psr_table* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %132 [
    i32 0, label %117
    i32 1, label %122
    i32 3, label %127
    i32 2, label %137
  ]

117:                                              ; preds = %113
  %118 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %119 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  store i32 500, i32* %121, align 4
  br label %142

122:                                              ; preds = %113
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %124 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i32 100, i32* %126, align 4
  br label %142

127:                                              ; preds = %113
  %128 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %129 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  br label %142

132:                                              ; preds = %113
  %133 = load %struct.psr_table*, %struct.psr_table** %6, align 8
  %134 = getelementptr inbounds %struct.psr_table, %struct.psr_table* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %113, %132
  %138 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %139 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  store i32 2500, i32* %141, align 4
  br label %142

142:                                              ; preds = %137, %127, %122, %117
  %143 = load %struct.psr_table*, %struct.psr_table** %6, align 8
  %144 = getelementptr inbounds %struct.psr_table, %struct.psr_table* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  switch i32 %145, label %161 [
    i32 0, label %146
    i32 1, label %151
    i32 3, label %156
    i32 2, label %166
  ]

146:                                              ; preds = %142
  %147 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %148 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  store i32 500, i32* %150, align 4
  br label %171

151:                                              ; preds = %142
  %152 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %153 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  store i32 100, i32* %155, align 4
  br label %171

156:                                              ; preds = %142
  %157 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %158 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  store i32 0, i32* %160, align 4
  br label %171

161:                                              ; preds = %142
  %162 = load %struct.psr_table*, %struct.psr_table** %6, align 8
  %163 = getelementptr inbounds %struct.psr_table, %struct.psr_table* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %142, %161
  %167 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %168 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  store i32 2500, i32* %170, align 4
  br label %171

171:                                              ; preds = %166, %156, %151, %146
  br label %189

172:                                              ; preds = %109, %96
  %173 = load %struct.psr_table*, %struct.psr_table** %6, align 8
  %174 = getelementptr inbounds %struct.psr_table, %struct.psr_table* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %175, 100
  %177 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %178 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  store i32 %176, i32* %180, align 4
  %181 = load %struct.psr_table*, %struct.psr_table** %6, align 8
  %182 = getelementptr inbounds %struct.psr_table, %struct.psr_table* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %183, 100
  %185 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %186 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 2
  store i32 %184, i32* %188, align 4
  br label %189

189:                                              ; preds = %172, %171
  %190 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %191 = getelementptr inbounds %struct.bdb_header, %struct.bdb_header* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp sge i32 %192, 226
  br i1 %193, label %194, label %215

194:                                              ; preds = %189
  %195 = load %struct.bdb_psr*, %struct.bdb_psr** %5, align 8
  %196 = getelementptr inbounds %struct.bdb_psr, %struct.bdb_psr* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %7, align 4
  %200 = mul nsw i32 2, %199
  %201 = ashr i32 %198, %200
  %202 = and i32 %201, 3
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  switch i32 %203, label %207 [
    i32 0, label %204
    i32 1, label %205
    i32 3, label %206
    i32 2, label %208
  ]

204:                                              ; preds = %194
  store i32 500, i32* %8, align 4
  br label %209

205:                                              ; preds = %194
  store i32 100, i32* %8, align 4
  br label %209

206:                                              ; preds = %194
  store i32 50, i32* %8, align 4
  br label %209

207:                                              ; preds = %194
  br label %208

208:                                              ; preds = %194, %207
  store i32 2500, i32* %8, align 4
  br label %209

209:                                              ; preds = %208, %206, %205, %204
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %212 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 3
  store i32 %210, i32* %214, align 4
  br label %225

215:                                              ; preds = %189
  %216 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %217 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %222 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 3
  store i32 %220, i32* %224, align 4
  br label %225

225:                                              ; preds = %18, %215, %209
  ret void
}

declare dso_local %struct.bdb_psr* @find_section(%struct.bdb_header*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
