; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_init_rlc_ext_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_init_rlc_ext_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.rlc_firmware_header_v2_1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v10_0_init_rlc_ext_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_init_rlc_ext_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.rlc_firmware_header_v2_1*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 7
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.rlc_firmware_header_v2_1*
  store %struct.rlc_firmware_header_v2_1* %10, %struct.rlc_firmware_header_v2_1** %3, align 8
  %11 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %12 = getelementptr inbounds %struct.rlc_firmware_header_v2_1, %struct.rlc_firmware_header_v2_1* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le32_to_cpu(i32 %13)
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %19 = getelementptr inbounds %struct.rlc_firmware_header_v2_1, %struct.rlc_firmware_header_v2_1* %18, i32 0, i32 11
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %26 = getelementptr inbounds %struct.rlc_firmware_header_v2_1, %struct.rlc_firmware_header_v2_1* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %34 = bitcast %struct.rlc_firmware_header_v2_1* %33 to i32*
  %35 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %36 = getelementptr inbounds %struct.rlc_firmware_header_v2_1, %struct.rlc_firmware_header_v2_1* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 6
  store i32* %40, i32** %44, align 8
  %45 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %46 = getelementptr inbounds %struct.rlc_firmware_header_v2_1, %struct.rlc_firmware_header_v2_1* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %53 = getelementptr inbounds %struct.rlc_firmware_header_v2_1, %struct.rlc_firmware_header_v2_1* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  store i32 %55, i32* %58, align 4
  %59 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %60 = getelementptr inbounds %struct.rlc_firmware_header_v2_1, %struct.rlc_firmware_header_v2_1* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 4
  %67 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %68 = bitcast %struct.rlc_firmware_header_v2_1* %67 to i32*
  %69 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %70 = getelementptr inbounds %struct.rlc_firmware_header_v2_1, %struct.rlc_firmware_header_v2_1* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  store i32* %74, i32** %78, align 8
  %79 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %80 = getelementptr inbounds %struct.rlc_firmware_header_v2_1, %struct.rlc_firmware_header_v2_1* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 8
  %86 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %87 = getelementptr inbounds %struct.rlc_firmware_header_v2_1, %struct.rlc_firmware_header_v2_1* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le32_to_cpu(i32 %88)
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 5
  store i32 %89, i32* %92, align 4
  %93 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %94 = getelementptr inbounds %struct.rlc_firmware_header_v2_1, %struct.rlc_firmware_header_v2_1* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le32_to_cpu(i32 %95)
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  store i32 %96, i32* %100, align 8
  %101 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %102 = bitcast %struct.rlc_firmware_header_v2_1* %101 to i32*
  %103 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %104 = getelementptr inbounds %struct.rlc_firmware_header_v2_1, %struct.rlc_firmware_header_v2_1* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le32_to_cpu(i32 %105)
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 4
  store i32* %108, i32** %112, align 8
  %113 = load %struct.rlc_firmware_header_v2_1*, %struct.rlc_firmware_header_v2_1** %3, align 8
  %114 = getelementptr inbounds %struct.rlc_firmware_header_v2_1, %struct.rlc_firmware_header_v2_1* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le32_to_cpu(i32 %115)
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  store i32 %116, i32* %120, align 4
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
