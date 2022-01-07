; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gpu.c_panfrost_gpu_init_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gpu.c_panfrost_gpu_init_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_model = type { i8*, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.panfrost_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@hw_issues_all = common dso_local global i32 0, align 4
@GPU_L2_FEATURES = common dso_local global i32 0, align 4
@GPU_CORE_FEATURES = common dso_local global i32 0, align 4
@GPU_TILER_FEATURES = common dso_local global i32 0, align 4
@GPU_MEM_FEATURES = common dso_local global i32 0, align 4
@GPU_MMU_FEATURES = common dso_local global i32 0, align 4
@GPU_THREAD_FEATURES = common dso_local global i32 0, align 4
@GPU_THREAD_MAX_THREADS = common dso_local global i32 0, align 4
@GPU_THREAD_MAX_WORKGROUP_SIZE = common dso_local global i32 0, align 4
@GPU_THREAD_MAX_BARRIER_SIZE = common dso_local global i32 0, align 4
@GPU_COHERENCY_FEATURES = common dso_local global i32 0, align 4
@GPU_AS_PRESENT = common dso_local global i32 0, align 4
@GPU_JS_PRESENT = common dso_local global i32 0, align 4
@GPU_SHADER_PRESENT_LO = common dso_local global i32 0, align 4
@GPU_SHADER_PRESENT_HI = common dso_local global i32 0, align 4
@GPU_TILER_PRESENT_LO = common dso_local global i32 0, align 4
@GPU_TILER_PRESENT_HI = common dso_local global i32 0, align 4
@GPU_L2_PRESENT_LO = common dso_local global i32 0, align 4
@GPU_L2_PRESENT_HI = common dso_local global i32 0, align 4
@GPU_STACK_PRESENT_LO = common dso_local global i32 0, align 4
@GPU_STACK_PRESENT_HI = common dso_local global i32 0, align 4
@GPU_THREAD_TLS_ALLOC = common dso_local global i32 0, align 4
@GPU_ID = common dso_local global i32 0, align 4
@gpu_models = common dso_local global %struct.panfrost_model* null, align 8
@MAX_HW_REVS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"mali-%s id 0x%x major 0x%x minor 0x%x status 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"features: %64pb, issues: %64pb\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"Features: L2:0x%08x Shader:0x%08x Tiler:0x%08x Mem:0x%0x MMU:0x%08x AS:0x%x JS:0x%x\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"shader_present=0x%0llx l2_present=0x%0llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.panfrost_device*)* @panfrost_gpu_init_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panfrost_gpu_init_features(%struct.panfrost_device* %0) #0 {
  %2 = alloca %struct.panfrost_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.panfrost_model*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.panfrost_device* %0, %struct.panfrost_device** %2, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @hw_issues_all, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %17 = load i32, i32* @GPU_L2_FEATURES, align 4
  %18 = call i8* @gpu_read(%struct.panfrost_device* %16, i32 %17)
  %19 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %20 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 14
  store i8* %18, i8** %21, align 8
  %22 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %23 = load i32, i32* @GPU_CORE_FEATURES, align 4
  %24 = call i8* @gpu_read(%struct.panfrost_device* %22, i32 %23)
  %25 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %26 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 13
  store i8* %24, i8** %27, align 8
  %28 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %29 = load i32, i32* @GPU_TILER_FEATURES, align 4
  %30 = call i8* @gpu_read(%struct.panfrost_device* %28, i32 %29)
  %31 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %32 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 12
  store i8* %30, i8** %33, align 8
  %34 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %35 = load i32, i32* @GPU_MEM_FEATURES, align 4
  %36 = call i8* @gpu_read(%struct.panfrost_device* %34, i32 %35)
  %37 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %38 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 11
  store i8* %36, i8** %39, align 8
  %40 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %41 = load i32, i32* @GPU_MMU_FEATURES, align 4
  %42 = call i8* @gpu_read(%struct.panfrost_device* %40, i32 %41)
  %43 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %44 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 10
  store i8* %42, i8** %45, align 8
  %46 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %47 = load i32, i32* @GPU_THREAD_FEATURES, align 4
  %48 = call i8* @gpu_read(%struct.panfrost_device* %46, i32 %47)
  %49 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %50 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 23
  store i8* %48, i8** %51, align 8
  %52 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %53 = load i32, i32* @GPU_THREAD_MAX_THREADS, align 4
  %54 = call i8* @gpu_read(%struct.panfrost_device* %52, i32 %53)
  %55 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %56 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 22
  store i8* %54, i8** %57, align 8
  %58 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %59 = load i32, i32* @GPU_THREAD_MAX_WORKGROUP_SIZE, align 4
  %60 = call i8* @gpu_read(%struct.panfrost_device* %58, i32 %59)
  %61 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %62 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 21
  store i8* %60, i8** %63, align 8
  %64 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %65 = load i32, i32* @GPU_THREAD_MAX_BARRIER_SIZE, align 4
  %66 = call i8* @gpu_read(%struct.panfrost_device* %64, i32 %65)
  %67 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %68 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 20
  store i8* %66, i8** %69, align 8
  %70 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %71 = load i32, i32* @GPU_COHERENCY_FEATURES, align 4
  %72 = call i8* @gpu_read(%struct.panfrost_device* %70, i32 %71)
  %73 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %74 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 19
  store i8* %72, i8** %75, align 8
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %91, %1
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %79, label %94

79:                                               ; preds = %76
  %80 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @GPU_TEXTURE_FEATURES(i32 %81)
  %83 = call i8* @gpu_read(%struct.panfrost_device* %80, i32 %82)
  %84 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %85 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 18
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  store i8* %83, i8** %90, align 8
  br label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %76

94:                                               ; preds = %76
  %95 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %96 = load i32, i32* @GPU_AS_PRESENT, align 4
  %97 = call i8* @gpu_read(%struct.panfrost_device* %95, i32 %96)
  %98 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %99 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 9
  store i8* %97, i8** %100, align 8
  %101 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %102 = load i32, i32* @GPU_JS_PRESENT, align 4
  %103 = call i8* @gpu_read(%struct.panfrost_device* %101, i32 %102)
  %104 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %105 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 8
  store i8* %103, i8** %106, align 8
  %107 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %108 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 8
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @hweight32(i8* %110)
  store i32 %111, i32* %4, align 4
  store i32 0, i32* %13, align 4
  br label %112

112:                                              ; preds = %128, %94
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %112
  %117 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @GPU_JS_FEATURES(i32 %118)
  %120 = call i8* @gpu_read(%struct.panfrost_device* %117, i32 %119)
  %121 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %122 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 17
  %124 = load i8**, i8*** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  store i8* %120, i8** %127, align 8
  br label %128

128:                                              ; preds = %116
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %112

131:                                              ; preds = %112
  %132 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %133 = load i32, i32* @GPU_SHADER_PRESENT_LO, align 4
  %134 = call i8* @gpu_read(%struct.panfrost_device* %132, i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %137 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %140 = load i32, i32* @GPU_SHADER_PRESENT_HI, align 4
  %141 = call i8* @gpu_read(%struct.panfrost_device* %139, i32 %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = shl i32 %142, 32
  %144 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %145 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %143
  store i32 %148, i32* %146, align 8
  %149 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %150 = load i32, i32* @GPU_TILER_PRESENT_LO, align 4
  %151 = call i8* @gpu_read(%struct.panfrost_device* %149, i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %154 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 4
  %156 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %157 = load i32, i32* @GPU_TILER_PRESENT_HI, align 4
  %158 = call i8* @gpu_read(%struct.panfrost_device* %156, i32 %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = shl i32 %159, 32
  %161 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %162 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %160
  store i32 %165, i32* %163, align 4
  %166 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %167 = load i32, i32* @GPU_L2_PRESENT_LO, align 4
  %168 = call i8* @gpu_read(%struct.panfrost_device* %166, i32 %167)
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %171 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  store i32 %169, i32* %172, align 8
  %173 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %174 = load i32, i32* @GPU_L2_PRESENT_HI, align 4
  %175 = call i8* @gpu_read(%struct.panfrost_device* %173, i32 %174)
  %176 = ptrtoint i8* %175 to i32
  %177 = shl i32 %176, 32
  %178 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %179 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %177
  store i32 %182, i32* %180, align 8
  %183 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %184 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @hweight64(i32 %186)
  %188 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %189 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 16
  store i32 %187, i32* %190, align 8
  %191 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %192 = load i32, i32* @GPU_STACK_PRESENT_LO, align 4
  %193 = call i8* @gpu_read(%struct.panfrost_device* %191, i32 %192)
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %196 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 3
  store i32 %194, i32* %197, align 4
  %198 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %199 = load i32, i32* @GPU_STACK_PRESENT_HI, align 4
  %200 = call i8* @gpu_read(%struct.panfrost_device* %198, i32 %199)
  %201 = ptrtoint i8* %200 to i32
  %202 = shl i32 %201, 32
  %203 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %204 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %202
  store i32 %207, i32* %205, align 4
  %208 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %209 = load i32, i32* @GPU_THREAD_TLS_ALLOC, align 4
  %210 = call i8* @gpu_read(%struct.panfrost_device* %208, i32 %209)
  %211 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %212 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 15
  store i8* %210, i8** %213, align 8
  %214 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %215 = load i32, i32* @GPU_ID, align 4
  %216 = call i8* @gpu_read(%struct.panfrost_device* %214, i32 %215)
  %217 = ptrtoint i8* %216 to i32
  store i32 %217, i32* %3, align 4
  %218 = load i32, i32* %3, align 4
  %219 = and i32 %218, 65535
  %220 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %221 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 4
  store i32 %219, i32* %222, align 8
  %223 = load i32, i32* %3, align 4
  %224 = ashr i32 %223, 16
  %225 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %226 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 5
  store i32 %224, i32* %227, align 4
  %228 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %229 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, 26966
  br i1 %232, label %233, label %237

233:                                              ; preds = %131
  %234 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %235 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 5
  store i32 1536, i32* %236, align 4
  br label %237

237:                                              ; preds = %233, %131
  %238 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %239 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = ashr i32 %241, 12
  %243 = and i32 %242, 15
  store i32 %243, i32* %5, align 4
  %244 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %245 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = ashr i32 %247, 4
  %249 = and i32 %248, 255
  store i32 %249, i32* %6, align 4
  %250 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %251 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = and i32 %253, 15
  store i32 %254, i32* %7, align 4
  %255 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %256 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  store i32 %258, i32* %8, align 4
  %259 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %260 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %3, align 4
  %263 = load %struct.panfrost_model*, %struct.panfrost_model** @gpu_models, align 8
  store %struct.panfrost_model* %263, %struct.panfrost_model** %12, align 8
  br label %264

264:                                              ; preds = %340, %237
  %265 = load %struct.panfrost_model*, %struct.panfrost_model** %12, align 8
  %266 = getelementptr inbounds %struct.panfrost_model, %struct.panfrost_model* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %343

269:                                              ; preds = %264
  store i32 -1, i32* %14, align 4
  %270 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %271 = load %struct.panfrost_model*, %struct.panfrost_model** %12, align 8
  %272 = getelementptr inbounds %struct.panfrost_model, %struct.panfrost_model* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @panfrost_model_eq(%struct.panfrost_device* %270, i32 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %269
  br label %340

277:                                              ; preds = %269
  %278 = load %struct.panfrost_model*, %struct.panfrost_model** %12, align 8
  %279 = getelementptr inbounds %struct.panfrost_model, %struct.panfrost_model* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  store i8* %280, i8** %9, align 8
  %281 = load %struct.panfrost_model*, %struct.panfrost_model** %12, align 8
  %282 = getelementptr inbounds %struct.panfrost_model, %struct.panfrost_model* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  store i32 %283, i32* %10, align 4
  %284 = load %struct.panfrost_model*, %struct.panfrost_model** %12, align 8
  %285 = getelementptr inbounds %struct.panfrost_model, %struct.panfrost_model* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %11, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %289

289:                                              ; preds = %322, %277
  %290 = load i32, i32* %13, align 4
  %291 = load i32, i32* @MAX_HW_REVS, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %325

293:                                              ; preds = %289
  %294 = load %struct.panfrost_model*, %struct.panfrost_model** %12, align 8
  %295 = getelementptr inbounds %struct.panfrost_model, %struct.panfrost_model* %294, i32 0, i32 3
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %295, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %8, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %306

304:                                              ; preds = %293
  %305 = load i32, i32* %13, align 4
  store i32 %305, i32* %14, align 4
  br label %325

306:                                              ; preds = %293
  %307 = load %struct.panfrost_model*, %struct.panfrost_model** %12, align 8
  %308 = getelementptr inbounds %struct.panfrost_model, %struct.panfrost_model* %307, i32 0, i32 3
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** %308, align 8
  %310 = load i32, i32* %13, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* %8, align 4
  %316 = and i32 %315, -16
  %317 = icmp eq i32 %314, %316
  br i1 %317, label %318, label %320

318:                                              ; preds = %306
  %319 = load i32, i32* %13, align 4
  store i32 %319, i32* %14, align 4
  br label %320

320:                                              ; preds = %318, %306
  br label %321

321:                                              ; preds = %320
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %13, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %13, align 4
  br label %289

325:                                              ; preds = %304, %289
  %326 = load i32, i32* %14, align 4
  %327 = icmp sge i32 %326, 0
  br i1 %327, label %328, label %339

328:                                              ; preds = %325
  %329 = load %struct.panfrost_model*, %struct.panfrost_model** %12, align 8
  %330 = getelementptr inbounds %struct.panfrost_model, %struct.panfrost_model* %329, i32 0, i32 3
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** %330, align 8
  %332 = load i32, i32* %14, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %11, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* %11, align 4
  br label %339

339:                                              ; preds = %328, %325
  br label %343

340:                                              ; preds = %276
  %341 = load %struct.panfrost_model*, %struct.panfrost_model** %12, align 8
  %342 = getelementptr inbounds %struct.panfrost_model, %struct.panfrost_model* %341, i32 1
  store %struct.panfrost_model* %342, %struct.panfrost_model** %12, align 8
  br label %264

343:                                              ; preds = %339, %264
  %344 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %345 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 6
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* %10, align 4
  %349 = call i32 @bitmap_from_u64(i32 %347, i32 %348)
  %350 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %351 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 7
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* %11, align 4
  %355 = call i32 @bitmap_from_u64(i32 %353, i32 %354)
  %356 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %357 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = load i8*, i8** %9, align 8
  %360 = load i32, i32* %3, align 4
  %361 = load i32, i32* %5, align 4
  %362 = load i32, i32* %6, align 4
  %363 = load i32, i32* %7, align 4
  %364 = call i32 (i32, i8*, ...) @dev_info(i32 %358, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %359, i32 %360, i32 %361, i32 %362, i32 %363)
  %365 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %366 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %369 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 6
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %373 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 7
  %375 = load i32, i32* %374, align 4
  %376 = call i32 (i32, i8*, ...) @dev_info(i32 %367, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %371, i32 %375)
  %377 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %378 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %381 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 14
  %383 = load i8*, i8** %382, align 8
  %384 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %385 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 13
  %387 = load i8*, i8** %386, align 8
  %388 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %389 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 12
  %391 = load i8*, i8** %390, align 8
  %392 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %393 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 11
  %395 = load i8*, i8** %394, align 8
  %396 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %397 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 10
  %399 = load i8*, i8** %398, align 8
  %400 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %401 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 9
  %403 = load i8*, i8** %402, align 8
  %404 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %405 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 8
  %407 = load i8*, i8** %406, align 8
  %408 = call i32 (i32, i8*, ...) @dev_info(i32 %379, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i8* %383, i8* %387, i8* %391, i8* %395, i8* %399, i8* %403, i8* %407)
  %409 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %410 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %413 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %417 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = call i32 (i32, i8*, ...) @dev_info(i32 %411, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %415, i32 %419)
  ret void
}

declare dso_local i8* @gpu_read(%struct.panfrost_device*, i32) #1

declare dso_local i32 @GPU_TEXTURE_FEATURES(i32) #1

declare dso_local i32 @hweight32(i8*) #1

declare dso_local i32 @GPU_JS_FEATURES(i32) #1

declare dso_local i32 @hweight64(i32) #1

declare dso_local i32 @panfrost_model_eq(%struct.panfrost_device*, i32) #1

declare dso_local i32 @bitmap_from_u64(i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
