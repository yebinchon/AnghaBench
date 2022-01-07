; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_create_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_create_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_file = type { %struct.amdgpu_fpriv* }
%struct.amdgpu_fpriv = type { %struct.amdgpu_vm }
%struct.amdgpu_vm = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.dma_resv* }
%struct.dma_resv = type { i32 }
%union.drm_amdgpu_gem_create = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.amdgpu_bo = type { i32 }
%struct.TYPE_15__ = type { i32 }

@AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_NO_CPU_ACCESS = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_CPU_GTT_USWC = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_VRAM_CLEARED = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_VM_ALWAYS_VALID = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_EXPLICIT_SYNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_MASK = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GDS = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GWS = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_OA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"GDS bo cannot be per-vm-bo\0A\00", align 1
@ttm_bo_type_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gem_create_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_fpriv*, align 8
  %10 = alloca %struct.amdgpu_vm*, align 8
  %11 = alloca %union.drm_amdgpu_gem_create*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dma_resv*, align 8
  %15 = alloca %struct.drm_gem_object*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.amdgpu_bo*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %20, align 8
  store %struct.amdgpu_device* %21, %struct.amdgpu_device** %8, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %22, i32 0, i32 0
  %24 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %23, align 8
  store %struct.amdgpu_fpriv* %24, %struct.amdgpu_fpriv** %9, align 8
  %25 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %9, align 8
  %26 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %25, i32 0, i32 0
  store %struct.amdgpu_vm* %26, %struct.amdgpu_vm** %10, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to %union.drm_amdgpu_gem_create*
  store %union.drm_amdgpu_gem_create* %28, %union.drm_amdgpu_gem_create** %11, align 8
  %29 = load %union.drm_amdgpu_gem_create*, %union.drm_amdgpu_gem_create** %11, align 8
  %30 = bitcast %union.drm_amdgpu_gem_create* %29 to %struct.TYPE_12__*
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %union.drm_amdgpu_gem_create*, %union.drm_amdgpu_gem_create** %11, align 8
  %34 = bitcast %union.drm_amdgpu_gem_create* %33 to %struct.TYPE_12__*
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  store %struct.dma_resv* null, %struct.dma_resv** %14, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED, align 4
  %39 = load i32, i32* @AMDGPU_GEM_CREATE_NO_CPU_ACCESS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_GTT_USWC, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @AMDGPU_GEM_CREATE_VRAM_CLEARED, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @AMDGPU_GEM_CREATE_VM_ALWAYS_VALID, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @AMDGPU_GEM_CREATE_EXPLICIT_SYNC, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %37, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %181

55:                                               ; preds = %3
  %56 = load %union.drm_amdgpu_gem_create*, %union.drm_amdgpu_gem_create** %11, align 8
  %57 = bitcast %union.drm_amdgpu_gem_create* %56 to %struct.TYPE_12__*
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @AMDGPU_GEM_DOMAIN_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %181

67:                                               ; preds = %55
  %68 = load %union.drm_amdgpu_gem_create*, %union.drm_amdgpu_gem_create** %11, align 8
  %69 = bitcast %union.drm_amdgpu_gem_create* %68 to %struct.TYPE_12__*
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @AMDGPU_GEM_DOMAIN_GDS, align 4
  %73 = load i32, i32* @AMDGPU_GEM_DOMAIN_GWS, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @AMDGPU_GEM_DOMAIN_OA, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %71, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %67
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @AMDGPU_GEM_CREATE_VM_ALWAYS_VALID, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %181

88:                                               ; preds = %79
  %89 = load i32, i32* @AMDGPU_GEM_CREATE_NO_CPU_ACCESS, align 4
  %90 = load i32, i32* %12, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %88, %67
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @AMDGPU_GEM_CREATE_VM_ALWAYS_VALID, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %92
  %98 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %10, align 8
  %99 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = call i32 @amdgpu_bo_reserve(%struct.TYPE_16__* %102, i32 0)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* %17, align 4
  store i32 %107, i32* %4, align 4
  br label %181

108:                                              ; preds = %97
  %109 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %10, align 8
  %110 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load %struct.dma_resv*, %struct.dma_resv** %116, align 8
  store %struct.dma_resv* %117, %struct.dma_resv** %14, align 8
  br label %118

118:                                              ; preds = %108, %92
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load %union.drm_amdgpu_gem_create*, %union.drm_amdgpu_gem_create** %11, align 8
  %122 = bitcast %union.drm_amdgpu_gem_create* %121 to %struct.TYPE_12__*
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %union.drm_amdgpu_gem_create*, %union.drm_amdgpu_gem_create** %11, align 8
  %126 = bitcast %union.drm_amdgpu_gem_create* %125 to %struct.TYPE_12__*
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = and i32 -1, %128
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @ttm_bo_type_device, align 4
  %132 = load %struct.dma_resv*, %struct.dma_resv** %14, align 8
  %133 = call i32 @amdgpu_gem_object_create(%struct.amdgpu_device* %119, i32 %120, i32 %124, i32 %129, i32 %130, i32 %131, %struct.dma_resv* %132, %struct.drm_gem_object** %15)
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @AMDGPU_GEM_CREATE_VM_ALWAYS_VALID, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %159

138:                                              ; preds = %118
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %152, label %141

141:                                              ; preds = %138
  %142 = load %struct.drm_gem_object*, %struct.drm_gem_object** %15, align 8
  %143 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %142)
  store %struct.amdgpu_bo* %143, %struct.amdgpu_bo** %18, align 8
  %144 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %10, align 8
  %145 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = call i32 @amdgpu_bo_ref(%struct.TYPE_16__* %148)
  %150 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %18, align 8
  %151 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %141, %138
  %153 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %10, align 8
  %154 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = call i32 @amdgpu_bo_unreserve(%struct.TYPE_16__* %157)
  br label %159

159:                                              ; preds = %152, %118
  %160 = load i32, i32* %17, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i32, i32* %17, align 4
  store i32 %163, i32* %4, align 4
  br label %181

164:                                              ; preds = %159
  %165 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %166 = load %struct.drm_gem_object*, %struct.drm_gem_object** %15, align 8
  %167 = call i32 @drm_gem_handle_create(%struct.drm_file* %165, %struct.drm_gem_object* %166, i32* %16)
  store i32 %167, i32* %17, align 4
  %168 = load %struct.drm_gem_object*, %struct.drm_gem_object** %15, align 8
  %169 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %168)
  %170 = load i32, i32* %17, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %164
  %173 = load i32, i32* %17, align 4
  store i32 %173, i32* %4, align 4
  br label %181

174:                                              ; preds = %164
  %175 = load %union.drm_amdgpu_gem_create*, %union.drm_amdgpu_gem_create** %11, align 8
  %176 = call i32 @memset(%union.drm_amdgpu_gem_create* %175, i32 0, i32 16)
  %177 = load i32, i32* %16, align 4
  %178 = load %union.drm_amdgpu_gem_create*, %union.drm_amdgpu_gem_create** %11, align 8
  %179 = bitcast %union.drm_amdgpu_gem_create* %178 to %struct.TYPE_15__*
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 4
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %174, %172, %162, %106, %84, %64, %52
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @amdgpu_gem_object_create(%struct.amdgpu_device*, i32, i32, i32, i32, i32, %struct.dma_resv*, %struct.drm_gem_object**) #1

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @amdgpu_bo_ref(%struct.TYPE_16__*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.TYPE_16__*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @memset(%union.drm_amdgpu_gem_create*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
