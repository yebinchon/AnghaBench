; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_kiq_kcq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_kiq_kcq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.amdgpu_ring*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.amdgpu_ring = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.amdgpu_ring }

@AMDGPU_MAX_COMPUTE_QUEUES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid KCQ enabled: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to lock KIQ (%d).\0A\00", align 1
@PACKET3_SET_RESOURCES = common dso_local global i32 0, align 4
@PACKET3_MAP_QUEUES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"KCQ enable failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v9_0_kiq_kcq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_kiq_kcq_enable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_ring*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.amdgpu_ring* %14, %struct.amdgpu_ring** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %45, %1
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @AMDGPU_MAX_COMPUTE_QUEUES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @test_bit(i32 %20, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %45

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp uge i64 %31, 64
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %48

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = shl i64 1, %41
  %43 = load i64, i64* %5, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %39, %28
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %15

48:                                               ; preds = %36, %15
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 7, %53
  %55 = add nsw i32 %54, 8
  %56 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %49, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %187

63:                                               ; preds = %48
  %64 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %65 = load i32, i32* @PACKET3_SET_RESOURCES, align 4
  %66 = call i32 @PACKET3(i32 %65, i32 6)
  %67 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %64, i32 %66)
  %68 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %69 = call i32 @PACKET3_SET_RESOURCES_VMID_MASK(i32 0)
  %70 = call i32 @PACKET3_SET_RESOURCES_QUEUE_TYPE(i32 0)
  %71 = or i32 %69, %70
  %72 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %68, i32 %71)
  %73 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @lower_32_bits(i64 %74)
  %76 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %73, i32 %75)
  %77 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @upper_32_bits(i64 %78)
  %80 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %77, i32 %79)
  %81 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %82 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %81, i32 0)
  %83 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %84 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %83, i32 0)
  %85 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %86 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %85, i32 0)
  %87 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %88 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %87, i32 0)
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %175, %63
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %178

96:                                               ; preds = %89
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %100, i64 %102
  store %struct.amdgpu_ring* %103, %struct.amdgpu_ring** %8, align 8
  %104 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %105 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @amdgpu_bo_gpu_offset(i32 %106)
  store i64 %107, i64* %9, align 8
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %113 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %114, 4
  %116 = sext i32 %115 to i64
  %117 = add i64 %111, %116
  store i64 %117, i64* %10, align 8
  %118 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %119 = load i32, i32* @PACKET3_MAP_QUEUES, align 4
  %120 = call i32 @PACKET3(i32 %119, i32 5)
  %121 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %118, i32 %120)
  %122 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %123 = call i32 @PACKET3_MAP_QUEUES_QUEUE_SEL(i32 0)
  %124 = call i32 @PACKET3_MAP_QUEUES_VMID(i32 0)
  %125 = or i32 %123, %124
  %126 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %127 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @PACKET3_MAP_QUEUES_QUEUE(i32 %128)
  %130 = or i32 %125, %129
  %131 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %132 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @PACKET3_MAP_QUEUES_PIPE(i32 %133)
  %135 = or i32 %130, %134
  %136 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %137 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 1
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 0, i32 1
  %142 = call i32 @PACKET3_MAP_QUEUES_ME(i32 %141)
  %143 = or i32 %135, %142
  %144 = call i32 @PACKET3_MAP_QUEUES_QUEUE_TYPE(i32 0)
  %145 = or i32 %143, %144
  %146 = call i32 @PACKET3_MAP_QUEUES_ALLOC_FORMAT(i32 0)
  %147 = or i32 %145, %146
  %148 = call i32 @PACKET3_MAP_QUEUES_ENGINE_SEL(i32 0)
  %149 = or i32 %147, %148
  %150 = call i32 @PACKET3_MAP_QUEUES_NUM_QUEUES(i32 1)
  %151 = or i32 %149, %150
  %152 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %122, i32 %151)
  %153 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %154 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %155 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @PACKET3_MAP_QUEUES_DOORBELL_OFFSET(i32 %156)
  %158 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %153, i32 %157)
  %159 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %160 = load i64, i64* %9, align 8
  %161 = call i32 @lower_32_bits(i64 %160)
  %162 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %159, i32 %161)
  %163 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %164 = load i64, i64* %9, align 8
  %165 = call i32 @upper_32_bits(i64 %164)
  %166 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %163, i32 %165)
  %167 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %168 = load i64, i64* %10, align 8
  %169 = call i32 @lower_32_bits(i64 %168)
  %170 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %167, i32 %169)
  %171 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %172 = load i64, i64* %10, align 8
  %173 = call i32 @upper_32_bits(i64 %172)
  %174 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %171, i32 %173)
  br label %175

175:                                              ; preds = %96
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  br label %89

178:                                              ; preds = %89
  %179 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %180 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %179)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %178
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %185, %59
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_SET_RESOURCES_VMID_MASK(i32) #1

declare dso_local i32 @PACKET3_SET_RESOURCES_QUEUE_TYPE(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i64 @amdgpu_bo_gpu_offset(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_QUEUE_SEL(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_VMID(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_QUEUE(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_PIPE(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_ME(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_QUEUE_TYPE(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_ALLOC_FORMAT(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_ENGINE_SEL(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_NUM_QUEUES(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_DOORBELL_OFFSET(i32) #1

declare dso_local i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
