; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_vm = type { i32, i32, i32, i32, %struct.TYPE_11__, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32**, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_13__* }
%struct.amdgpu_bo_param = type { i32 }
%struct.amdgpu_bo = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@RB_ROOT_CACHED = common dso_local global i32 0, align 4
@AMDGPU_MAX_VMHUBS = common dso_local global i32 0, align 4
@AMDGPU_VM_CONTEXT_COMPUTE = common dso_local global i32 0, align 4
@AMDGPU_VM_USE_CPU_FOR_COMPUTE = common dso_local global i32 0, align 4
@CHIP_RAVEN = common dso_local global i64 0, align 8
@AMDGPU_VM_USE_CPU_FOR_GFX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"VM update mode is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SDMA\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"CPU update of VM recommended only for large BAR system\0A\00", align 1
@amdgpu_vm_cpu_funcs = common dso_local global i32 0, align 4
@amdgpu_vm_sdma_funcs = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_SHADOW = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vm_init(%struct.amdgpu_device* %0, %struct.amdgpu_vm* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_vm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_bo_param, align 4
  %11 = alloca %struct.amdgpu_bo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_vm* %1, %struct.amdgpu_vm** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @RB_ROOT_CACHED, align 4
  %16 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %17 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %16, i32 0, i32 16
  store i32 %15, i32* %17, align 8
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %29, %4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @AMDGPU_MAX_VMHUBS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %24 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %23, i32 0, i32 15
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %13, align 4
  br label %18

32:                                               ; preds = %18
  %33 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %34 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %33, i32 0, i32 14
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %37 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %36, i32 0, i32 13
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %40 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %39, i32 0, i32 12
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %43 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %42, i32 0, i32 11
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %46 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %45, i32 0, i32 10
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %49 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %48, i32 0, i32 9
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %52 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %51, i32 0, i32 8
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %55 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %54, i32 0, i32 3
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @drm_sched_entity_init(i32* %55, i32 %59, i32 %63, i32* null)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %32
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %5, align 4
  br label %267

69:                                               ; preds = %32
  %70 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %71 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @AMDGPU_VM_CONTEXT_COMPUTE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %69
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @AMDGPU_VM_USE_CPU_FOR_COMPUTE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %87 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CHIP_RAVEN, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %75
  %94 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %95 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %75
  br label %110

97:                                               ; preds = %69
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @AMDGPU_VM_USE_CPU_FOR_GFX, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %109 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %97, %96
  %111 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %112 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %117 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %116)
  %118 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %119 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %110
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 2
  %125 = call i32 @amdgpu_gmc_vram_full_visible(i32* %124)
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  br label %128

128:                                              ; preds = %122, %110
  %129 = phi i1 [ false, %110 ], [ %127, %122 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @WARN_ONCE(i32 %130, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %132 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %133 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %138 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %137, i32 0, i32 7
  store i32* @amdgpu_vm_cpu_funcs, i32** %138, align 8
  br label %142

139:                                              ; preds = %128
  %140 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %141 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %140, i32 0, i32 7
  store i32* @amdgpu_vm_sdma_funcs, i32** %141, align 8
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %144 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %143, i32 0, i32 6
  store i32* null, i32** %144, align 8
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %146 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @amdgpu_vm_bo_param(%struct.amdgpu_device* %145, %struct.amdgpu_vm* %146, i32 %150, %struct.amdgpu_bo_param* %10)
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @AMDGPU_VM_CONTEXT_COMPUTE, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %142
  %156 = load i32, i32* @AMDGPU_GEM_CREATE_SHADOW, align 4
  %157 = xor i32 %156, -1
  %158 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %10, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, %157
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %155, %142
  %162 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %163 = call i32 @amdgpu_bo_create(%struct.amdgpu_device* %162, %struct.amdgpu_bo_param* %10, %struct.amdgpu_bo** %11)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %262

167:                                              ; preds = %161
  %168 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %169 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %168, i32 1)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %245

173:                                              ; preds = %167
  %174 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %175 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @dma_resv_reserve_shared(i32 %178, i32 1)
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  br label %238

183:                                              ; preds = %173
  %184 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %185 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %188 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %189 = call i32 @amdgpu_vm_bo_base_init(%struct.TYPE_12__* %186, %struct.amdgpu_vm* %187, %struct.amdgpu_bo* %188)
  %190 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %191 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %192 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  %193 = call i32 @amdgpu_vm_clear_bo(%struct.amdgpu_device* %190, %struct.amdgpu_vm* %191, %struct.amdgpu_bo* %192)
  store i32 %193, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %183
  br label %238

197:                                              ; preds = %183
  %198 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %199 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = call i32 @amdgpu_bo_unreserve(%struct.TYPE_13__* %202)
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %233

206:                                              ; preds = %197
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %208 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  %210 = load i64, i64* %14, align 8
  %211 = call i32 @spin_lock_irqsave(i32* %209, i64 %210)
  %212 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %213 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 2
  %215 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = add i32 %217, 1
  %219 = load i32, i32* @GFP_ATOMIC, align 4
  %220 = call i32 @idr_alloc(i32* %214, %struct.amdgpu_vm* %215, i32 %216, i32 %218, i32 %219)
  store i32 %220, i32* %12, align 4
  %221 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %222 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load i64, i64* %14, align 8
  %225 = call i32 @spin_unlock_irqrestore(i32* %223, i64 %224)
  %226 = load i32, i32* %12, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %206
  br label %245

229:                                              ; preds = %206
  %230 = load i32, i32* %9, align 4
  %231 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %232 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %229, %197
  %234 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %235 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @INIT_KFIFO(i32 %236)
  store i32 0, i32* %5, align 4
  br label %267

238:                                              ; preds = %196, %182
  %239 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %240 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %242, align 8
  %244 = call i32 @amdgpu_bo_unreserve(%struct.TYPE_13__* %243)
  br label %245

245:                                              ; preds = %238, %228, %172
  %246 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %247 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = call i32 @amdgpu_bo_unref(%struct.TYPE_13__** %251)
  %253 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %254 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %253, i32 0, i32 4
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = call i32 @amdgpu_bo_unref(%struct.TYPE_13__** %256)
  %258 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %259 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %258, i32 0, i32 4
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %261, align 8
  br label %262

262:                                              ; preds = %245, %166
  %263 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %7, align 8
  %264 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %263, i32 0, i32 3
  %265 = call i32 @drm_sched_entity_destroy(i32* %264)
  %266 = load i32, i32* %12, align 4
  store i32 %266, i32* %5, align 4
  br label %267

267:                                              ; preds = %262, %233, %67
  %268 = load i32, i32* %5, align 4
  ret i32 %268
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @drm_sched_entity_init(i32*, i32, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i8*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @amdgpu_gmc_vram_full_visible(i32*) #1

declare dso_local i32 @amdgpu_vm_bo_param(%struct.amdgpu_device*, %struct.amdgpu_vm*, i32, %struct.amdgpu_bo_param*) #1

declare dso_local i32 @amdgpu_bo_create(%struct.amdgpu_device*, %struct.amdgpu_bo_param*, %struct.amdgpu_bo**) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @dma_resv_reserve_shared(i32, i32) #1

declare dso_local i32 @amdgpu_vm_bo_base_init(%struct.TYPE_12__*, %struct.amdgpu_vm*, %struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_vm_clear_bo(%struct.amdgpu_device*, %struct.amdgpu_vm*, %struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.TYPE_13__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_alloc(i32*, %struct.amdgpu_vm*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @INIT_KFIFO(i32) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.TYPE_13__**) #1

declare dso_local i32 @drm_sched_entity_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
