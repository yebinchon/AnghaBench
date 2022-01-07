; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32**, i32*, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.common_firmware_header = type { i32 }

@FIRMWARE_TONGA = common dso_local global i8* null, align 8
@FIRMWARE_CARRIZO = common dso_local global i8* null, align 8
@FIRMWARE_FIJI = common dso_local global i8* null, align 8
@FIRMWARE_STONEY = common dso_local global i8* null, align 8
@FIRMWARE_POLARIS10 = common dso_local global i8* null, align 8
@FIRMWARE_POLARIS11 = common dso_local global i8* null, align 8
@FIRMWARE_POLARIS12 = common dso_local global i8* null, align 8
@FIRMWARE_VEGAM = common dso_local global i8* null, align 8
@FIRMWARE_VEGA10 = common dso_local global i8* null, align 8
@FIRMWARE_VEGA12 = common dso_local global i8* null, align 8
@FIRMWARE_VEGA20 = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"amdgpu_vce: Can't load firmware \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"amdgpu_vce: Can't validate firmware \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Found VCE firmware Version: %hhd.%hhd Binary ID: %hhd\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"(%d) failed to allocate VCE bo\0A\00", align 1
@AMDGPU_MAX_VCE_HANDLES = common dso_local global i32 0, align 4
@amdgpu_vce_idle_work_handler = common dso_local global i32 0, align 4
@FIRMWARE_BONAIRE = common dso_local global i8* null, align 8
@FIRMWARE_HAWAII = common dso_local global i8* null, align 8
@FIRMWARE_KABINI = common dso_local global i8* null, align 8
@FIRMWARE_KAVERI = common dso_local global i8* null, align 8
@FIRMWARE_MULLINS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vce_sw_init(%struct.amdgpu_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.common_firmware_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %39 [
    i32 132, label %17
    i32 142, label %19
    i32 141, label %21
    i32 133, label %23
    i32 136, label %25
    i32 135, label %27
    i32 134, label %29
    i32 128, label %31
    i32 131, label %33
    i32 130, label %35
    i32 129, label %37
  ]

17:                                               ; preds = %2
  %18 = load i8*, i8** @FIRMWARE_TONGA, align 8
  store i8* %18, i8** %6, align 8
  br label %42

19:                                               ; preds = %2
  %20 = load i8*, i8** @FIRMWARE_CARRIZO, align 8
  store i8* %20, i8** %6, align 8
  br label %42

21:                                               ; preds = %2
  %22 = load i8*, i8** @FIRMWARE_FIJI, align 8
  store i8* %22, i8** %6, align 8
  br label %42

23:                                               ; preds = %2
  %24 = load i8*, i8** @FIRMWARE_STONEY, align 8
  store i8* %24, i8** %6, align 8
  br label %42

25:                                               ; preds = %2
  %26 = load i8*, i8** @FIRMWARE_POLARIS10, align 8
  store i8* %26, i8** %6, align 8
  br label %42

27:                                               ; preds = %2
  %28 = load i8*, i8** @FIRMWARE_POLARIS11, align 8
  store i8* %28, i8** %6, align 8
  br label %42

29:                                               ; preds = %2
  %30 = load i8*, i8** @FIRMWARE_POLARIS12, align 8
  store i8* %30, i8** %6, align 8
  br label %42

31:                                               ; preds = %2
  %32 = load i8*, i8** @FIRMWARE_VEGAM, align 8
  store i8* %32, i8** %6, align 8
  br label %42

33:                                               ; preds = %2
  %34 = load i8*, i8** @FIRMWARE_VEGA10, align 8
  store i8* %34, i8** %6, align 8
  br label %42

35:                                               ; preds = %2
  %36 = load i8*, i8** @FIRMWARE_VEGA12, align 8
  store i8* %36, i8** %6, align 8
  br label %42

37:                                               ; preds = %2
  %38 = load i8*, i8** @FIRMWARE_VEGA20, align 8
  store i8* %38, i8** %6, align 8
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %175

42:                                               ; preds = %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 8
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @request_firmware(%struct.TYPE_6__** %45, i8* %46, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %42
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %3, align 4
  br label %175

60:                                               ; preds = %42
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = call i32 @amdgpu_ucode_validate(%struct.TYPE_6__* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %60
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 (i32, i8*, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = call i32 @release_firmware(%struct.TYPE_6__* %77)
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %81, align 8
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %3, align 4
  br label %175

83:                                               ; preds = %60
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to %struct.common_firmware_header*
  store %struct.common_firmware_header* %90, %struct.common_firmware_header** %7, align 8
  %91 = load %struct.common_firmware_header*, %struct.common_firmware_header** %7, align 8
  %92 = getelementptr inbounds %struct.common_firmware_header, %struct.common_firmware_header* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le32_to_cpu(i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = lshr i32 %95, 20
  %97 = and i32 %96, 4095
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = lshr i32 %98, 8
  %100 = and i32 %99, 4095
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %101, 255
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @DRM_INFO(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %9, align 4
  %108 = shl i32 %107, 24
  %109 = load i32, i32* %10, align 4
  %110 = shl i32 %109, 16
  %111 = or i32 %108, %110
  %112 = load i32, i32* %11, align 4
  %113 = shl i32 %112, 8
  %114 = or i32 %111, %113
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %116 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %119 = load i64, i64* %5, align 8
  %120 = load i32, i32* @PAGE_SIZE, align 4
  %121 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %122 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %123 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 7
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %126 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 6
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 5
  %131 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %118, i64 %119, i32 %120, i32 %121, i32* %124, i32* %127, i32* %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %83
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %136 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = call i32 (i32, i8*, ...) @dev_err(i32 %137, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %3, align 4
  br label %175

141:                                              ; preds = %83
  store i32 0, i32* %12, align 4
  br label %142

142:                                              ; preds = %162, %141
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* @AMDGPU_MAX_VCE_HANDLES, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %165

146:                                              ; preds = %142
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = call i32 @atomic_set(i32* %153, i32 0)
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 3
  %158 = load i32**, i32*** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  store i32* null, i32** %161, align 8
  br label %162

162:                                              ; preds = %146
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %142

165:                                              ; preds = %142
  %166 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %167 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 2
  %169 = load i32, i32* @amdgpu_vce_idle_work_handler, align 4
  %170 = call i32 @INIT_DELAYED_WORK(i32* %168, i32 %169)
  %171 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %172 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = call i32 @mutex_init(i32* %173)
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %165, %134, %68, %53, %39
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @request_firmware(%struct.TYPE_6__**, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_6__*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_6__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
