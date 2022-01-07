; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v4_0.c_vce_v4_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v4_0.c_vce_v4_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32, %struct.amdgpu_ring*, %struct.TYPE_8__*, i32, i32 }
%struct.amdgpu_ring = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__* }
%struct.common_firmware_header = type { i32 }

@SOC15_IH_CLIENTID_VCE0 = common dso_local global i32 0, align 4
@VCE_V4_0_STACK_SIZE = common dso_local global i32 0, align 4
@VCE_V4_0_DATA_SIZE = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_PSP = common dso_local global i64 0, align 8
@VCE_V4_0_FW_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMDGPU_UCODE_ID_VCE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PSP loading VCE firmware\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"vce%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vce_v4_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v4_0_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.common_firmware_header*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %4, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = load i32, i32* @SOC15_IH_CLIENTID_VCE0, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %13, i32 %14, i32 167, i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %203

23:                                               ; preds = %1
  %24 = load i32, i32* @VCE_V4_0_STACK_SIZE, align 4
  %25 = load i32, i32* @VCE_V4_0_DATA_SIZE, align 4
  %26 = add i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load i64, i64* @VCE_V4_0_FW_SIZE, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %23
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @amdgpu_vce_sw_init(%struct.amdgpu_device* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %203

47:                                               ; preds = %39
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AMDGPU_FW_LOAD_PSP, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %115

54:                                               ; preds = %47
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @amdgpu_bo_size(i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32 @kvmalloc(i32 %60, i32 %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 8
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %54
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %203

74:                                               ; preds = %54
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %81, %struct.common_firmware_header** %9, align 8
  %82 = load i64, i64* @AMDGPU_UCODE_ID_VCE, align 8
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = load i64, i64* @AMDGPU_UCODE_ID_VCE, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i64 %82, i64* %89, align 8
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load i64, i64* @AMDGPU_UCODE_ID_VCE, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %100, align 8
  %101 = load %struct.common_firmware_header*, %struct.common_firmware_header** %9, align 8
  %102 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le32_to_cpu(i32 %103)
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = call i64 @ALIGN(i32 %104, i32 %105)
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %106
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 8
  %114 = call i32 @DRM_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %123

115:                                              ; preds = %47
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %117 = call i32 @amdgpu_vce_resume(%struct.amdgpu_device* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %203

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122, %74
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %184, %123
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %127 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %125, %129
  br i1 %130, label %131, label %187

131:                                              ; preds = %124
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %133 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %135, i64 %137
  store %struct.amdgpu_ring* %138, %struct.amdgpu_ring** %5, align 8
  %139 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %140 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @sprintf(i32 %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %145 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %172

147:                                              ; preds = %131
  %148 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %149 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %148, i32 0, i32 0
  store i32 1, i32* %149, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %154 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %157, 2
  %159 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %160 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  br label %171

161:                                              ; preds = %147
  %162 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %163 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %166, 2
  %168 = add nsw i32 %167, 1
  %169 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %170 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %161, %152
  br label %172

172:                                              ; preds = %171, %131
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %174 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %176 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %173, %struct.amdgpu_ring* %174, i32 512, i32* %177, i32 0)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %172
  %182 = load i32, i32* %7, align 4
  store i32 %182, i32* %2, align 4
  br label %203

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %124

187:                                              ; preds = %124
  %188 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %189 = call i32 @amdgpu_vce_entity_init(%struct.amdgpu_device* %188)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %2, align 4
  br label %203

194:                                              ; preds = %187
  %195 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %196 = call i32 @amdgpu_virt_alloc_mm_table(%struct.amdgpu_device* %195)
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %7, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load i32, i32* %7, align 4
  store i32 %200, i32* %2, align 4
  br label %203

201:                                              ; preds = %194
  %202 = load i32, i32* %7, align 4
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %201, %199, %192, %181, %120, %71, %45, %21
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @amdgpu_vce_sw_init(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_bo_size(i32) #1

declare dso_local i32 @kvmalloc(i32, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @amdgpu_vce_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

declare dso_local i32 @amdgpu_vce_entity_init(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_virt_alloc_mm_table(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
