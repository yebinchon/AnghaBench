; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_cp_gfx_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_cp_gfx_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.gfx_firmware_header_v1_0 = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmCP_PFP_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_PFP_UCODE_DATA = common dso_local global i32 0, align 4
@mmCP_CE_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_CE_UCODE_DATA = common dso_local global i32 0, align 4
@mmCP_ME_RAM_WADDR = common dso_local global i32 0, align 4
@mmCP_ME_RAM_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v9_0_cp_gfx_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_cp_gfx_load_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %5 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %6 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21, %15, %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %201

30:                                               ; preds = %21
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %37, %struct.gfx_firmware_header_v1_0** %4, align 8
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %44, %struct.gfx_firmware_header_v1_0** %5, align 8
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %51, %struct.gfx_firmware_header_v1_0** %6, align 8
  %52 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %53 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %52, i32 0, i32 0
  %54 = call i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__* %53)
  %55 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %56 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %55, i32 0, i32 0
  %57 = call i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__* %56)
  %58 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %59 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %58, i32 0, i32 0
  %60 = call i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__* %59)
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = call i32 @gfx_v9_0_cp_gfx_enable(%struct.amdgpu_device* %61, i32 0)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %70 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %68, %74
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %7, align 8
  %77 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %78 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = sdiv i32 %81, 4
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* @GC, align 4
  %84 = load i32, i32* @mmCP_PFP_UCODE_ADDR, align 4
  %85 = call i32 @WREG32_SOC15(i32 %83, i32 0, i32 %84, i32 0)
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %98, %30
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load i32, i32* @GC, align 4
  %92 = load i32, i32* @mmCP_PFP_UCODE_DATA, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %7, align 8
  %95 = ptrtoint i32* %93 to i32
  %96 = call i32 @le32_to_cpup(i32 %95)
  %97 = call i32 @WREG32_SOC15(i32 %91, i32 0, i32 %92, i32 %96)
  br label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %86

101:                                              ; preds = %86
  %102 = load i32, i32* @GC, align 4
  %103 = load i32, i32* @mmCP_PFP_UCODE_ADDR, align 4
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @WREG32_SOC15(i32 %102, i32 0, i32 %103, i32 %107)
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %116 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le32_to_cpu(i32 %118)
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %114, %120
  %122 = inttoptr i64 %121 to i32*
  store i32* %122, i32** %7, align 8
  %123 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %124 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le32_to_cpu(i32 %126)
  %128 = sdiv i32 %127, 4
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* @GC, align 4
  %130 = load i32, i32* @mmCP_CE_UCODE_ADDR, align 4
  %131 = call i32 @WREG32_SOC15(i32 %129, i32 0, i32 %130, i32 0)
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %144, %101
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load i32, i32* @GC, align 4
  %138 = load i32, i32* @mmCP_CE_UCODE_DATA, align 4
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %7, align 8
  %141 = ptrtoint i32* %139 to i32
  %142 = call i32 @le32_to_cpup(i32 %141)
  %143 = call i32 @WREG32_SOC15(i32 %137, i32 0, i32 %138, i32 %142)
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %8, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %132

147:                                              ; preds = %132
  %148 = load i32, i32* @GC, align 4
  %149 = load i32, i32* @mmCP_CE_UCODE_ADDR, align 4
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %151 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @WREG32_SOC15(i32 %148, i32 0, i32 %149, i32 %153)
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %162 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @le32_to_cpu(i32 %164)
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %160, %166
  %168 = inttoptr i64 %167 to i32*
  store i32* %168, i32** %7, align 8
  %169 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %170 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le32_to_cpu(i32 %172)
  %174 = sdiv i32 %173, 4
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* @GC, align 4
  %176 = load i32, i32* @mmCP_ME_RAM_WADDR, align 4
  %177 = call i32 @WREG32_SOC15(i32 %175, i32 0, i32 %176, i32 0)
  store i32 0, i32* %8, align 4
  br label %178

178:                                              ; preds = %190, %147
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %182, label %193

182:                                              ; preds = %178
  %183 = load i32, i32* @GC, align 4
  %184 = load i32, i32* @mmCP_ME_RAM_DATA, align 4
  %185 = load i32*, i32** %7, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** %7, align 8
  %187 = ptrtoint i32* %185 to i32
  %188 = call i32 @le32_to_cpup(i32 %187)
  %189 = call i32 @WREG32_SOC15(i32 %183, i32 0, i32 %184, i32 %188)
  br label %190

190:                                              ; preds = %182
  %191 = load i32, i32* %8, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %178

193:                                              ; preds = %178
  %194 = load i32, i32* @GC, align 4
  %195 = load i32, i32* @mmCP_ME_RAM_WADDR, align 4
  %196 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %197 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @WREG32_SOC15(i32 %194, i32 0, i32 %195, i32 %199)
  store i32 0, i32* %2, align 4
  br label %201

201:                                              ; preds = %193, %27
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__*) #1

declare dso_local i32 @gfx_v9_0_cp_gfx_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
