; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.sdma_firmware_header_v1_0 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SDMA0_UCODE_ADDR = common dso_local global i64 0, align 8
@SDMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SDMA0_UCODE_DATA = common dso_local global i64 0, align 8
@CIK_SDMA_UCODE_VERSION = common dso_local global i32 0, align 4
@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@CIK_SDMA_UCODE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cik_sdma_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_sdma_load_microcode(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdma_firmware_header_v1_0*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %197

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = call i32 @cik_sdma_enable(%struct.radeon_device* %17, i32 0)
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %123

23:                                               ; preds = %16
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.sdma_firmware_header_v1_0*
  store %struct.sdma_firmware_header_v1_0* %29, %struct.sdma_firmware_header_v1_0** %5, align 8
  %30 = load %struct.sdma_firmware_header_v1_0*, %struct.sdma_firmware_header_v1_0** %5, align 8
  %31 = getelementptr inbounds %struct.sdma_firmware_header_v1_0, %struct.sdma_firmware_header_v1_0* %30, i32 0, i32 0
  %32 = call i32 @radeon_ucode_print_sdma_hdr(%struct.TYPE_4__* %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.sdma_firmware_header_v1_0*, %struct.sdma_firmware_header_v1_0** %5, align 8
  %39 = getelementptr inbounds %struct.sdma_firmware_header_v1_0, %struct.sdma_firmware_header_v1_0* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %37, %43
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %6, align 8
  %46 = load %struct.sdma_firmware_header_v1_0*, %struct.sdma_firmware_header_v1_0** %5, align 8
  %47 = getelementptr inbounds %struct.sdma_firmware_header_v1_0, %struct.sdma_firmware_header_v1_0* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  %51 = sdiv i32 %50, 4
  store i32 %51, i32* %7, align 4
  %52 = load i64, i64* @SDMA0_UCODE_ADDR, align 8
  %53 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @WREG32(i64 %54, i32 0)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %69, %23
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i64, i64* @SDMA0_UCODE_DATA, align 8
  %62 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %6, align 8
  %66 = ptrtoint i32* %64 to i32
  %67 = call i32 @le32_to_cpup(i32 %66)
  %68 = call i32 @WREG32(i64 %63, i32 %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %56

72:                                               ; preds = %56
  %73 = load i64, i64* @SDMA0_UCODE_DATA, align 8
  %74 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* @CIK_SDMA_UCODE_VERSION, align 4
  %77 = call i32 @WREG32(i64 %75, i32 %76)
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.sdma_firmware_header_v1_0*, %struct.sdma_firmware_header_v1_0** %5, align 8
  %84 = getelementptr inbounds %struct.sdma_firmware_header_v1_0, %struct.sdma_firmware_header_v1_0* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %82, %88
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %6, align 8
  %91 = load %struct.sdma_firmware_header_v1_0*, %struct.sdma_firmware_header_v1_0** %5, align 8
  %92 = getelementptr inbounds %struct.sdma_firmware_header_v1_0, %struct.sdma_firmware_header_v1_0* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  %96 = sdiv i32 %95, 4
  store i32 %96, i32* %7, align 4
  %97 = load i64, i64* @SDMA0_UCODE_ADDR, align 8
  %98 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @WREG32(i64 %99, i32 0)
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %114, %72
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load i64, i64* @SDMA0_UCODE_DATA, align 8
  %107 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %108 = add nsw i64 %106, %107
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %6, align 8
  %111 = ptrtoint i32* %109 to i32
  %112 = call i32 @le32_to_cpup(i32 %111)
  %113 = call i32 @WREG32(i64 %108, i32 %112)
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %101

117:                                              ; preds = %101
  %118 = load i64, i64* @SDMA0_UCODE_DATA, align 8
  %119 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %120 = add nsw i64 %118, %119
  %121 = load i32, i32* @CIK_SDMA_UCODE_VERSION, align 4
  %122 = call i32 @WREG32(i64 %120, i32 %121)
  br label %188

123:                                              ; preds = %16
  %124 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %125 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i32*
  store i32* %129, i32** %8, align 8
  %130 = load i64, i64* @SDMA0_UCODE_ADDR, align 8
  %131 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @WREG32(i64 %132, i32 0)
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %147, %123
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @CIK_SDMA_UCODE_SIZE, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %134
  %139 = load i64, i64* @SDMA0_UCODE_DATA, align 8
  %140 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %141 = add nsw i64 %139, %140
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %8, align 8
  %144 = ptrtoint i32* %142 to i32
  %145 = call i32 @be32_to_cpup(i32 %144)
  %146 = call i32 @WREG32(i64 %141, i32 %145)
  br label %147

147:                                              ; preds = %138
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  br label %134

150:                                              ; preds = %134
  %151 = load i64, i64* @SDMA0_UCODE_DATA, align 8
  %152 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %153 = add nsw i64 %151, %152
  %154 = load i32, i32* @CIK_SDMA_UCODE_VERSION, align 4
  %155 = call i32 @WREG32(i64 %153, i32 %154)
  %156 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %157 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %156, i32 0, i32 0
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to i32*
  store i32* %161, i32** %8, align 8
  %162 = load i64, i64* @SDMA0_UCODE_ADDR, align 8
  %163 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @WREG32(i64 %164, i32 0)
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %179, %150
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @CIK_SDMA_UCODE_SIZE, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %166
  %171 = load i64, i64* @SDMA0_UCODE_DATA, align 8
  %172 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %173 = add nsw i64 %171, %172
  %174 = load i32*, i32** %8, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %8, align 8
  %176 = ptrtoint i32* %174 to i32
  %177 = call i32 @be32_to_cpup(i32 %176)
  %178 = call i32 @WREG32(i64 %173, i32 %177)
  br label %179

179:                                              ; preds = %170
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %4, align 4
  br label %166

182:                                              ; preds = %166
  %183 = load i64, i64* @SDMA0_UCODE_DATA, align 8
  %184 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %185 = add nsw i64 %183, %184
  %186 = load i32, i32* @CIK_SDMA_UCODE_VERSION, align 4
  %187 = call i32 @WREG32(i64 %185, i32 %186)
  br label %188

188:                                              ; preds = %182, %117
  %189 = load i64, i64* @SDMA0_UCODE_ADDR, align 8
  %190 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @WREG32(i64 %191, i32 0)
  %193 = load i64, i64* @SDMA0_UCODE_ADDR, align 8
  %194 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @WREG32(i64 %195, i32 0)
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %188, %13
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i32 @cik_sdma_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_ucode_print_sdma_hdr(%struct.TYPE_4__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @le32_to_cpup(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
