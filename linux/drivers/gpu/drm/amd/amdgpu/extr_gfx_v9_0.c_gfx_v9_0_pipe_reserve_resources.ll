; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_pipe_reserve_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_pipe_reserve_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.amdgpu_ring*, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32 }

@AMDGPU_MAX_COMPUTE_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ring*, i32)* @gfx_v9_0_pipe_reserve_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_pipe_reserve_resources(%struct.amdgpu_device* %0, %struct.amdgpu_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_ring* %1, %struct.amdgpu_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @amdgpu_gfx_mec_queue_to_bit(%struct.amdgpu_device* %15, i32 %18, i32 %21, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @set_bit(i32 %26, i32 %30)
  br label %39

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clear_bit(i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %32, %25
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AMDGPU_MAX_COMPUTE_QUEUES, align 4
  %45 = call i32 @bitmap_weight(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %88, label %47

47:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %64, %47
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %59, i64 %61
  %63 = call i32 @gfx_v9_0_ring_set_pipe_percent(%struct.amdgpu_ring* %62, i32 1)
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %48

67:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %84, %67
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %68
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %79, i64 %81
  %83 = call i32 @gfx_v9_0_ring_set_pipe_percent(%struct.amdgpu_ring* %82, i32 1)
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %68

87:                                               ; preds = %68
  br label %161

88:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %121, %88
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %89
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 5
  %100 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %100, i64 %102
  store %struct.amdgpu_ring* %103, %struct.amdgpu_ring** %10, align 8
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %105 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %106 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %109 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @amdgpu_gfx_mec_queue_to_bit(%struct.amdgpu_device* %104, i32 %107, i32 %110, i32 0)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @test_bit(i32 %112, i32 %116)
  store i32 %117, i32* %9, align 4
  %118 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @gfx_v9_0_ring_set_pipe_percent(%struct.amdgpu_ring* %118, i32 %119)
  br label %121

121:                                              ; preds = %96
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %89

124:                                              ; preds = %89
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %157, %124
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %126, %130
  br i1 %131, label %132, label %160

132:                                              ; preds = %125
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %134 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 4
  %136 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %136, i64 %138
  store %struct.amdgpu_ring* %139, %struct.amdgpu_ring** %10, align 8
  %140 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %141 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %142 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %145 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @amdgpu_gfx_mec_queue_to_bit(%struct.amdgpu_device* %140, i32 %143, i32 %146, i32 0)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %150 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @test_bit(i32 %148, i32 %152)
  store i32 %153, i32* %9, align 4
  %154 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @gfx_v9_0_ring_set_pipe_percent(%struct.amdgpu_ring* %154, i32 %155)
  br label %157

157:                                              ; preds = %132
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %125

160:                                              ; preds = %125
  br label %161

161:                                              ; preds = %160, %87
  %162 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %163 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 2
  %165 = call i32 @mutex_unlock(i32* %164)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @amdgpu_gfx_mec_queue_to_bit(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @gfx_v9_0_ring_set_pipe_percent(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
