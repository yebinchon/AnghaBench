; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_flush_gpu_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v9_0.c_gmc_v9_0_flush_gpu_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i64, %struct.TYPE_10__, i32, %struct.TYPE_9__, %struct.amdgpu_vmhub* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.amdgpu_vmhub = type { i64, i64 }

@AMDGPU_GFXHUB_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Timeout waiting for VM flush ACK!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i64, i64, i64)* @gmc_v9_0_flush_gpu_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v9_0_flush_gpu_tlb(%struct.amdgpu_device* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.amdgpu_vmhub*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 17, i32* %9, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 5
  %24 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %24, i64 %25
  store %struct.amdgpu_vmhub* %26, %struct.amdgpu_vmhub** %12, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @gmc_v9_0_get_invalidate_req(i64 %27, i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %4
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %40 = call i64 @amdgpu_sriov_runtime(%struct.amdgpu_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %44 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %46
  %52 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %12, align 8
  %53 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 17
  store i64 %55, i64* %13, align 8
  %56 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %12, align 8
  %57 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 17
  store i64 %59, i64* %14, align 8
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %6, align 8
  %65 = trunc i64 %64 to i32
  %66 = shl i32 1, %65
  %67 = call i32 @amdgpu_virt_kiq_reg_write_reg_wait(%struct.amdgpu_device* %60, i64 %61, i64 %62, i64 %63, i32 %66)
  br label %127

68:                                               ; preds = %46, %42, %4
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = call i32 @spin_lock(i32* %71)
  %73 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %12, align 8
  %74 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 17
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @WREG32_NO_KIQ(i64 %76, i64 %77)
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @AMDGPU_GFXHUB_0, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %68
  %83 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %12, align 8
  %84 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 17
  %87 = call i64 @RREG32_NO_KIQ(i64 %86)
  br label %88

88:                                               ; preds = %82, %68
  store i64 0, i64* %10, align 8
  br label %89

89:                                               ; preds = %111, %88
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %89
  %96 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %12, align 8
  %97 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 17
  %100 = call i64 @RREG32_NO_KIQ(i64 %99)
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %6, align 8
  %103 = trunc i64 %102 to i32
  %104 = shl i32 1, %103
  %105 = sext i32 %104 to i64
  %106 = and i64 %101, %105
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %114

109:                                              ; preds = %95
  %110 = call i32 @udelay(i32 1)
  br label %111

111:                                              ; preds = %109
  %112 = load i64, i64* %10, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %10, align 8
  br label %89

114:                                              ; preds = %108, %89
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %116 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock(i32* %117)
  %119 = load i64, i64* %10, align 8
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %121 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp slt i64 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  br label %127

125:                                              ; preds = %114
  %126 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %124, %51
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @gmc_v9_0_get_invalidate_req(i64, i64) #1

declare dso_local i64 @amdgpu_sriov_runtime(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_virt_kiq_reg_write_reg_wait(%struct.amdgpu_device*, i64, i64, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WREG32_NO_KIQ(i64, i64) #1

declare dso_local i64 @RREG32_NO_KIQ(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
