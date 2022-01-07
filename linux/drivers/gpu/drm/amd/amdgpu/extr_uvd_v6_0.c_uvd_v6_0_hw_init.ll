; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v6_0.c_uvd_v6_0_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_ring*, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32 }

@AMD_CG_STATE_UNGATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"amdgpu: ring failed to lock UVD ring (%d).\0A\00", align 1
@mmUVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL = common dso_local global i32 0, align 4
@mmUVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL = common dso_local global i32 0, align 4
@mmUVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL = common dso_local global i32 0, align 4
@mmUVD_SEMA_TIMEOUT_STATUS = common dso_local global i32 0, align 4
@mmUVD_SEMA_CNTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"UVD and UVD ENC initialized successfully.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"UVD initialized successfully.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uvd_v6_0_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v6_0_hw_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %3, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store %struct.amdgpu_ring* %14, %struct.amdgpu_ring** %4, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = call i32 @amdgpu_asic_set_uvd_clocks(%struct.amdgpu_device* %15, i32 10000, i32 10000)
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = load i32, i32* @AMD_CG_STATE_UNGATE, align 4
  %19 = call i32 @uvd_v6_0_set_clockgating_state(%struct.amdgpu_device* %17, i32 %18)
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = call i32 @uvd_v6_0_enable_mgcg(%struct.amdgpu_device* %20, i32 1)
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %23 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %103

27:                                               ; preds = %1
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %29 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %28, i32 10)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %103

35:                                               ; preds = %27
  %36 = load i32, i32* @mmUVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL, align 4
  %37 = call i32 @PACKET0(i32 %36, i32 0)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %38, i32 %39)
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %42 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %41, i32 1048575)
  %43 = load i32, i32* @mmUVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL, align 4
  %44 = call i32 @PACKET0(i32 %43, i32 0)
  store i32 %44, i32* %5, align 4
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %45, i32 %46)
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %49 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %48, i32 1048575)
  %50 = load i32, i32* @mmUVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL, align 4
  %51 = call i32 @PACKET0(i32 %50, i32 0)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %52, i32 %53)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %56 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %55, i32 1048575)
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %58 = load i32, i32* @mmUVD_SEMA_TIMEOUT_STATUS, align 4
  %59 = call i32 @PACKET0(i32 %58, i32 0)
  %60 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %57, i32 %59)
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %62 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %61, i32 8)
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %64 = load i32, i32* @mmUVD_SEMA_CNTL, align 4
  %65 = call i32 @PACKET0(i32 %64, i32 0)
  %66 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %63, i32 %65)
  %67 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %68 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %67, i32 3)
  %69 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %70 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %69)
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %72 = call i64 @uvd_v6_0_enc_support(%struct.amdgpu_device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %98, %74
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %75
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %88, i64 %90
  store %struct.amdgpu_ring* %91, %struct.amdgpu_ring** %4, align 8
  %92 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %93 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  br label %103

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %75

101:                                              ; preds = %75
  br label %102

102:                                              ; preds = %101, %35
  br label %103

103:                                              ; preds = %102, %96, %32, %26
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %103
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %108 = call i64 @uvd_v6_0_enc_support(%struct.amdgpu_device* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = call i32 @DRM_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %114

112:                                              ; preds = %106
  %113 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %110
  br label %115

115:                                              ; preds = %114, %103
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @amdgpu_asic_set_uvd_clocks(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @uvd_v6_0_set_clockgating_state(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @uvd_v6_0_enable_mgcg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i64 @uvd_v6_0_enc_support(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
