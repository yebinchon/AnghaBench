; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_make_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_make_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.amdgpu_vm = type { i32, i32, i32, %struct.TYPE_9__, i32*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@CHIP_RAVEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@AMDGPU_VM_USE_CPU_FOR_COMPUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"VM update mode is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SDMA\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"CPU update of VM recommended only for large BAR system\0A\00", align 1
@amdgpu_vm_cpu_funcs = common dso_local global i32 0, align 4
@amdgpu_vm_sdma_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vm_make_compute(%struct.amdgpu_device* %0, %struct.amdgpu_vm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_vm* %1, %struct.amdgpu_vm** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHIP_RAVEN, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %20 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = call i32 @amdgpu_bo_reserve(%struct.TYPE_10__* %23, i32 1)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %209

29:                                               ; preds = %3
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %31 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %32 = call i32 @amdgpu_vm_check_clean_reserved(%struct.amdgpu_device* %30, %struct.amdgpu_vm* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %201

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %36
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 1
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call i32 @idr_alloc(i32* %47, %struct.amdgpu_vm* %48, i32 %49, i32 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @ENOSPC, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %39
  br label %201

64:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %64, %36
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %68 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %74 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %76 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %77 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %78 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = call i32 @amdgpu_vm_clear_bo(%struct.amdgpu_device* %75, %struct.amdgpu_vm* %76, %struct.TYPE_10__* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  br label %181

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %65
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @AMDGPU_VM_USE_CPU_FOR_COMPUTE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %99 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %101 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %106 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %105)
  %107 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %108 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %87
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 2
  %114 = call i32 @amdgpu_gmc_vram_full_visible(i32* %113)
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  br label %117

117:                                              ; preds = %111, %87
  %118 = phi i1 [ false, %87 ], [ %116, %111 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @WARN_ONCE(i32 %119, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %121 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %122 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %127 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %126, i32 0, i32 5
  store i32* @amdgpu_vm_cpu_funcs, i32** %127, align 8
  br label %131

128:                                              ; preds = %117
  %129 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %130 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %129, i32 0, i32 5
  store i32* @amdgpu_vm_sdma_funcs, i32** %130, align 8
  br label %131

131:                                              ; preds = %128, %125
  %132 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %133 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @dma_fence_put(i32* %134)
  %136 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %137 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %136, i32 0, i32 4
  store i32* null, i32** %137, align 8
  %138 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %139 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %166

142:                                              ; preds = %131
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %144 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i64, i64* %11, align 8
  %147 = call i32 @spin_lock_irqsave(i32* %145, i64 %146)
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %149 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  %151 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %152 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @idr_remove(i32* %150, i32 %153)
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i64, i64* %11, align 8
  %159 = call i32 @spin_unlock_irqrestore(i32* %157, i64 %158)
  %160 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %161 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @amdgpu_pasid_free(i32 %162)
  %164 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %165 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %164, i32 0, i32 2
  store i32 0, i32* %165, align 8
  br label %166

166:                                              ; preds = %142, %131
  %167 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %168 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = call i32 @amdgpu_bo_unref(i32* %172)
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %166
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %179 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  br label %180

180:                                              ; preds = %176, %166
  br label %201

181:                                              ; preds = %85
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %181
  %185 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %186 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load i64, i64* %12, align 8
  %189 = call i32 @spin_lock_irqsave(i32* %187, i64 %188)
  %190 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %191 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @idr_remove(i32* %192, i32 %193)
  %195 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %196 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load i64, i64* %12, align 8
  %199 = call i32 @spin_unlock_irqrestore(i32* %197, i64 %198)
  br label %200

200:                                              ; preds = %184, %181
  br label %201

201:                                              ; preds = %200, %180, %63, %35
  %202 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %203 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = call i32 @amdgpu_bo_unreserve(%struct.TYPE_10__* %206)
  %208 = load i32, i32* %9, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %201, %27
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @amdgpu_bo_reserve(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @amdgpu_vm_check_clean_reserved(%struct.amdgpu_device*, %struct.amdgpu_vm*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_alloc(i32*, %struct.amdgpu_vm*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @amdgpu_vm_clear_bo(%struct.amdgpu_device*, %struct.amdgpu_vm*, %struct.TYPE_10__*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i8*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @amdgpu_gmc_vram_full_visible(i32*) #1

declare dso_local i32 @dma_fence_put(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @amdgpu_pasid_free(i32) #1

declare dso_local i32 @amdgpu_bo_unref(i32*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
