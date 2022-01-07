; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_sw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_sw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i64, %struct.ras_common_if* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ras_common_if = type { i32 }
%struct.ras_ih_if = type { %struct.ras_common_if }

@AMDGPU_RAS_BLOCK__SDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sdma_v4_0_sw_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v4_0_sw_fini(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ras_common_if*, align 8
  %6 = alloca %struct.ras_ih_if, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = load i32, i32* @AMDGPU_RAS_BLOCK__SDMA, align 4
  %11 = call i64 @amdgpu_ras_is_supported(%struct.amdgpu_device* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load %struct.ras_common_if*, %struct.ras_common_if** %16, align 8
  %18 = icmp ne %struct.ras_common_if* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load %struct.ras_common_if*, %struct.ras_common_if** %22, align 8
  store %struct.ras_common_if* %23, %struct.ras_common_if** %5, align 8
  %24 = getelementptr inbounds %struct.ras_ih_if, %struct.ras_ih_if* %6, i32 0, i32 0
  %25 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %26 = bitcast %struct.ras_common_if* %24 to i8*
  %27 = bitcast %struct.ras_common_if* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %29 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %30 = call i32 @amdgpu_ras_debugfs_remove(%struct.amdgpu_device* %28, %struct.ras_common_if* %29)
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %33 = call i32 @amdgpu_ras_sysfs_remove(%struct.amdgpu_device* %31, %struct.ras_common_if* %32)
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = call i32 @amdgpu_ras_interrupt_remove_handler(%struct.amdgpu_device* %34, %struct.ras_ih_if* %6)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %37 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %38 = call i32 @amdgpu_ras_feature_enable(%struct.amdgpu_device* %36, %struct.ras_common_if* %37, i32 0)
  %39 = load %struct.ras_common_if*, %struct.ras_common_if** %5, align 8
  %40 = call i32 @kfree(%struct.ras_common_if* %39)
  br label %41

41:                                               ; preds = %19, %13, %1
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %75, %41
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %42
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = call i32 @amdgpu_ring_fini(i32* %57)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %49
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = call i32 @amdgpu_ring_fini(i32* %72)
  br label %74

74:                                               ; preds = %64, %49
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %42

78:                                               ; preds = %42
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %80 = call i32 @sdma_v4_0_destroy_inst_ctx(%struct.amdgpu_device* %79)
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

declare dso_local i32 @sdma_v4_0_destroy_inst_ctx(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
