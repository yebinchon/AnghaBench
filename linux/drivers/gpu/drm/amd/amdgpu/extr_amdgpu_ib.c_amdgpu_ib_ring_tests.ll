; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ib.c_amdgpu_ib_ring_tests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ib.c_amdgpu_ib_ring_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_10__, i32, %struct.amdgpu_ring**, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@AMDGPU_IB_TEST_TIMEOUT = common dso_local global i32 0, align 4
@AMDGPU_IB_TEST_GFX_XGMI_TIMEOUT = common dso_local global i64 0, align 8
@AMDGPU_RING_TYPE_UVD = common dso_local global i64 0, align 8
@AMDGPU_RING_TYPE_VCE = common dso_local global i64 0, align 8
@AMDGPU_RING_TYPE_UVD_ENC = common dso_local global i64 0, align 8
@AMDGPU_RING_TYPE_VCN_DEC = common dso_local global i64 0, align 8
@AMDGPU_RING_TYPE_VCN_ENC = common dso_local global i64 0, align 8
@AMDGPU_RING_TYPE_VCN_JPEG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"ib test on %s succeeded\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"IB test failed on %s (%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ib_ring_tests(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.amdgpu_ring*, align 8
  %10 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @AMDGPU_IB_TEST_TIMEOUT, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %7, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @AMDGPU_IB_TEST_TIMEOUT, align 4
  %18 = mul nsw i32 8, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = call i64 @amdgpu_sriov_runtime(%struct.amdgpu_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @AMDGPU_IB_TEST_TIMEOUT, align 4
  %26 = mul nsw i32 8, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %7, align 8
  br label %38

28:                                               ; preds = %20
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i64, i64* @AMDGPU_IB_TEST_GFX_XGMI_TIMEOUT, align 8
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %35, %28
  br label %38

38:                                               ; preds = %37, %24
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %158, %38
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %161

45:                                               ; preds = %39
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 4
  %48 = load %struct.amdgpu_ring**, %struct.amdgpu_ring*** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %48, i64 %50
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %51, align 8
  store %struct.amdgpu_ring* %52, %struct.amdgpu_ring** %9, align 8
  %53 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %45
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %60 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58, %45
  br label %158

66:                                               ; preds = %58
  %67 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %68 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %67, i32 0, i32 2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AMDGPU_RING_TYPE_UVD, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %114, label %74

74:                                               ; preds = %66
  %75 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %76 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %75, i32 0, i32 2
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AMDGPU_RING_TYPE_VCE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %114, label %82

82:                                               ; preds = %74
  %83 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %83, i32 0, i32 2
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AMDGPU_RING_TYPE_UVD_ENC, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %114, label %90

90:                                               ; preds = %82
  %91 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %92 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %91, i32 0, i32 2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @AMDGPU_RING_TYPE_VCN_DEC, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %114, label %98

98:                                               ; preds = %90
  %99 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %100 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %99, i32 0, i32 2
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AMDGPU_RING_TYPE_VCN_ENC, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %114, label %106

106:                                              ; preds = %98
  %107 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %108 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %107, i32 0, i32 2
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @AMDGPU_RING_TYPE_VCN_JPEG, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %106, %98, %90, %82, %74, %66
  %115 = load i64, i64* %8, align 8
  store i64 %115, i64* %10, align 8
  br label %118

116:                                              ; preds = %106
  %117 = load i64, i64* %7, align 8
  store i64 %117, i64* %10, align 8
  br label %118

118:                                              ; preds = %116, %114
  %119 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @amdgpu_ring_test_ib(%struct.amdgpu_ring* %119, i64 %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %118
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %126 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %129 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @DRM_DEV_DEBUG(i32 %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %130)
  br label %158

132:                                              ; preds = %118
  %133 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %134 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  store i32 0, i32* %135, align 4
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %140 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @DRM_DEV_ERROR(i32 %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %141, i32 %142)
  %144 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %146 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %147, align 8
  %149 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %148, i64 0
  %150 = icmp eq %struct.amdgpu_ring* %144, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %132
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %153 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %152, i32 0, i32 1
  store i32 0, i32* %153, align 4
  %154 = load i32, i32* %5, align 4
  store i32 %154, i32* %2, align 4
  br label %163

155:                                              ; preds = %132
  %156 = load i32, i32* %5, align 4
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %157, %124, %65
  %159 = load i32, i32* %4, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %4, align 4
  br label %39

161:                                              ; preds = %39
  %162 = load i32, i32* %6, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %161, %151
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_sriov_runtime(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ring_test_ib(%struct.amdgpu_ring*, i64) #1

declare dso_local i32 @DRM_DEV_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
