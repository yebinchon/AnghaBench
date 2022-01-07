; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_kiq_kcq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_kiq_kcq_enable.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v8_0_kiq_kcq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_kiq_kcq_enable(%struct.amdgpu_device* %0) #0 {
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
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37)
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
  %54 = mul nsw i32 8, %53
  %55 = add nsw i32 %54, 8
  %56 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %49, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %168

63:                                               ; preds = %48
  %64 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %65 = load i32, i32* @PACKET3_SET_RESOURCES, align 4
  %66 = call i32 @PACKET3(i32 %65, i32 6)
  %67 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %64, i32 %66)
  %68 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %69 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %68, i32 0)
  %70 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @lower_32_bits(i64 %71)
  %73 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %70, i32 %72)
  %74 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @upper_32_bits(i64 %75)
  %77 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %74, i32 %76)
  %78 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %79 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %78, i32 0)
  %80 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %81 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %80, i32 0)
  %82 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %83 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %82, i32 0)
  %84 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %85 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %84, i32 0)
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %162, %63
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %165

93:                                               ; preds = %86
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %97, i64 %99
  store %struct.amdgpu_ring* %100, %struct.amdgpu_ring** %8, align 8
  %101 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %102 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @amdgpu_bo_gpu_offset(i32 %103)
  store i64 %104, i64* %9, align 8
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %106 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %110 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %111, 4
  %113 = sext i32 %112 to i64
  %114 = add i64 %108, %113
  store i64 %114, i64* %10, align 8
  %115 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %116 = load i32, i32* @PACKET3_MAP_QUEUES, align 4
  %117 = call i32 @PACKET3(i32 %116, i32 5)
  %118 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %115, i32 %117)
  %119 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %120 = call i32 @PACKET3_MAP_QUEUES_NUM_QUEUES(i32 1)
  %121 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %119, i32 %120)
  %122 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %123 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %124 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @PACKET3_MAP_QUEUES_DOORBELL_OFFSET(i32 %125)
  %127 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %128 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @PACKET3_MAP_QUEUES_QUEUE(i32 %129)
  %131 = or i32 %126, %130
  %132 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %133 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @PACKET3_MAP_QUEUES_PIPE(i32 %134)
  %136 = or i32 %131, %135
  %137 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %138 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 1
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 0, i32 1
  %143 = call i32 @PACKET3_MAP_QUEUES_ME(i32 %142)
  %144 = or i32 %136, %143
  %145 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %122, i32 %144)
  %146 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %147 = load i64, i64* %9, align 8
  %148 = call i32 @lower_32_bits(i64 %147)
  %149 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %146, i32 %148)
  %150 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %151 = load i64, i64* %9, align 8
  %152 = call i32 @upper_32_bits(i64 %151)
  %153 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %150, i32 %152)
  %154 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %155 = load i64, i64* %10, align 8
  %156 = call i32 @lower_32_bits(i64 %155)
  %157 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %154, i32 %156)
  %158 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %159 = load i64, i64* %10, align 8
  %160 = call i32 @upper_32_bits(i64 %159)
  %161 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %158, i32 %160)
  br label %162

162:                                              ; preds = %93
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %86

165:                                              ; preds = %86
  %166 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %167 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %166)
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %165, %59
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i64 @amdgpu_bo_gpu_offset(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_NUM_QUEUES(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_DOORBELL_OFFSET(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_QUEUE(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_PIPE(i32) #1

declare dso_local i32 @PACKET3_MAP_QUEUES_ME(i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
