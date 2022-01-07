; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v1_0.c_uvd_v1_0_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_uvd_v1_0.c_uvd_v1_0_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }

@R600_RING_TYPE_UVD_INDEX = common dso_local global i64 0, align 8
@CHIP_RV740 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"radeon: ring failed to lock UVD ring (%d).\0A\00", align 1
@UVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL = common dso_local global i32 0, align 4
@UVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL = common dso_local global i32 0, align 4
@UVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL = common dso_local global i32 0, align 4
@UVD_SEMA_TIMEOUT_STATUS = common dso_local global i32 0, align 4
@UVD_SEMA_CNTL = common dso_local global i32 0, align 4
@MC_CONFIG = common dso_local global i32 0, align 4
@RS_DQ_RD_RET_CONF = common dso_local global i32 0, align 4
@UVD_VCPU_CNTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"UVD initialized successfully.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvd_v1_0_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.radeon_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 1
  %8 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %9 = load i64, i64* @R600_RING_TYPE_UVD_INDEX, align 8
  %10 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %8, i64 %9
  store %struct.radeon_ring* %10, %struct.radeon_ring** %3, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CHIP_RV740, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = call i32 @radeon_set_uvd_clocks(%struct.radeon_device* %17, i32 10000, i32 10000)
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = call i32 @radeon_set_uvd_clocks(%struct.radeon_device* %20, i32 53300, i32 40000)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %24 = call i32 @uvd_v1_0_start(%struct.radeon_device* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %86

28:                                               ; preds = %22
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %30 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = load i64, i64* @R600_RING_TYPE_UVD_INDEX, align 8
  %33 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %34 = call i32 @radeon_ring_test(%struct.radeon_device* %31, i64 %32, %struct.radeon_ring* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  br label %86

40:                                               ; preds = %28
  %41 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %43 = call i32 @radeon_ring_lock(%struct.radeon_device* %41, %struct.radeon_ring* %42, i32 10)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %86

49:                                               ; preds = %40
  %50 = load i32, i32* @UVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL, align 4
  %51 = call i32 @PACKET0(i32 %50, i32 0)
  store i32 %51, i32* %4, align 4
  %52 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @radeon_ring_write(%struct.radeon_ring* %52, i32 %53)
  %55 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %56 = call i32 @radeon_ring_write(%struct.radeon_ring* %55, i32 1048575)
  %57 = load i32, i32* @UVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL, align 4
  %58 = call i32 @PACKET0(i32 %57, i32 0)
  store i32 %58, i32* %4, align 4
  %59 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @radeon_ring_write(%struct.radeon_ring* %59, i32 %60)
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %63 = call i32 @radeon_ring_write(%struct.radeon_ring* %62, i32 1048575)
  %64 = load i32, i32* @UVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL, align 4
  %65 = call i32 @PACKET0(i32 %64, i32 0)
  store i32 %65, i32* %4, align 4
  %66 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @radeon_ring_write(%struct.radeon_ring* %66, i32 %67)
  %69 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %70 = call i32 @radeon_ring_write(%struct.radeon_ring* %69, i32 1048575)
  %71 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %72 = load i32, i32* @UVD_SEMA_TIMEOUT_STATUS, align 4
  %73 = call i32 @PACKET0(i32 %72, i32 0)
  %74 = call i32 @radeon_ring_write(%struct.radeon_ring* %71, i32 %73)
  %75 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %76 = call i32 @radeon_ring_write(%struct.radeon_ring* %75, i32 8)
  %77 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %78 = load i32, i32* @UVD_SEMA_CNTL, align 4
  %79 = call i32 @PACKET0(i32 %78, i32 0)
  %80 = call i32 @radeon_ring_write(%struct.radeon_ring* %77, i32 %79)
  %81 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %82 = call i32 @radeon_ring_write(%struct.radeon_ring* %81, i32 3)
  %83 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %84 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %85 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %83, %struct.radeon_ring* %84, i32 0)
  br label %86

86:                                               ; preds = %49, %46, %37, %27
  %87 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %88 = call i32 @radeon_set_uvd_clocks(%struct.radeon_device* %87, i32 0, i32 0)
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %86
  %92 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %107 [
    i32 132, label %95
    i32 130, label %95
    i32 131, label %95
    i32 128, label %104
    i32 129, label %104
  ]

95:                                               ; preds = %91, %91, %91
  %96 = load i32, i32* @MC_CONFIG, align 4
  %97 = call i32 @WREG32(i32 %96, i32 0)
  %98 = load i32, i32* @MC_CONFIG, align 4
  %99 = call i32 @WREG32(i32 %98, i32 16)
  %100 = load i32, i32* @RS_DQ_RD_RET_CONF, align 4
  %101 = call i32 @WREG32(i32 %100, i32 63)
  %102 = load i32, i32* @MC_CONFIG, align 4
  %103 = call i32 @WREG32(i32 %102, i32 31)
  br label %104

104:                                              ; preds = %91, %91, %95
  %105 = load i32, i32* @UVD_VCPU_CNTL, align 4
  %106 = call i32 @WREG32_P(i32 %105, i32 16, i32 -17)
  br label %108

107:                                              ; preds = %91
  br label %108

108:                                              ; preds = %107, %104
  %109 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %86
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @radeon_set_uvd_clocks(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @uvd_v1_0_start(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_test(%struct.radeon_device*, i64, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
