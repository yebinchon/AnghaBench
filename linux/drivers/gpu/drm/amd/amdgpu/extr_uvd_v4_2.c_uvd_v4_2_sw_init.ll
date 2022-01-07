; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v4_2.c_uvd_v4_2_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v4_2.c_uvd_v4_2_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.amdgpu_ring }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"uvd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uvd_v4_2_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v4_2_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %5, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %10 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %9, i32 %10, i32 124, i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %61

21:                                               ; preds = %1
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %23 = call i32 @amdgpu_uvd_sw_init(%struct.amdgpu_device* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %61

28:                                               ; preds = %21
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store %struct.amdgpu_ring* %33, %struct.amdgpu_ring** %4, align 8
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sprintf(i32 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %38, %struct.amdgpu_ring* %39, i32 512, i32* %44, i32 0)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %28
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %61

50:                                               ; preds = %28
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %52 = call i32 @amdgpu_uvd_resume(%struct.amdgpu_device* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %61

57:                                               ; preds = %50
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %59 = call i32 @amdgpu_uvd_entity_init(%struct.amdgpu_device* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %55, %48, %26, %19
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @amdgpu_uvd_sw_init(%struct.amdgpu_device*) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

declare dso_local i32 @amdgpu_uvd_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_uvd_entity_init(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
