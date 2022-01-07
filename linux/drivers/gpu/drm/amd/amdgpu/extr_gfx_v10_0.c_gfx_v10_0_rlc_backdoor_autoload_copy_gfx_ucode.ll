; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_rlc_backdoor_autoload_copy_gfx_ucode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_rlc_backdoor_autoload_copy_gfx_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.gfx_firmware_header_v1_0 = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.rlc_firmware_header_v2_0 = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@FIRMWARE_ID_CP_PFP = common dso_local global i32 0, align 4
@FIRMWARE_ID_CP_CE = common dso_local global i32 0, align 4
@FIRMWARE_ID_CP_ME = common dso_local global i32 0, align 4
@FIRMWARE_ID_RLC_G_UCODE = common dso_local global i32 0, align 4
@FIRMWARE_ID_CP_MEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v10_0_rlc_backdoor_autoload_copy_gfx_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_rlc_backdoor_autoload_copy_gfx_ucode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %6 = alloca %struct.rlc_firmware_header_v2_0*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %13, %struct.gfx_firmware_header_v1_0** %5, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %21 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le32_to_cpu(i32 %23)
  %25 = add nsw i64 %19, %24
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %3, align 8
  %27 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %28 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le32_to_cpu(i32 %30)
  store i64 %31, i64* %4, align 8
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = load i32, i32* @FIRMWARE_ID_CP_PFP, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @gfx_v10_0_rlc_backdoor_autoload_copy_ucode(%struct.amdgpu_device* %32, i32 %33, i32* %34, i64 %35)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %43, %struct.gfx_firmware_header_v1_0** %5, align 8
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %51 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @le32_to_cpu(i32 %53)
  %55 = add nsw i64 %49, %54
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %3, align 8
  %57 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %58 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le32_to_cpu(i32 %60)
  store i64 %61, i64* %4, align 8
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %63 = load i32, i32* @FIRMWARE_ID_CP_CE, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @gfx_v10_0_rlc_backdoor_autoload_copy_ucode(%struct.amdgpu_device* %62, i32 %63, i32* %64, i64 %65)
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %73, %struct.gfx_firmware_header_v1_0** %5, align 8
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %81 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @le32_to_cpu(i32 %83)
  %85 = add nsw i64 %79, %84
  %86 = inttoptr i64 %85 to i32*
  store i32* %86, i32** %3, align 8
  %87 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %88 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @le32_to_cpu(i32 %90)
  store i64 %91, i64* %4, align 8
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %93 = load i32, i32* @FIRMWARE_ID_CP_ME, align 4
  %94 = load i32*, i32** %3, align 8
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @gfx_v10_0_rlc_backdoor_autoload_copy_ucode(%struct.amdgpu_device* %92, i32 %93, i32* %94, i64 %95)
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.rlc_firmware_header_v2_0*
  store %struct.rlc_firmware_header_v2_0* %103, %struct.rlc_firmware_header_v2_0** %6, align 8
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %6, align 8
  %111 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @le32_to_cpu(i32 %113)
  %115 = add nsw i64 %109, %114
  %116 = inttoptr i64 %115 to i32*
  store i32* %116, i32** %3, align 8
  %117 = load %struct.rlc_firmware_header_v2_0*, %struct.rlc_firmware_header_v2_0** %6, align 8
  %118 = getelementptr inbounds %struct.rlc_firmware_header_v2_0, %struct.rlc_firmware_header_v2_0* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @le32_to_cpu(i32 %120)
  store i64 %121, i64* %4, align 8
  %122 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %123 = load i32, i32* @FIRMWARE_ID_RLC_G_UCODE, align 4
  %124 = load i32*, i32** %3, align 8
  %125 = load i64, i64* %4, align 8
  %126 = call i32 @gfx_v10_0_rlc_backdoor_autoload_copy_ucode(%struct.amdgpu_device* %122, i32 %123, i32* %124, i64 %125)
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %133, %struct.gfx_firmware_header_v1_0** %5, align 8
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %135 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %141 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @le32_to_cpu(i32 %143)
  %145 = add nsw i64 %139, %144
  %146 = inttoptr i64 %145 to i32*
  store i32* %146, i32** %3, align 8
  %147 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %148 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @le32_to_cpu(i32 %150)
  %152 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %153 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %154, 4
  %156 = sext i32 %155 to i64
  %157 = sub nsw i64 %151, %156
  store i64 %157, i64* %4, align 8
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %159 = load i32, i32* @FIRMWARE_ID_CP_MEC, align 4
  %160 = load i32*, i32** %3, align 8
  %161 = load i64, i64* %4, align 8
  %162 = call i32 @gfx_v10_0_rlc_backdoor_autoload_copy_ucode(%struct.amdgpu_device* %158, i32 %159, i32* %160, i64 %161)
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @gfx_v10_0_rlc_backdoor_autoload_copy_ucode(%struct.amdgpu_device*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
