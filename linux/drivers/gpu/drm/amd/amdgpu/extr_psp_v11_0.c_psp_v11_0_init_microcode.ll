; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v11_0.c_psp_v11_0_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v11_0.c_psp_v11_0_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i64 }
%struct.psp_firmware_header_v1_0 = type { %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.psp_firmware_header_v1_1 = type { i32, i32, i32, i32 }
%struct.psp_firmware_header_v1_2 = type { i32, i32 }
%struct.ta_firmware_header_v1_0 = type { i32, i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vega20\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"navi10\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"navi14\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"navi12\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"arcturus\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_sos.bin\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Unsupported psp sos firmware\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_asd.bin\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"amdgpu/%s_ta.bin\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"psp v11.0: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_v11_0_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v11_0_init_microcode(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [30 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.psp_firmware_header_v1_0*, align 8
  %9 = alloca %struct.psp_firmware_header_v1_1*, align 8
  %10 = alloca %struct.psp_firmware_header_v1_2*, align 8
  %11 = alloca %struct.psp_firmware_header_v1_0*, align 8
  %12 = alloca %struct.ta_firmware_header_v1_0*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  %13 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %14 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %14, align 8
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %4, align 8
  store i32 0, i32* %7, align 4
  %16 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %25 [
    i32 128, label %20
    i32 131, label %21
    i32 129, label %22
    i32 130, label %23
    i32 132, label %24
  ]

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %27

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %27

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %27

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %27

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %27

25:                                               ; preds = %1
  %26 = call i32 (...) @BUG()
  br label %27

27:                                               ; preds = %25, %24, %23, %22, %21, %20
  %28 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @snprintf(i8* %28, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %29)
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 14
  %34 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @request_firmware(%struct.TYPE_9__** %33, i8* %34, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %415

42:                                               ; preds = %27
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 14
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = call i32 @amdgpu_ucode_validate(%struct.TYPE_9__* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %415

51:                                               ; preds = %42
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 14
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.psp_firmware_header_v1_0*
  store %struct.psp_firmware_header_v1_0* %58, %struct.psp_firmware_header_v1_0** %8, align 8
  %59 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %60 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %59, i32 0, i32 0
  %61 = call i32 @amdgpu_ucode_print_psp_hdr(%struct.TYPE_10__* %60)
  %62 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %63 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %209 [
    i32 1, label %66
  ]

66:                                               ; preds = %51
  %67 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %68 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %73 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %76 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %83 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32_to_cpu(i32 %84)
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  %89 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %90 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 4
  %96 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %97 = bitcast %struct.psp_firmware_header_v1_0* %96 to i32*
  %98 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %99 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le32_to_cpu(i32 %101)
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %97, i64 %103
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %106 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 20
  store i32* %104, i32** %107, align 8
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 20
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %113 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le32_to_cpu(i32 %114)
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %119 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 23
  store i32* %117, i32** %120, align 8
  %121 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %122 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %174

126:                                              ; preds = %66
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 14
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to %struct.psp_firmware_header_v1_1*
  store %struct.psp_firmware_header_v1_1* %133, %struct.psp_firmware_header_v1_1** %9, align 8
  %134 = load %struct.psp_firmware_header_v1_1*, %struct.psp_firmware_header_v1_1** %9, align 8
  %135 = getelementptr inbounds %struct.psp_firmware_header_v1_1, %struct.psp_firmware_header_v1_1* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @le32_to_cpu(i32 %136)
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 4
  store i32 %137, i32* %140, align 8
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %142 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 20
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.psp_firmware_header_v1_1*, %struct.psp_firmware_header_v1_1** %9, align 8
  %146 = getelementptr inbounds %struct.psp_firmware_header_v1_1, %struct.psp_firmware_header_v1_1* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le32_to_cpu(i32 %147)
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %144, i64 %149
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %152 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 22
  store i32* %150, i32** %153, align 8
  %154 = load %struct.psp_firmware_header_v1_1*, %struct.psp_firmware_header_v1_1** %9, align 8
  %155 = getelementptr inbounds %struct.psp_firmware_header_v1_1, %struct.psp_firmware_header_v1_1* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @le32_to_cpu(i32 %156)
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %159 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 5
  store i32 %157, i32* %160, align 4
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %162 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 20
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.psp_firmware_header_v1_1*, %struct.psp_firmware_header_v1_1** %9, align 8
  %166 = getelementptr inbounds %struct.psp_firmware_header_v1_1, %struct.psp_firmware_header_v1_1* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @le32_to_cpu(i32 %167)
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %164, i64 %169
  %171 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %172 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 21
  store i32* %170, i32** %173, align 8
  br label %174

174:                                              ; preds = %126, %66
  %175 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %8, align 8
  %176 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 2
  br i1 %179, label %180, label %208

180:                                              ; preds = %174
  %181 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %182 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 14
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to %struct.psp_firmware_header_v1_2*
  store %struct.psp_firmware_header_v1_2* %187, %struct.psp_firmware_header_v1_2** %10, align 8
  %188 = load %struct.psp_firmware_header_v1_2*, %struct.psp_firmware_header_v1_2** %10, align 8
  %189 = getelementptr inbounds %struct.psp_firmware_header_v1_2, %struct.psp_firmware_header_v1_2* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @le32_to_cpu(i32 %190)
  %192 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %193 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 5
  store i32 %191, i32* %194, align 4
  %195 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %196 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 20
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.psp_firmware_header_v1_2*, %struct.psp_firmware_header_v1_2** %10, align 8
  %200 = getelementptr inbounds %struct.psp_firmware_header_v1_2, %struct.psp_firmware_header_v1_2* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @le32_to_cpu(i32 %201)
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %198, i64 %203
  %205 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %206 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 21
  store i32* %204, i32** %207, align 8
  br label %208

208:                                              ; preds = %180, %174
  br label %216

209:                                              ; preds = %51
  %210 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %211 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 (i32, i8*, ...) @dev_err(i32 %212, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %7, align 4
  br label %415

216:                                              ; preds = %208
  %217 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %218 = load i8*, i8** %5, align 8
  %219 = call i32 @snprintf(i8* %217, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %218)
  %220 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %221 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 15
  %223 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %224 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %225 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @request_firmware(%struct.TYPE_9__** %222, i8* %223, i32 %226)
  store i32 %227, i32* %7, align 4
  %228 = load i32, i32* %7, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %216
  br label %406

231:                                              ; preds = %216
  %232 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %233 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 15
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = call i32 @amdgpu_ucode_validate(%struct.TYPE_9__* %235)
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* %7, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %231
  br label %406

240:                                              ; preds = %231
  %241 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %242 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 15
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = inttoptr i64 %246 to %struct.psp_firmware_header_v1_0*
  store %struct.psp_firmware_header_v1_0* %247, %struct.psp_firmware_header_v1_0** %11, align 8
  %248 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %11, align 8
  %249 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @le32_to_cpu(i32 %251)
  %253 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %254 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 6
  store i32 %252, i32* %255, align 8
  %256 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %11, align 8
  %257 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @le32_to_cpu(i32 %258)
  %260 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %261 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 7
  store i32 %259, i32* %262, align 4
  %263 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %11, align 8
  %264 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @le32_to_cpu(i32 %266)
  %268 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %269 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 8
  store i32 %267, i32* %270, align 8
  %271 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %11, align 8
  %272 = bitcast %struct.psp_firmware_header_v1_0* %271 to i32*
  %273 = load %struct.psp_firmware_header_v1_0*, %struct.psp_firmware_header_v1_0** %11, align 8
  %274 = getelementptr inbounds %struct.psp_firmware_header_v1_0, %struct.psp_firmware_header_v1_0* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @le32_to_cpu(i32 %276)
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %272, i64 %278
  %280 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %281 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 19
  store i32* %279, i32** %282, align 8
  %283 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %284 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  switch i32 %285, label %394 [
    i32 128, label %286
    i32 131, label %393
    i32 129, label %393
    i32 130, label %393
    i32 132, label %393
  ]

286:                                              ; preds = %240
  %287 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %288 = load i8*, i8** %5, align 8
  %289 = call i32 @snprintf(i8* %287, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %288)
  %290 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %291 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 16
  %293 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %294 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %295 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @request_firmware(%struct.TYPE_9__** %292, i8* %293, i32 %296)
  store i32 %297, i32* %7, align 4
  %298 = load i32, i32* %7, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %314

300:                                              ; preds = %286
  %301 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %302 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 16
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %303, align 8
  %305 = call i32 @release_firmware(%struct.TYPE_9__* %304)
  %306 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %307 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 16
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %308, align 8
  %309 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %310 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %313 = call i32 @dev_info(i32 %311, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* %312)
  br label %392

314:                                              ; preds = %286
  %315 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %316 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 16
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %317, align 8
  %319 = call i32 @amdgpu_ucode_validate(%struct.TYPE_9__* %318)
  store i32 %319, i32* %7, align 4
  %320 = load i32, i32* %7, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %314
  br label %397

323:                                              ; preds = %314
  %324 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %325 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 16
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = inttoptr i64 %329 to %struct.ta_firmware_header_v1_0*
  store %struct.ta_firmware_header_v1_0* %330, %struct.ta_firmware_header_v1_0** %12, align 8
  %331 = load %struct.ta_firmware_header_v1_0*, %struct.ta_firmware_header_v1_0** %12, align 8
  %332 = getelementptr inbounds %struct.ta_firmware_header_v1_0, %struct.ta_firmware_header_v1_0* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @le32_to_cpu(i32 %333)
  %335 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %336 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 9
  store i32 %334, i32* %337, align 4
  %338 = load %struct.ta_firmware_header_v1_0*, %struct.ta_firmware_header_v1_0** %12, align 8
  %339 = getelementptr inbounds %struct.ta_firmware_header_v1_0, %struct.ta_firmware_header_v1_0* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @le32_to_cpu(i32 %340)
  %342 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %343 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 10
  store i32 %341, i32* %344, align 8
  %345 = load %struct.ta_firmware_header_v1_0*, %struct.ta_firmware_header_v1_0** %12, align 8
  %346 = bitcast %struct.ta_firmware_header_v1_0* %345 to i32*
  %347 = load %struct.ta_firmware_header_v1_0*, %struct.ta_firmware_header_v1_0** %12, align 8
  %348 = getelementptr inbounds %struct.ta_firmware_header_v1_0, %struct.ta_firmware_header_v1_0* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @le32_to_cpu(i32 %350)
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %346, i64 %352
  %354 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %355 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 17
  store i32* %353, i32** %356, align 8
  %357 = load %struct.ta_firmware_header_v1_0*, %struct.ta_firmware_header_v1_0** %12, align 8
  %358 = getelementptr inbounds %struct.ta_firmware_header_v1_0, %struct.ta_firmware_header_v1_0* %357, i32 0, i32 3
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @le32_to_cpu(i32 %360)
  %362 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %363 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 11
  store i32 %361, i32* %364, align 4
  %365 = load %struct.ta_firmware_header_v1_0*, %struct.ta_firmware_header_v1_0** %12, align 8
  %366 = getelementptr inbounds %struct.ta_firmware_header_v1_0, %struct.ta_firmware_header_v1_0* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @le32_to_cpu(i32 %367)
  %369 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %370 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 12
  store i32 %368, i32* %371, align 8
  %372 = load %struct.ta_firmware_header_v1_0*, %struct.ta_firmware_header_v1_0** %12, align 8
  %373 = getelementptr inbounds %struct.ta_firmware_header_v1_0, %struct.ta_firmware_header_v1_0* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @le32_to_cpu(i32 %374)
  %376 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %377 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 13
  store i32 %375, i32* %378, align 4
  %379 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %380 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 17
  %382 = load i32*, i32** %381, align 8
  %383 = load %struct.ta_firmware_header_v1_0*, %struct.ta_firmware_header_v1_0** %12, align 8
  %384 = getelementptr inbounds %struct.ta_firmware_header_v1_0, %struct.ta_firmware_header_v1_0* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @le32_to_cpu(i32 %385)
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %382, i64 %387
  %389 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %390 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 18
  store i32* %388, i32** %391, align 8
  br label %392

392:                                              ; preds = %323, %300
  br label %396

393:                                              ; preds = %240, %240, %240, %240
  br label %396

394:                                              ; preds = %240
  %395 = call i32 (...) @BUG()
  br label %396

396:                                              ; preds = %394, %393, %392
  store i32 0, i32* %2, align 4
  br label %430

397:                                              ; preds = %322
  %398 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %399 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 16
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %400, align 8
  %402 = call i32 @release_firmware(%struct.TYPE_9__* %401)
  %403 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %404 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 16
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %405, align 8
  br label %406

406:                                              ; preds = %397, %239, %230
  %407 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %408 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 15
  %410 = load %struct.TYPE_9__*, %struct.TYPE_9__** %409, align 8
  %411 = call i32 @release_firmware(%struct.TYPE_9__* %410)
  %412 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %413 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %413, i32 0, i32 15
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %414, align 8
  br label %415

415:                                              ; preds = %406, %209, %50, %41
  %416 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %417 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 8
  %419 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 0
  %420 = call i32 (i32, i8*, ...) @dev_err(i32 %418, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* %419)
  %421 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %422 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 14
  %424 = load %struct.TYPE_9__*, %struct.TYPE_9__** %423, align 8
  %425 = call i32 @release_firmware(%struct.TYPE_9__* %424)
  %426 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %427 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 14
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %428, align 8
  %429 = load i32, i32* %7, align 4
  store i32 %429, i32* %2, align 4
  br label %430

430:                                              ; preds = %415, %396
  %431 = load i32, i32* %2, align 4
  ret i32 %431
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_9__**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_9__*) #1

declare dso_local i32 @amdgpu_ucode_print_psp_hdr(%struct.TYPE_10__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @release_firmware(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
