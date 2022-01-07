; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.amdgpu_ring, %struct.amdgpu_ring*, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.amdgpu_device*, i32, i32, i32)* }

@.str = private unnamed_addr constant [59 x i8] c"VCN decode and encode initialized successfully(under %s).\0A\00", align 1
@AMD_PG_SUPPORT_VCN_DPG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"DPG Mode\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"SPG Mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vcn_v2_0_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcn_v2_0_hw_init(i8* %0) #0 {
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
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store %struct.amdgpu_ring* %13, %struct.amdgpu_ring** %4, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32 (%struct.amdgpu_device*, i32, i32, i32)*, i32 (%struct.amdgpu_device*, i32, i32, i32)** %17, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 %18(%struct.amdgpu_device* %19, i32 %22, i32 %25, i32 0)
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %31 = call i32 @amdgpu_ring_test_ring(%struct.amdgpu_ring* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %36 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  br label %89

38:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %68, %38
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %39
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %52, i64 %54
  store %struct.amdgpu_ring* %55, %struct.amdgpu_ring** %4, align 8
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %57 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %60 = call i32 @amdgpu_ring_test_ring(%struct.amdgpu_ring* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %46
  %64 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %65 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  br label %89

67:                                               ; preds = %46
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %39

71:                                               ; preds = %39
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store %struct.amdgpu_ring* %76, %struct.amdgpu_ring** %4, align 8
  %77 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %78 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %81 = call i32 @amdgpu_ring_test_ring(%struct.amdgpu_ring* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %71
  %85 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %86 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 4
  br label %89

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88, %84, %63, %34
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @AMD_PG_SUPPORT_VCN_DPG, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %101 = call i32 @DRM_INFO(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %92, %89
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @amdgpu_ring_test_ring(%struct.amdgpu_ring*) #1

declare dso_local i32 @DRM_INFO(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
