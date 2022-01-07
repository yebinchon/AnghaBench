; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"bonaire\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hawaii\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"kaveri\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"kabini\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"mullins\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_pfp.bin\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"amdgpu/%s_me.bin\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"amdgpu/%s_ce.bin\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_mec.bin\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"amdgpu/%s_mec2.bin\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_rlc.bin\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"gfx7: Failed to load firmware \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v7_0_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v7_0_init_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [30 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %15 [
    i32 132, label %10
    i32 131, label %11
    i32 129, label %12
    i32 130, label %13
    i32 128, label %14
  ]

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %17

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %17

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %17

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %17

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %17

15:                                               ; preds = %1
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %15, %14, %13, %12, %11, %10
  %18 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @snprintf(i8* %18, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %19)
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  %24 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @request_firmware(i32** %23, i8* %24, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %164

32:                                               ; preds = %17
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @amdgpu_ucode_validate(i32* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %164

41:                                               ; preds = %32
  %42 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @snprintf(i8* %42, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %43)
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  %48 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @request_firmware(i32** %47, i8* %48, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %164

56:                                               ; preds = %41
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @amdgpu_ucode_validate(i32* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %164

65:                                               ; preds = %56
  %66 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @snprintf(i8* %66, i32 30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %67)
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @request_firmware(i32** %71, i8* %72, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %164

80:                                               ; preds = %65
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @amdgpu_ucode_validate(i32* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %164

89:                                               ; preds = %80
  %90 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %91 = load i8*, i8** %3, align 8
  %92 = call i32 @snprintf(i8* %90, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %91)
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @request_firmware(i32** %95, i8* %96, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %164

104:                                              ; preds = %89
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %106 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @amdgpu_ucode_validate(i32* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %164

113:                                              ; preds = %104
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %115 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 129
  br i1 %117, label %118, label %143

118:                                              ; preds = %113
  %119 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %120 = load i8*, i8** %3, align 8
  %121 = call i32 @snprintf(i8* %119, i32 30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %120)
  %122 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %123 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %127 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @request_firmware(i32** %124, i8* %125, i32 %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %118
  br label %164

133:                                              ; preds = %118
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %135 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @amdgpu_ucode_validate(i32* %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %164

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %113
  %144 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %145 = load i8*, i8** %3, align 8
  %146 = call i32 @snprintf(i8* %144, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* %145)
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %152 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @request_firmware(i32** %149, i8* %150, i32 %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %143
  br label %164

158:                                              ; preds = %143
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %160 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @amdgpu_ucode_validate(i32* %162)
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %158, %157, %141, %132, %112, %103, %88, %79, %64, %55, %40, %31
  %165 = load i32, i32* %5, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %218

167:                                              ; preds = %164
  %168 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %169 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* %168)
  %170 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %171 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 5
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @release_firmware(i32* %173)
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %176 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 5
  store i32* null, i32** %177, align 8
  %178 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %179 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 4
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @release_firmware(i32* %181)
  %183 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %184 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 4
  store i32* null, i32** %185, align 8
  %186 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %187 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @release_firmware(i32* %189)
  %191 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %192 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 3
  store i32* null, i32** %193, align 8
  %194 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %195 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @release_firmware(i32* %197)
  %199 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %200 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 2
  store i32* null, i32** %201, align 8
  %202 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %203 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @release_firmware(i32* %205)
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %208 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 1
  store i32* null, i32** %209, align 8
  %210 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %211 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @release_firmware(i32* %213)
  %215 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %216 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  store i32* null, i32** %217, align 8
  br label %218

218:                                              ; preds = %167, %164
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(i32**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(i32*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @release_firmware(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
