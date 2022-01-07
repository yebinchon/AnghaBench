; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v5_0.c_uvd_v5_0_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v5_0.c_uvd_v5_0_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32 }

@AMD_CG_STATE_UNGATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"amdgpu: ring failed to lock UVD ring (%d).\0A\00", align 1
@mmUVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL = common dso_local global i32 0, align 4
@mmUVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL = common dso_local global i32 0, align 4
@mmUVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL = common dso_local global i32 0, align 4
@mmUVD_SEMA_TIMEOUT_STATUS = common dso_local global i32 0, align 4
@mmUVD_SEMA_CNTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"UVD initialized successfully.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uvd_v5_0_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v5_0_hw_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.amdgpu_ring* %13, %struct.amdgpu_ring** %4, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = call i32 @amdgpu_asic_set_uvd_clocks(%struct.amdgpu_device* %14, i32 10000, i32 10000)
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = load i32, i32* @AMD_CG_STATE_UNGATE, align 4
  %18 = call i32 @uvd_v5_0_set_clockgating_state(%struct.amdgpu_device* %16, i32 %17)
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = call i32 @uvd_v5_0_enable_mgcg(%struct.amdgpu_device* %19, i32 1)
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %22 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %70

26:                                               ; preds = %1
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %28 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %27, i32 10)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %70

34:                                               ; preds = %26
  %35 = load i32, i32* @mmUVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL, align 4
  %36 = call i32 @PACKET0(i32 %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %37, i32 %38)
  %40 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %41 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %40, i32 1048575)
  %42 = load i32, i32* @mmUVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL, align 4
  %43 = call i32 @PACKET0(i32 %42, i32 0)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %44, i32 %45)
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %48 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %47, i32 1048575)
  %49 = load i32, i32* @mmUVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL, align 4
  %50 = call i32 @PACKET0(i32 %49, i32 0)
  store i32 %50, i32* %5, align 4
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %51, i32 %52)
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %55 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %54, i32 1048575)
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %57 = load i32, i32* @mmUVD_SEMA_TIMEOUT_STATUS, align 4
  %58 = call i32 @PACKET0(i32 %57, i32 0)
  %59 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %56, i32 %58)
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %61 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %60, i32 8)
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %63 = load i32, i32* @mmUVD_SEMA_CNTL, align 4
  %64 = call i32 @PACKET0(i32 %63, i32 0)
  %65 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %62, i32 %64)
  %66 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %67 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %66, i32 3)
  %68 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %69 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %68)
  br label %70

70:                                               ; preds = %34, %31, %25
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @amdgpu_asic_set_uvd_clocks(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @uvd_v5_0_set_clockgating_state(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @uvd_v5_0_enable_mgcg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
