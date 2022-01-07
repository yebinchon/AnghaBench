; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_discovery.c_amdgpu_discovery_get_ip_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_discovery.c_amdgpu_discovery_get_ip_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.binary_header = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ip_discovery_header = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.die_header = type { i32 }
%struct.ip = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"ip discovery uninitialized\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IP_DISCOVERY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_discovery_get_ip_version(%struct.amdgpu_device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.binary_header*, align 8
  %11 = alloca %struct.ip_discovery_header*, align 8
  %12 = alloca %struct.die_header*, align 8
  %13 = alloca %struct.ip*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %138

28:                                               ; preds = %4
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.binary_header*
  store %struct.binary_header* %33, %struct.binary_header** %10, align 8
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.binary_header*, %struct.binary_header** %10, align 8
  %38 = getelementptr inbounds %struct.binary_header, %struct.binary_header* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i64, i64* @IP_DISCOVERY, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  %45 = add nsw i32 %36, %44
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to %struct.ip_discovery_header*
  store %struct.ip_discovery_header* %47, %struct.ip_discovery_header** %11, align 8
  %48 = load %struct.ip_discovery_header*, %struct.ip_discovery_header** %11, align 8
  %49 = getelementptr inbounds %struct.ip_discovery_header, %struct.ip_discovery_header* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @le16_to_cpu(i32 %50)
  store i32 %51, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %52

52:                                               ; preds = %132, %28
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %135

56:                                               ; preds = %52
  %57 = load %struct.ip_discovery_header*, %struct.ip_discovery_header** %11, align 8
  %58 = getelementptr inbounds %struct.ip_discovery_header, %struct.ip_discovery_header* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to %struct.die_header*
  store %struct.die_header* %72, %struct.die_header** %12, align 8
  %73 = load %struct.die_header*, %struct.die_header** %12, align 8
  %74 = getelementptr inbounds %struct.die_header, %struct.die_header* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, 4
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %15, align 4
  store i32 0, i32* %19, align 4
  br label %81

81:                                               ; preds = %128, %56
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %131

85:                                               ; preds = %81
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to %struct.ip*
  store %struct.ip* %92, %struct.ip** %13, align 8
  %93 = load %struct.ip*, %struct.ip** %13, align 8
  %94 = getelementptr inbounds %struct.ip, %struct.ip* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %85
  %100 = load i32*, i32** %8, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load %struct.ip*, %struct.ip** %13, align 8
  %104 = getelementptr inbounds %struct.ip, %struct.ip* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %8, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %102, %99
  %108 = load i32*, i32** %9, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.ip*, %struct.ip** %13, align 8
  %112 = getelementptr inbounds %struct.ip, %struct.ip* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %9, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %107
  store i32 0, i32* %5, align 4
  br label %138

116:                                              ; preds = %85
  %117 = load %struct.ip*, %struct.ip** %13, align 8
  %118 = getelementptr inbounds %struct.ip, %struct.ip* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 1
  %121 = mul nsw i32 4, %120
  %122 = sext i32 %121 to i64
  %123 = add i64 16, %122
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = add i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %116
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %19, align 4
  br label %81

131:                                              ; preds = %81
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %18, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %18, align 4
  br label %52

135:                                              ; preds = %52
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %135, %115, %24
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
