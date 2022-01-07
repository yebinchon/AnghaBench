; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v2_0.c_vce_v2_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v2_0.c_vce_v2_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.amdgpu_ring* }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@VCE_V2_0_FW_SIZE = common dso_local global i64 0, align 8
@VCE_V2_0_STACK_SIZE = common dso_local global i64 0, align 8
@VCE_V2_0_DATA_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"vce%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vce_v2_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v2_0_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %7, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %11 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %10, i32 %11, i32 167, i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %78

20:                                               ; preds = %1
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %22 = load i64, i64* @VCE_V2_0_FW_SIZE, align 8
  %23 = load i64, i64* @VCE_V2_0_STACK_SIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @VCE_V2_0_DATA_SIZE, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @amdgpu_vce_sw_init(%struct.amdgpu_device* %21, i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %78

32:                                               ; preds = %20
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %34 = call i32 @amdgpu_vce_resume(%struct.amdgpu_device* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %78

39:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %71, %39
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %40
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %51, i64 %53
  store %struct.amdgpu_ring* %54, %struct.amdgpu_ring** %4, align 8
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %56 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @sprintf(i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %60, %struct.amdgpu_ring* %61, i32 512, i32* %64, i32 0)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %47
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %78

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %40

74:                                               ; preds = %40
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %76 = call i32 @amdgpu_vce_entity_init(%struct.amdgpu_device* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %68, %37, %30, %18
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @amdgpu_vce_sw_init(%struct.amdgpu_device*, i64) #1

declare dso_local i32 @amdgpu_vce_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

declare dso_local i32 @amdgpu_vce_entity_init(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
