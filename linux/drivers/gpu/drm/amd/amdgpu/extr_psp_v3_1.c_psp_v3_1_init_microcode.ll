; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v3_1.c_psp_v3_1_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v3_1.c_psp_v3_1_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*, i32*, i32* }
%struct.TYPE_8__ = type { i64 }
%struct.psp_firmware_header_v1_0 = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vega10\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vega12\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_sos.bin\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_asd.bin\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"psp v3.1: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_v3_1_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v3_1_init_microcode(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [30 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.psp_firmware_header_v1_0*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  %9 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %10 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %9, i32 0, i32 0
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %18 [
    i32 129, label %16
    i32 128, label %17
  ]

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %20

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %20

18:                                               ; preds = %1
  %19 = call i32 (...) @BUG()
  br label %20

20:                                               ; preds = %18, %17, %16
  %21 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @snprintf(i8* %21, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 8
  %27 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @request_firmware(%struct.TYPE_8__** %26, i8* %27, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %178

35:                                               ; preds = %20
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @amdgpu_ucode_validate(%struct.TYPE_8__* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %178

44:                                               ; preds = %35
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.psp_firmware_header_v1_0*
  store %struct.psp_firmware_header_v1_0* %51, %struct.psp_firmware_header_v1_0** %8, align 8
  %52 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %53 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %61 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %68 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32_to_cpu(i32 %69)
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %75 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %80 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = sub nsw i32 %78, %82
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 4
  %87 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %88 = bitcast %struct.psp_firmware_header_v1_0* %87 to i32*
  %89 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %90 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le32_to_cpu(i32 %92)
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %88, i64 %94
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 10
  store i32* %95, i32** %98, align 8
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 10
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %104 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le32_to_cpu(i32 %105)
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 11
  store i32* %108, i32** %111, align 8
  %112 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %113 = load i8*, i8** %5, align 8
  %114 = call i32 @snprintf(i8* %112, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %113)
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %116 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 7
  %118 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @request_firmware(%struct.TYPE_8__** %117, i8* %118, i32 %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %44
  br label %178

126:                                              ; preds = %44
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 7
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = call i32 @amdgpu_ucode_validate(%struct.TYPE_8__* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %178

135:                                              ; preds = %126
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 7
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to %struct.psp_firmware_header_v1_0*
  store %struct.psp_firmware_header_v1_0* %142, %struct.psp_firmware_header_v1_0** %8, align 8
  %143 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %144 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le32_to_cpu(i32 %146)
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %149 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 4
  store i32 %147, i32* %150, align 8
  %151 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %152 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @le32_to_cpu(i32 %153)
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 5
  store i32 %154, i32* %157, align 4
  %158 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %159 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @le32_to_cpu(i32 %161)
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %164 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 6
  store i32 %162, i32* %165, align 8
  %166 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %167 = bitcast %struct.psp_firmware_header_v1_0* %166 to i32*
  %168 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %169 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @le32_to_cpu(i32 %171)
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %167, i64 %173
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %176 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 9
  store i32* %174, i32** %177, align 8
  store i32 0, i32* %2, align 4
  br label %205

178:                                              ; preds = %134, %125, %43, %34
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %203

181:                                              ; preds = %178
  %182 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %183 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %186 = call i32 @dev_err(i32 %184, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %185)
  %187 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %188 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = call i32 @release_firmware(%struct.TYPE_8__* %190)
  %192 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %193 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %194, align 8
  %195 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %196 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 7
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = call i32 @release_firmware(%struct.TYPE_8__* %198)
  %200 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %201 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 7
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %202, align 8
  br label %203

203:                                              ; preds = %181, %178
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %203, %135
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_8__**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_8__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
