; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gfx.c_amdgpu_gfx_kiq_init_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gfx.c_amdgpu_gfx_kiq_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.amdgpu_kiq }
%struct.amdgpu_kiq = type { i32, i32 }
%struct.amdgpu_ring = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.amdgpu_irq_src = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"kiq_%d.%d.%d\00", align 1
@AMDGPU_CP_KIQ_IRQ_DRIVER0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"(%d) failed to init kiq ring\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gfx_kiq_init_ring(%struct.amdgpu_device* %0, %struct.amdgpu_ring* %1, %struct.amdgpu_irq_src* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_ring*, align 8
  %7 = alloca %struct.amdgpu_irq_src*, align 8
  %8 = alloca %struct.amdgpu_kiq*, align 8
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_ring* %1, %struct.amdgpu_ring** %6, align 8
  store %struct.amdgpu_irq_src* %2, %struct.amdgpu_irq_src** %7, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.amdgpu_kiq* %12, %struct.amdgpu_kiq** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %8, align 8
  %14 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call i32 @amdgpu_device_wb_get(%struct.amdgpu_device* %16, i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %79

25:                                               ; preds = %3
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %26, i32 0, i32 8
  store i32* null, i32** %27, align 8
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %28, i32 0, i32 7
  store i32* null, i32** %29, align 8
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %37 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %40 = call i32 @amdgpu_gfx_kiq_acquire(%struct.amdgpu_device* %38, %struct.amdgpu_ring* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %25
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %79

45:                                               ; preds = %25
  %46 = load %struct.amdgpu_kiq*, %struct.amdgpu_kiq** %8, align 8
  %47 = getelementptr inbounds %struct.amdgpu_kiq, %struct.amdgpu_kiq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %50 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %61 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @sprintf(i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59, i32 %62)
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %65 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %66 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %7, align 8
  %67 = load i32, i32* @AMDGPU_CP_KIQ_IRQ_DRIVER0, align 4
  %68 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %64, %struct.amdgpu_ring* %65, i32 1024, %struct.amdgpu_irq_src* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %45
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @dev_warn(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %45
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %43, %23
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @amdgpu_device_wb_get(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @amdgpu_gfx_kiq_acquire(%struct.amdgpu_device*, %struct.amdgpu_ring*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, %struct.amdgpu_irq_src*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
