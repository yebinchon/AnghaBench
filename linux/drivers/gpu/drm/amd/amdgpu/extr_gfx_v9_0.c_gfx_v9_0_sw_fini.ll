; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_sw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_sw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32*, i32*, %struct.ras_common_if* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ras_common_if = type { i32 }
%struct.ras_ih_if = type { %struct.ras_common_if }

@AMDGPU_RAS_BLOCK__GFX = common dso_local global i32 0, align 4
@CHIP_RAVEN = common dso_local global i64 0, align 8
@CHIP_RENOIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v9_0_sw_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_sw_fini(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.ras_common_if*, align 8
  %6 = alloca %struct.ras_ih_if, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %4, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = load i32, i32* @AMDGPU_RAS_BLOCK__GFX, align 4
  %11 = call i64 @amdgpu_ras_is_supported(%struct.amdgpu_device* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 6
  %17 = load %struct.ras_common_if*, %struct.ras_common_if** %16, align 8
  %18 = icmp ne %struct.ras_common_if* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 6
  %23 = load %struct.ras_common_if*, %struct.ras_common_if** %22, align 8
  store %struct.ras_common_if* %23, %struct.ras_common_if** %5, align 8
  %24 = getelementptr inbounds %struct.ras_ih_if, %struct.ras_ih_if* %6, i32 0, i32 0
  %25 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %26 = bitcast %struct.ras_common_if* %24 to i8*
  %27 = bitcast %struct.ras_common_if* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %29 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %30 = call i32 @amdgpu_ras_debugfs_remove(%struct.amdgpu_device* %28, %struct.ras_common_if* %29)
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %32 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %33 = call i32 @amdgpu_ras_sysfs_remove(%struct.amdgpu_device* %31, %struct.ras_common_if* %32)
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %35 = call i32 @amdgpu_ras_interrupt_remove_handler(%struct.amdgpu_device* %34, %struct.ras_ih_if* %6)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %37 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %38 = call i32 @amdgpu_ras_feature_enable(%struct.amdgpu_device* %36, %struct.ras_common_if* %37, i32 0)
  %39 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %40 = call i32 @kfree(%struct.ras_common_if* %39)
  br label %41

41:                                               ; preds = %19, %13, %1
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @amdgpu_ring_fini(i32* %56)
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %42

61:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %78, %61
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %62
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i32 @amdgpu_ring_fini(i32* %76)
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %62

81:                                               ; preds = %62
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %83 = call i32 @amdgpu_gfx_mqd_sw_fini(%struct.amdgpu_device* %82)
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 @amdgpu_gfx_kiq_free_ring(i32* %87, i32* %91)
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %94 = call i32 @amdgpu_gfx_kiq_fini(%struct.amdgpu_device* %93)
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %96 = call i32 @gfx_v9_0_mec_fini(%struct.amdgpu_device* %95)
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %98 = call i32 @gfx_v9_0_ngg_fini(%struct.amdgpu_device* %97)
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = call i32 @amdgpu_bo_unref(i32* %102)
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @CHIP_RAVEN, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %115, label %109

109:                                              ; preds = %81
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CHIP_RENOIR, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %109, %81
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %117 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %121 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = bitcast i32* %127 to i8**
  %129 = call i32 @amdgpu_bo_free_kernel(i32* %119, i32* %123, i8** %128)
  br label %130

130:                                              ; preds = %115, %109
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %132 = call i32 @gfx_v9_0_free_microcode(%struct.amdgpu_device* %131)
  ret i32 0
}

declare dso_local i64 @amdgpu_ras_is_supported(%struct.amdgpu_device*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @amdgpu_ras_debugfs_remove(%struct.amdgpu_device*, %struct.ras_common_if*) #1

declare dso_local i32 @amdgpu_ras_sysfs_remove(%struct.amdgpu_device*, %struct.ras_common_if*) #1

declare dso_local i32 @amdgpu_ras_interrupt_remove_handler(%struct.amdgpu_device*, %struct.ras_ih_if*) #1

declare dso_local i32 @amdgpu_ras_feature_enable(%struct.amdgpu_device*, %struct.ras_common_if*, i32) #1

declare dso_local i32 @kfree(%struct.ras_common_if*) #1

declare dso_local i32 @amdgpu_ring_fini(i32*) #1

declare dso_local i32 @amdgpu_gfx_mqd_sw_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_gfx_kiq_free_ring(i32*, i32*) #1

declare dso_local i32 @amdgpu_gfx_kiq_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_mec_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_ngg_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_bo_unref(i32*) #1

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i8**) #1

declare dso_local i32 @gfx_v9_0_free_microcode(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
