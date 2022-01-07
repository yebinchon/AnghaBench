; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_discovery.c_amdgpu_discovery_get_gfx_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_discovery.c_amdgpu_discovery_get_gfx_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.binary_header = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.gc_info_v1_0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"ip discovery uninitialized\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_discovery_get_gfx_info(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.binary_header*, align 8
  %5 = alloca %struct.gc_info_v1_0*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %171

14:                                               ; preds = %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.binary_header*
  store %struct.binary_header* %18, %struct.binary_header** %4, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.binary_header*, %struct.binary_header** %4, align 8
  %23 = getelementptr inbounds %struct.binary_header, %struct.binary_header* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i64, i64* @GC, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le16_to_cpu(i32 %28)
  %30 = add nsw i64 %21, %29
  %31 = inttoptr i64 %30 to %struct.gc_info_v1_0*
  store %struct.gc_info_v1_0* %31, %struct.gc_info_v1_0** %5, align 8
  %32 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %33 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %32, i32 0, i32 16
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  %40 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %41 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %40, i32 0, i32 15
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %45 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %44, i32 0, i32 14
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = add nsw i32 %43, %47
  %49 = mul nsw i32 2, %48
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %55 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  store i32 %57, i32* %61, align 8
  %62 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %63 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %62, i32 0, i32 13
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  store i32 %65, i32* %69, align 4
  %70 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %71 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  store i32 %73, i32* %77, align 8
  %78 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %79 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %78, i32 0, i32 11
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 5
  store i32 %81, i32* %85, align 4
  %86 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %87 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %86, i32 0, i32 10
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le32_to_cpu(i32 %88)
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 6
  store i32 %89, i32* %93, align 8
  %94 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %95 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 7
  store i32 %97, i32* %101, align 4
  %102 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %103 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le32_to_cpu(i32 %104)
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 8
  store i32 %105, i32* %109, align 8
  %110 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %111 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le32_to_cpu(i32 %112)
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 9
  store i32 %113, i32* %117, align 4
  %118 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %119 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le32_to_cpu(i32 %120)
  %122 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %123 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 8
  %126 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %127 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @le32_to_cpu(i32 %128)
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %131 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store i32 %129, i32* %133, align 4
  %134 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %135 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @le32_to_cpu(i32 %136)
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  store i32 %137, i32* %141, align 8
  %142 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %143 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @le32_to_cpu(i32 %144)
  %146 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %147 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  store i32 %145, i32* %149, align 4
  %150 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %151 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @le32_to_cpu(i32 %152)
  %154 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %155 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @le32_to_cpu(i32 %156)
  %158 = sdiv i32 %153, %157
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %160 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 10
  store i32 %158, i32* %162, align 8
  %163 = load %struct.gc_info_v1_0*, %struct.gc_info_v1_0** %5, align 8
  %164 = getelementptr inbounds %struct.gc_info_v1_0, %struct.gc_info_v1_0* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @le32_to_cpu(i32 %165)
  %167 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %168 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 11
  store i32 %166, i32* %170, align 4
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %14, %10
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
