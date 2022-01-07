; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v3_0.c_vce_v3_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32 }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_VCE_TRAP = common dso_local global i32 0, align 4
@VCE_V3_0_FW_SIZE = common dso_local global i64 0, align 8
@VCE_V3_0_STACK_SIZE = common dso_local global i32 0, align 4
@VCE_V3_0_DATA_SIZE = common dso_local global i32 0, align 4
@FW_52_8_3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"vce%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vce_v3_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v3_0_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %4, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %11 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %12 = load i32, i32* @VISLANDS30_IV_SRCID_VCE_TRAP, align 4
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %10, i32 %11, i32 %12, i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %92

21:                                               ; preds = %1
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %23 = load i64, i64* @VCE_V3_0_FW_SIZE, align 8
  %24 = load i32, i32* @VCE_V3_0_STACK_SIZE, align 4
  %25 = load i32, i32* @VCE_V3_0_DATA_SIZE, align 4
  %26 = add nsw i32 %24, %25
  %27 = mul nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %23, %28
  %30 = call i32 @amdgpu_vce_sw_init(%struct.amdgpu_device* %22, i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %92

35:                                               ; preds = %21
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FW_52_8_3, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 2, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %48 = call i32 @amdgpu_vce_resume(%struct.amdgpu_device* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %92

53:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %85, %53
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %54
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %65, i64 %67
  store %struct.amdgpu_ring* %68, %struct.amdgpu_ring** %5, align 8
  %69 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %70 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @sprintf(i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %75 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %74, %struct.amdgpu_ring* %75, i32 512, i32* %78, i32 0)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %61
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %92

84:                                               ; preds = %61
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %54

88:                                               ; preds = %54
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %90 = call i32 @amdgpu_vce_entity_init(%struct.amdgpu_device* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %82, %51, %33, %19
  %93 = load i32, i32* %2, align 4
  ret i32 %93
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
