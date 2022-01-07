; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v4_2.c_uvd_v4_2_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v4_2.c_uvd_v4_2_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"amdgpu: ring failed to lock UVD ring (%d).\0A\00", align 1
@mmUVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL = common dso_local global i32 0, align 4
@mmUVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL = common dso_local global i32 0, align 4
@mmUVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL = common dso_local global i32 0, align 4
@mmUVD_SEMA_TIMEOUT_STATUS = common dso_local global i32 0, align 4
@mmUVD_SEMA_CNTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"UVD initialized successfully.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uvd_v4_2_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v4_2_hw_init(i8* %0) #0 {
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
  %15 = call i32 @uvd_v4_2_enable_mgcg(%struct.amdgpu_device* %14, i32 1)
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = call i32 @amdgpu_asic_set_uvd_clocks(%struct.amdgpu_device* %16, i32 10000, i32 10000)
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %19 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %67

23:                                               ; preds = %1
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %25 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %24, i32 10)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %67

31:                                               ; preds = %23
  %32 = load i32, i32* @mmUVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL, align 4
  %33 = call i32 @PACKET0(i32 %32, i32 0)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %34, i32 %35)
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %38 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %37, i32 1048575)
  %39 = load i32, i32* @mmUVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL, align 4
  %40 = call i32 @PACKET0(i32 %39, i32 0)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %41, i32 %42)
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %45 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %44, i32 1048575)
  %46 = load i32, i32* @mmUVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL, align 4
  %47 = call i32 @PACKET0(i32 %46, i32 0)
  store i32 %47, i32* %5, align 4
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %48, i32 %49)
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %52 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %51, i32 1048575)
  %53 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %54 = load i32, i32* @mmUVD_SEMA_TIMEOUT_STATUS, align 4
  %55 = call i32 @PACKET0(i32 %54, i32 0)
  %56 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %53, i32 %55)
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %58 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %57, i32 8)
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %60 = load i32, i32* @mmUVD_SEMA_CNTL, align 4
  %61 = call i32 @PACKET0(i32 %60, i32 0)
  %62 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %59, i32 %61)
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %64 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %63, i32 3)
  %65 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %66 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %65)
  br label %67

67:                                               ; preds = %31, %28, %22
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @uvd_v4_2_enable_mgcg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_asic_set_uvd_clocks(%struct.amdgpu_device*, i32, i32) #1

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
