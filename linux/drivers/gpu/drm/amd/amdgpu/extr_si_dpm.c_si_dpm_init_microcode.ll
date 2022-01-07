; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_dpm_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_dpm_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tahiti\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"pitcairn_k\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pitcairn\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"verde_k\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"verde\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"oland_k\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"oland\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"hainan_k\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"banks_k_2\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"hainan\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"amdgpu/%s_smc.bin\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"si_smc: Failed to load firmware. err = %d\22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @si_dpm_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_dpm_init_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [30 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %221 [
    i32 129, label %10
    i32 130, label %11
    i32 128, label %35
    i32 131, label %101
    i32 132, label %153
  ]

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %223

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 129
  br i1 %17, label %18, label %33

18:                                               ; preds = %11
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 26640
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 26641
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %18
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %34

33:                                               ; preds = %25, %11
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %34

34:                                               ; preds = %33, %32
  br label %223

35:                                               ; preds = %1
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 26656
  br i1 %41, label %42, label %56

42:                                               ; preds = %35
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 129
  br i1 %48, label %98, label %49

49:                                               ; preds = %42
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 131
  br i1 %55, label %98, label %56

56:                                               ; preds = %49, %35
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 26657
  br i1 %62, label %63, label %77

63:                                               ; preds = %56
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 3
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 131
  br i1 %69, label %98, label %70

70:                                               ; preds = %63
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 3
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 135
  br i1 %76, label %98, label %77

77:                                               ; preds = %70, %56
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 3
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 135
  br i1 %83, label %84, label %99

84:                                               ; preds = %77
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 3
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 26659
  br i1 %90, label %98, label %91

91:                                               ; preds = %84
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 3
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 26667
  br i1 %97, label %98, label %99

98:                                               ; preds = %91, %84, %70, %63, %49, %42
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %100

99:                                               ; preds = %91, %77
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %100

100:                                              ; preds = %99, %98
  br label %223

101:                                              ; preds = %1
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 3
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 129
  br i1 %107, label %108, label %136

108:                                              ; preds = %101
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 3
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 26112
  br i1 %114, label %150, label %115

115:                                              ; preds = %108
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %117 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %116, i32 0, i32 3
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 26116
  br i1 %121, label %150, label %122

122:                                              ; preds = %115
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 3
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 26117
  br i1 %128, label %150, label %129

129:                                              ; preds = %122
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %131 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %130, i32 0, i32 3
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 26128
  br i1 %135, label %150, label %136

136:                                              ; preds = %129, %101
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %137, i32 0, i32 3
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 131
  br i1 %142, label %143, label %151

143:                                              ; preds = %136
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 3
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 26128
  br i1 %149, label %150, label %151

150:                                              ; preds = %143, %129, %122, %115, %108
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %152

151:                                              ; preds = %143, %136
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %152

152:                                              ; preds = %151, %150
  br label %223

153:                                              ; preds = %1
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %155 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %154, i32 0, i32 3
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 129
  br i1 %159, label %160, label %167

160:                                              ; preds = %153
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %162 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %161, i32 0, i32 3
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 26208
  br i1 %166, label %202, label %167

167:                                              ; preds = %160, %153
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 3
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 131
  br i1 %173, label %174, label %203

174:                                              ; preds = %167
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %176 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %175, i32 0, i32 3
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 26208
  br i1 %180, label %202, label %181

181:                                              ; preds = %174
  %182 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %183 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %182, i32 0, i32 3
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 26211
  br i1 %187, label %202, label %188

188:                                              ; preds = %181
  %189 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %190 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %189, i32 0, i32 3
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 26213
  br i1 %194, label %202, label %195

195:                                              ; preds = %188
  %196 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %197 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %196, i32 0, i32 3
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 26215
  br i1 %201, label %202, label %203

202:                                              ; preds = %195, %188, %181, %174, %160
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %220

203:                                              ; preds = %195, %167
  %204 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %205 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %204, i32 0, i32 3
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 195
  br i1 %209, label %210, label %218

210:                                              ; preds = %203
  %211 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %212 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %211, i32 0, i32 3
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 26213
  br i1 %216, label %217, label %218

217:                                              ; preds = %210
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %219

218:                                              ; preds = %210, %203
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %219

219:                                              ; preds = %218, %217
  br label %220

220:                                              ; preds = %219, %202
  br label %223

221:                                              ; preds = %1
  %222 = call i32 (...) @BUG()
  br label %223

223:                                              ; preds = %221, %220, %152, %100, %34, %10
  %224 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %225 = load i8*, i8** %3, align 8
  %226 = call i32 @snprintf(i8* %224, i32 30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* %225)
  %227 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %228 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %231 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %232 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @request_firmware(i32** %229, i8* %230, i32 %233)
  store i32 %234, i32* %5, align 4
  %235 = load i32, i32* %5, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %223
  br label %244

238:                                              ; preds = %223
  %239 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %240 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = call i32 @amdgpu_ucode_validate(i32* %242)
  store i32 %243, i32* %5, align 4
  br label %244

244:                                              ; preds = %238, %237
  %245 = load i32, i32* %5, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %259

247:                                              ; preds = %244
  %248 = load i32, i32* %5, align 4
  %249 = getelementptr inbounds [30 x i8], [30 x i8]* %4, i64 0, i64 0
  %250 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i32 %248, i8* %249)
  %251 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %252 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @release_firmware(i32* %254)
  %256 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %257 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  store i32* null, i32** %258, align 8
  br label %259

259:                                              ; preds = %247, %244
  %260 = load i32, i32* %5, align 4
  ret i32 %260
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(i32**, i8*, i32) #1

declare dso_local i32 @amdgpu_ucode_validate(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i8*) #1

declare dso_local i32 @release_firmware(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
