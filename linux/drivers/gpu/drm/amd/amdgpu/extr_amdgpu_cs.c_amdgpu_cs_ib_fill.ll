; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_ib_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_ib_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_cs_parser = type { i32, %struct.drm_sched_entity*, i32, %struct.TYPE_7__*, %struct.amdgpu_cs_chunk*, %struct.TYPE_5__* }
%struct.drm_sched_entity = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32, %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i32, i32, i32 }
%struct.amdgpu_cs_chunk = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.amdgpu_fpriv* }
%struct.amdgpu_fpriv = type { %struct.amdgpu_vm }
%struct.amdgpu_vm = type { i32 }
%struct.amdgpu_ring = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.drm_amdgpu_cs_chunk_ib = type { i64, i32, i32, i32, i32, i32 }

@AMDGPU_CHUNK_ID_IB = common dso_local global i64 0, align 8
@AMDGPU_HW_IP_GFX = common dso_local global i64 0, align 8
@amdgpu_mcbp = common dso_local global i64 0, align 8
@AMDGPU_IB_FLAG_PREEMPT = common dso_local global i32 0, align 4
@AMDGPU_IB_FLAG_CE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_IB_FLAG_PREAMBLE = common dso_local global i32 0, align 4
@AMDGPU_PREAMBLE_IB_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to get ib !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_cs_parser*)* @amdgpu_cs_ib_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_cs_ib_fill(%struct.amdgpu_device* %0, %struct.amdgpu_cs_parser* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_cs_parser*, align 8
  %6 = alloca %struct.amdgpu_fpriv*, align 8
  %7 = alloca %struct.amdgpu_vm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_ring*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.amdgpu_cs_chunk*, align 8
  %15 = alloca %struct.amdgpu_ib*, align 8
  %16 = alloca %struct.drm_amdgpu_cs_chunk_ib*, align 8
  %17 = alloca %struct.drm_sched_entity*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_cs_parser* %1, %struct.amdgpu_cs_parser** %5, align 8
  %18 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %19 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %18, i32 0, i32 5
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %21, align 8
  store %struct.amdgpu_fpriv* %22, %struct.amdgpu_fpriv** %6, align 8
  %23 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %23, i32 0, i32 0
  store %struct.amdgpu_vm* %24, %struct.amdgpu_vm** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %208, %2
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %28 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %34 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %33, i32 0, i32 3
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %32, %37
  br label %39

39:                                               ; preds = %31, %25
  %40 = phi i1 [ false, %25 ], [ %38, %31 ]
  br i1 %40, label %41, label %211

41:                                               ; preds = %39
  %42 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %43 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %42, i32 0, i32 4
  %44 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.amdgpu_cs_chunk, %struct.amdgpu_cs_chunk* %44, i64 %46
  store %struct.amdgpu_cs_chunk* %47, %struct.amdgpu_cs_chunk** %14, align 8
  %48 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %49 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %48, i32 0, i32 3
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %52, i64 %54
  store %struct.amdgpu_ib* %55, %struct.amdgpu_ib** %15, align 8
  %56 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %14, align 8
  %57 = getelementptr inbounds %struct.amdgpu_cs_chunk, %struct.amdgpu_cs_chunk* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.drm_amdgpu_cs_chunk_ib*
  store %struct.drm_amdgpu_cs_chunk_ib* %59, %struct.drm_amdgpu_cs_chunk_ib** %16, align 8
  %60 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %14, align 8
  %61 = getelementptr inbounds %struct.amdgpu_cs_chunk, %struct.amdgpu_cs_chunk* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AMDGPU_CHUNK_ID_IB, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %41
  br label %208

66:                                               ; preds = %41
  %67 = load %struct.drm_amdgpu_cs_chunk_ib*, %struct.drm_amdgpu_cs_chunk_ib** %16, align 8
  %68 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, %struct.drm_amdgpu_cs_chunk_ib* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AMDGPU_HW_IP_GFX, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %110

72:                                               ; preds = %66
  %73 = load i64, i64* @amdgpu_mcbp, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %77 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %75, %72
  %80 = load %struct.drm_amdgpu_cs_chunk_ib*, %struct.drm_amdgpu_cs_chunk_ib** %16, align 8
  %81 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, %struct.drm_amdgpu_cs_chunk_ib* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @AMDGPU_IB_FLAG_PREEMPT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %79
  %87 = load %struct.drm_amdgpu_cs_chunk_ib*, %struct.drm_amdgpu_cs_chunk_ib** %16, align 8
  %88 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, %struct.drm_amdgpu_cs_chunk_ib* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @AMDGPU_IB_FLAG_CE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %99

96:                                               ; preds = %86
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %79
  %101 = load i32, i32* %9, align 4
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %10, align 4
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %109

106:                                              ; preds = %103, %100
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %244

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %75, %66
  %111 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %112 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.drm_amdgpu_cs_chunk_ib*, %struct.drm_amdgpu_cs_chunk_ib** %16, align 8
  %115 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, %struct.drm_amdgpu_cs_chunk_ib* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.drm_amdgpu_cs_chunk_ib*, %struct.drm_amdgpu_cs_chunk_ib** %16, align 8
  %118 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, %struct.drm_amdgpu_cs_chunk_ib* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.drm_amdgpu_cs_chunk_ib*, %struct.drm_amdgpu_cs_chunk_ib** %16, align 8
  %121 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, %struct.drm_amdgpu_cs_chunk_ib* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @amdgpu_ctx_get_entity(i32 %113, i64 %116, i32 %119, i32 %122, %struct.drm_sched_entity** %17)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %110
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %244

128:                                              ; preds = %110
  %129 = load %struct.drm_amdgpu_cs_chunk_ib*, %struct.drm_amdgpu_cs_chunk_ib** %16, align 8
  %130 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, %struct.drm_amdgpu_cs_chunk_ib* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @AMDGPU_IB_FLAG_PREAMBLE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %128
  %136 = load i32, i32* @AMDGPU_PREAMBLE_IB_PRESENT, align 4
  %137 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %138 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %137, i32 0, i32 3
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %136
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %135, %128
  %144 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %145 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %144, i32 0, i32 1
  %146 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %145, align 8
  %147 = icmp ne %struct.drm_sched_entity* %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %143
  %149 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %150 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %149, i32 0, i32 1
  %151 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %150, align 8
  %152 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %17, align 8
  %153 = icmp ne %struct.drm_sched_entity* %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %244

157:                                              ; preds = %148, %143
  %158 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %17, align 8
  %159 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %160 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %159, i32 0, i32 1
  store %struct.drm_sched_entity* %158, %struct.drm_sched_entity** %160, align 8
  %161 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %17, align 8
  %162 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %161, i32 0, i32 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call %struct.amdgpu_ring* @to_amdgpu_ring(i32 %165)
  store %struct.amdgpu_ring* %166, %struct.amdgpu_ring** %11, align 8
  %167 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %168 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %169 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %170 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %169, i32 0, i32 0
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %157
  %176 = load %struct.drm_amdgpu_cs_chunk_ib*, %struct.drm_amdgpu_cs_chunk_ib** %16, align 8
  %177 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, %struct.drm_amdgpu_cs_chunk_ib* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  br label %180

179:                                              ; preds = %157
  br label %180

180:                                              ; preds = %179, %175
  %181 = phi i32 [ %178, %175 ], [ 0, %179 ]
  %182 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %15, align 8
  %183 = call i32 @amdgpu_ib_get(%struct.amdgpu_device* %167, %struct.amdgpu_vm* %168, i32 %181, %struct.amdgpu_ib* %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %3, align 4
  br label %244

189:                                              ; preds = %180
  %190 = load %struct.drm_amdgpu_cs_chunk_ib*, %struct.drm_amdgpu_cs_chunk_ib** %16, align 8
  %191 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, %struct.drm_amdgpu_cs_chunk_ib* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %15, align 8
  %194 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 4
  %195 = load %struct.drm_amdgpu_cs_chunk_ib*, %struct.drm_amdgpu_cs_chunk_ib** %16, align 8
  %196 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, %struct.drm_amdgpu_cs_chunk_ib* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = sdiv i32 %197, 4
  %199 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %15, align 8
  %200 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 4
  %201 = load %struct.drm_amdgpu_cs_chunk_ib*, %struct.drm_amdgpu_cs_chunk_ib** %16, align 8
  %202 = getelementptr inbounds %struct.drm_amdgpu_cs_chunk_ib, %struct.drm_amdgpu_cs_chunk_ib* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %15, align 8
  %205 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %13, align 4
  br label %208

208:                                              ; preds = %189, %65
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %12, align 4
  br label %25

211:                                              ; preds = %39
  %212 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %213 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %212, i32 0, i32 1
  %214 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %213, align 8
  %215 = getelementptr inbounds %struct.drm_sched_entity, %struct.drm_sched_entity* %214, i32 0, i32 0
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call %struct.amdgpu_ring* @to_amdgpu_ring(i32 %218)
  store %struct.amdgpu_ring* %219, %struct.amdgpu_ring** %11, align 8
  %220 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %221 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %220, i32 0, i32 3
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %236

226:                                              ; preds = %211
  %227 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %228 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %227, i32 0, i32 0
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %226
  %234 = load i32, i32* @EINVAL, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %3, align 4
  br label %244

236:                                              ; preds = %226, %211
  %237 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %238 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %241 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %240, i32 0, i32 1
  %242 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %241, align 8
  %243 = call i32 @amdgpu_ctx_wait_prev_fence(i32 %239, %struct.drm_sched_entity* %242)
  store i32 %243, i32* %3, align 4
  br label %244

244:                                              ; preds = %236, %233, %186, %154, %126, %106
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ctx_get_entity(i32, i64, i32, i32, %struct.drm_sched_entity**) #1

declare dso_local %struct.amdgpu_ring* @to_amdgpu_ring(i32) #1

declare dso_local i32 @amdgpu_ib_get(%struct.amdgpu_device*, %struct.amdgpu_vm*, i32, %struct.amdgpu_ib*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @amdgpu_ctx_wait_prev_fence(i32, %struct.drm_sched_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
