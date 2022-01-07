; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_cp_gfx_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_cp_gfx_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.gfx_firmware_header_v1_0 = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@mmCP_PFP_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_PFP_UCODE_DATA = common dso_local global i32 0, align 4
@mmCP_CE_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_CE_UCODE_DATA = common dso_local global i32 0, align 4
@mmCP_ME_RAM_WADDR = common dso_local global i32 0, align 4
@mmCP_ME_RAM_DATA = common dso_local global i32 0, align 4
@mmCP_ME_RAM_RADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v6_0_cp_gfx_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v6_0_cp_gfx_load_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %6 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %7 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21, %15, %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %188

30:                                               ; preds = %21
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = call i32 @gfx_v6_0_cp_gfx_enable(%struct.amdgpu_device* %31, i32 0)
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %39, %struct.gfx_firmware_header_v1_0** %5, align 8
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %46, %struct.gfx_firmware_header_v1_0** %6, align 8
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %53, %struct.gfx_firmware_header_v1_0** %7, align 8
  %54 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %55 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %54, i32 0, i32 0
  %56 = call i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__* %55)
  %57 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %58 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %57, i32 0, i32 0
  %59 = call i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__* %58)
  %60 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %7, align 8
  %61 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %60, i32 0, i32 0
  %62 = call i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__* %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %70 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %68, %74
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %8, align 8
  %77 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %78 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = sdiv i32 %81, 4
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* @mmCP_PFP_UCODE_ADDR, align 4
  %84 = call i32 @WREG32(i32 %83, i32 0)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %96, %30
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i32, i32* @mmCP_PFP_UCODE_DATA, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %8, align 8
  %93 = ptrtoint i32* %91 to i32
  %94 = call i32 @le32_to_cpup(i32 %93)
  %95 = call i32 @WREG32(i32 %90, i32 %94)
  br label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %4, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %85

99:                                               ; preds = %85
  %100 = load i32, i32* @mmCP_PFP_UCODE_ADDR, align 4
  %101 = call i32 @WREG32(i32 %100, i32 0)
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %109 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le32_to_cpu(i32 %111)
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %107, %113
  %115 = inttoptr i64 %114 to i32*
  store i32* %115, i32** %8, align 8
  %116 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %117 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le32_to_cpu(i32 %119)
  %121 = sdiv i32 %120, 4
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* @mmCP_CE_UCODE_ADDR, align 4
  %123 = call i32 @WREG32(i32 %122, i32 0)
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %135, %99
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %124
  %129 = load i32, i32* @mmCP_CE_UCODE_DATA, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %8, align 8
  %132 = ptrtoint i32* %130 to i32
  %133 = call i32 @le32_to_cpup(i32 %132)
  %134 = call i32 @WREG32(i32 %129, i32 %133)
  br label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %4, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %124

138:                                              ; preds = %124
  %139 = load i32, i32* @mmCP_CE_UCODE_ADDR, align 4
  %140 = call i32 @WREG32(i32 %139, i32 0)
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %142 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %7, align 8
  %148 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @le32_to_cpu(i32 %150)
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %146, %152
  %154 = inttoptr i64 %153 to i32*
  store i32* %154, i32** %8, align 8
  %155 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %7, align 8
  %156 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le32_to_cpu(i32 %158)
  %160 = sdiv i32 %159, 4
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* @mmCP_ME_RAM_WADDR, align 4
  %162 = call i32 @WREG32(i32 %161, i32 0)
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %174, %138
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ult i32 %164, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %163
  %168 = load i32, i32* @mmCP_ME_RAM_DATA, align 4
  %169 = load i32*, i32** %8, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %8, align 8
  %171 = ptrtoint i32* %169 to i32
  %172 = call i32 @le32_to_cpup(i32 %171)
  %173 = call i32 @WREG32(i32 %168, i32 %172)
  br label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %4, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %4, align 4
  br label %163

177:                                              ; preds = %163
  %178 = load i32, i32* @mmCP_ME_RAM_WADDR, align 4
  %179 = call i32 @WREG32(i32 %178, i32 0)
  %180 = load i32, i32* @mmCP_PFP_UCODE_ADDR, align 4
  %181 = call i32 @WREG32(i32 %180, i32 0)
  %182 = load i32, i32* @mmCP_CE_UCODE_ADDR, align 4
  %183 = call i32 @WREG32(i32 %182, i32 0)
  %184 = load i32, i32* @mmCP_ME_RAM_WADDR, align 4
  %185 = call i32 @WREG32(i32 %184, i32 0)
  %186 = load i32, i32* @mmCP_ME_RAM_RADDR, align 4
  %187 = call i32 @WREG32(i32 %186, i32 0)
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %177, %27
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @gfx_v6_0_cp_gfx_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @le32_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
