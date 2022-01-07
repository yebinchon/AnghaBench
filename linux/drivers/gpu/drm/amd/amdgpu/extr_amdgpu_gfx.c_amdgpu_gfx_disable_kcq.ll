; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gfx.c_amdgpu_gfx_disable_kcq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gfx.c_amdgpu_gfx_disable_kcq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, %struct.amdgpu_kiq }
%struct.amdgpu_kiq = type { %struct.TYPE_3__*, %struct.amdgpu_ring }
%struct.TYPE_3__ = type { i32, i32 (%struct.amdgpu_ring*, i32*, i32, i32, i32)* }
%struct.amdgpu_ring = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RESET_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gfx_disable_kcq(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_kiq*, align 8
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store %struct.amdgpu_kiq* %9, %struct.amdgpu_kiq** %4, align 8
  %10 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %10, i32 0, i32 1
  store %struct.amdgpu_ring* %11, %struct.amdgpu_ring** %5, align 8
  %12 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32 (%struct.amdgpu_ring*, i32*, i32, i32, i32)*, i32 (%struct.amdgpu_ring*, i32*, i32, i32, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.amdgpu_ring*, i32*, i32, i32, i32)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16, %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %73

26:                                               ; preds = %16
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %28 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %4, align 8
  %29 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %32, %36
  %38 = call i64 @amdgpu_ring_alloc(%struct.amdgpu_ring* %27, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %73

43:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %67, %43
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %44
  %52 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %4, align 8
  %53 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32 (%struct.amdgpu_ring*, i32*, i32, i32, i32)*, i32 (%struct.amdgpu_ring*, i32*, i32, i32, i32)** %55, align 8
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* @RESET_QUEUES, align 4
  %66 = call i32 %56(%struct.amdgpu_ring* %57, i32* %64, i32 %65, i32 0, i32 0)
  br label %67

67:                                               ; preds = %51
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %44

70:                                               ; preds = %44
  %71 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %72 = call i32 @amdgpu_ring_test_ring(%struct.amdgpu_ring* %71)
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %70, %40, %23
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_test_ring(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
