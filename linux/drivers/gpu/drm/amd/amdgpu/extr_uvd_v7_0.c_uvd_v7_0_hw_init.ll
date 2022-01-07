; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.amdgpu_ring*, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"amdgpu: (%d)ring failed to lock UVD ring (%d).\0A\00", align 1
@UVD = common dso_local global i32 0, align 4
@mmUVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL = common dso_local global i32 0, align 4
@mmUVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL = common dso_local global i32 0, align 4
@mmUVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL = common dso_local global i32 0, align 4
@mmUVD_SEMA_TIMEOUT_STATUS = common dso_local global i32 0, align 4
@mmUVD_SEMA_CNTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"UVD and UVD ENC initialized successfully.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uvd_v7_0_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v7_0_hw_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %3, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = call i32 @uvd_v7_0_sriov_start(%struct.amdgpu_device* %15)
  store i32 %16, i32* %8, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = call i32 @uvd_v7_0_start(%struct.amdgpu_device* %18)
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %155

24:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %151, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %154

32:                                               ; preds = %25
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %151

42:                                               ; preds = %32
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store %struct.amdgpu_ring* %50, %struct.amdgpu_ring** %4, align 8
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %120, label %54

54:                                               ; preds = %42
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %56 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %155

60:                                               ; preds = %54
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %62 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %61, i32 10)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  br label %155

69:                                               ; preds = %60
  %70 = load i32, i32* @UVD, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @mmUVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL, align 4
  %73 = call i32 @SOC15_REG_OFFSET(i32 %70, i32 %71, i32 %72)
  %74 = call i32 @PACKET0(i32 %73, i32 0)
  store i32 %74, i32* %5, align 4
  %75 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %75, i32 %76)
  %78 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %79 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %78, i32 1048575)
  %80 = load i32, i32* @UVD, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @mmUVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL, align 4
  %83 = call i32 @SOC15_REG_OFFSET(i32 %80, i32 %81, i32 %82)
  %84 = call i32 @PACKET0(i32 %83, i32 0)
  store i32 %84, i32* %5, align 4
  %85 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %85, i32 %86)
  %88 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %89 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %88, i32 1048575)
  %90 = load i32, i32* @UVD, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @mmUVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL, align 4
  %93 = call i32 @SOC15_REG_OFFSET(i32 %90, i32 %91, i32 %92)
  %94 = call i32 @PACKET0(i32 %93, i32 0)
  store i32 %94, i32* %5, align 4
  %95 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %95, i32 %96)
  %98 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %99 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %98, i32 1048575)
  %100 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %101 = load i32, i32* @UVD, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @mmUVD_SEMA_TIMEOUT_STATUS, align 4
  %104 = call i32 @SOC15_REG_OFFSET(i32 %101, i32 %102, i32 %103)
  %105 = call i32 @PACKET0(i32 %104, i32 0)
  %106 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %100, i32 %105)
  %107 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %108 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %107, i32 8)
  %109 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %110 = load i32, i32* @UVD, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @mmUVD_SEMA_CNTL, align 4
  %113 = call i32 @SOC15_REG_OFFSET(i32 %110, i32 %111, i32 %112)
  %114 = call i32 @PACKET0(i32 %113, i32 0)
  %115 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %109, i32 %114)
  %116 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %117 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %116, i32 3)
  %118 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %119 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %118)
  br label %120

120:                                              ; preds = %69, %42
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %147, %120
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %122, %126
  br i1 %127, label %128, label %150

128:                                              ; preds = %121
  %129 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %130 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %137, i64 %139
  store %struct.amdgpu_ring* %140, %struct.amdgpu_ring** %4, align 8
  %141 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %142 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %128
  br label %155

146:                                              ; preds = %128
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %121

150:                                              ; preds = %121
  br label %151

151:                                              ; preds = %150, %41
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %25

154:                                              ; preds = %25
  br label %155

155:                                              ; preds = %154, %145, %65, %59, %23
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = call i32 @DRM_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %155
  %161 = load i32, i32* %8, align 4
  ret i32 %161
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @uvd_v7_0_sriov_start(%struct.amdgpu_device*) #1

declare dso_local i32 @uvd_v7_0_start(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
