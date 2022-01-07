; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_mec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_mec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__*, i32, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.gfx_firmware_header_v1_0 = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }

@AMDGPU_MAX_COMPUTE_QUEUES = common dso_local global i32 0, align 4
@GFX9_MEC_HPD_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"(%d) create HDP EOP bo failed\0A\00", align 1
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"(%d) create mec firmware bo failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v9_0_mec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_mec_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AMDGPU_MAX_COMPUTE_QUEUES, align 4
  %17 = call i32 @bitmap_zero(i32 %15, i32 %16)
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = call i32 @amdgpu_gfx_compute_queue_acquire(%struct.amdgpu_device* %18)
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GFX9_MEC_HPD_SIZE, align 8
  %25 = mul i64 %23, %24
  store i64 %25, i64* %9, align 8
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  %38 = bitcast i32** %5 to i8**
  %39 = call i32 @amdgpu_bo_create_reserved(%struct.amdgpu_device* %26, i64 %27, i32 %28, i32 %29, %struct.TYPE_16__** %33, i32* %37, i8** %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %1
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @dev_warn(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = call i32 @gfx_v9_0_mec_fini(%struct.amdgpu_device* %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %147

51:                                               ; preds = %1
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memset(i32* %52, i32 0, i32 %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = call i32 @amdgpu_bo_kunmap(%struct.TYPE_16__* %67)
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = call i32 @amdgpu_bo_unreserve(%struct.TYPE_16__* %73)
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %81, %struct.gfx_firmware_header_v1_0** %10, align 8
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %10, align 8
  %89 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @le32_to_cpu(i64 %91)
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %87, %93
  %95 = inttoptr i64 %94 to i32*
  store i32* %95, i32** %6, align 8
  %96 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %10, align 8
  %97 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @le32_to_cpu(i64 %99)
  %101 = sdiv i32 %100, 4
  store i32 %101, i32* %7, align 4
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %10, align 8
  %104 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = bitcast i32** %8 to i8**
  %118 = call i32 @amdgpu_bo_create_reserved(%struct.amdgpu_device* %102, i64 %106, i32 %107, i32 %108, %struct.TYPE_16__** %112, i32* %116, i8** %117)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %51
  %122 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %123 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @dev_warn(i32 %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %128 = call i32 @gfx_v9_0_mec_fini(%struct.amdgpu_device* %127)
  %129 = load i32, i32* %4, align 4
  store i32 %129, i32* %2, align 4
  br label %147

130:                                              ; preds = %51
  %131 = load i32*, i32** %8, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @memcpy(i32* %131, i32* %132, i32 %133)
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %136 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = call i32 @amdgpu_bo_kunmap(%struct.TYPE_16__* %139)
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %142 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = call i32 @amdgpu_bo_unreserve(%struct.TYPE_16__* %145)
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %130, %121, %42
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @amdgpu_gfx_compute_queue_acquire(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_bo_create_reserved(%struct.amdgpu_device*, i64, i32, i32, %struct.TYPE_16__**, i32*, i8**) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @gfx_v9_0_mec_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @amdgpu_bo_kunmap(%struct.TYPE_16__*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.TYPE_16__*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
