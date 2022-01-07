; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i64 }
%struct.gfx_firmware_header_v1_0 = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.rlc_firmware_header_v1_0 = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tahiti\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pitcairn\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"verde\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"oland\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"hainan\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_pfp.bin\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"amdgpu/%s_me.bin\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"amdgpu/%s_ce.bin\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_rlc.bin\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"gfx6: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v6_0_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v6_0_init_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [30 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %7 = alloca %struct.rlc_firmware_header_v1_0*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %8 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %17 [
    i32 129, label %12
    i32 130, label %13
    i32 128, label %14
    i32 131, label %15
    i32 132, label %16
  ]

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %19

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %19

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %19

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %19

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %19

17:                                               ; preds = %1
  %18 = call i32 (...) @BUG()
  br label %19

19:                                               ; preds = %17, %16, %15, %14, %13, %12
  %20 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @snprintf(i8* %20, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %21)
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @request_firmware(%struct.TYPE_10__** %25, i8* %26, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %200

34:                                               ; preds = %19
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = call i32 @amdgpu_ucode_validate(%struct.TYPE_10__* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %200

43:                                               ; preds = %34
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %50, %struct.gfx_firmware_header_v1_0** %6, align 8
  %51 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %52 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @le32_to_cpu(i32 %54)
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 11
  store i8* %55, i8** %58, align 8
  %59 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %60 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @le32_to_cpu(i32 %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 10
  store i8* %62, i8** %65, align 8
  %66 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @snprintf(i8* %66, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %67)
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @request_firmware(%struct.TYPE_10__** %71, i8* %72, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %43
  br label %200

80:                                               ; preds = %43
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = call i32 @amdgpu_ucode_validate(%struct.TYPE_10__* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %200

89:                                               ; preds = %80
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %96, %struct.gfx_firmware_header_v1_0** %6, align 8
  %97 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %98 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le32_to_cpu(i32 %100)
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 9
  store i8* %101, i8** %104, align 8
  %105 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %106 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @le32_to_cpu(i32 %107)
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 8
  store i8* %108, i8** %111, align 8
  %112 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %113 = load i8*, i8** %3, align 8
  %114 = call i32 @snprintf(i8* %112, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %113)
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %116 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @request_firmware(%struct.TYPE_10__** %117, i8* %118, i32 %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %89
  br label %200

126:                                              ; preds = %89
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = call i32 @amdgpu_ucode_validate(%struct.TYPE_10__* %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %200

135:                                              ; preds = %126
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %142, %struct.gfx_firmware_header_v1_0** %6, align 8
  %143 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %144 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @le32_to_cpu(i32 %146)
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %149 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 7
  store i8* %147, i8** %150, align 8
  %151 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %6, align 8
  %152 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @le32_to_cpu(i32 %153)
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 6
  store i8* %154, i8** %157, align 8
  %158 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %159 = load i8*, i8** %3, align 8
  %160 = call i32 @snprintf(i8* %158, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %159)
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %162 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %165 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %166 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @request_firmware(%struct.TYPE_10__** %163, i8* %164, i32 %167)
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %135
  br label %200

172:                                              ; preds = %135
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %174 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = call i32 @amdgpu_ucode_validate(%struct.TYPE_10__* %176)
  store i32 %177, i32* %5, align 4
  %178 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %179 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to %struct.rlc_firmware_header_v1_0*
  store %struct.rlc_firmware_header_v1_0* %184, %struct.rlc_firmware_header_v1_0** %7, align 8
  %185 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %7, align 8
  %186 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @le32_to_cpu(i32 %188)
  %190 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %191 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 5
  store i8* %189, i8** %192, align 8
  %193 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %7, align 8
  %194 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i8* @le32_to_cpu(i32 %195)
  %197 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %198 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 4
  store i8* %196, i8** %199, align 8
  br label %200

200:                                              ; preds = %172, %171, %134, %125, %88, %79, %42, %33
  %201 = load i32, i32* %5, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %238

203:                                              ; preds = %200
  %204 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %205 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* %204)
  %206 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %207 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 3
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = call i32 @release_firmware(%struct.TYPE_10__* %209)
  %211 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %212 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %213, align 8
  %214 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %215 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = call i32 @release_firmware(%struct.TYPE_10__* %217)
  %219 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %220 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %221, align 8
  %222 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %223 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %224, align 8
  %226 = call i32 @release_firmware(%struct.TYPE_10__* %225)
  %227 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %228 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %229, align 8
  %230 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %231 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = call i32 @release_firmware(%struct.TYPE_10__* %233)
  %235 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %236 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %237, align 8
  br label %238

238:                                              ; preds = %203, %200
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_10__**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(%struct.TYPE_10__*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
