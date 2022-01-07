; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_kms.c_amdgpu_hw_ip_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_kms.c_amdgpu_hw_ip_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_54__*, %struct.TYPE_53__, %struct.TYPE_48__, %struct.TYPE_39__, %struct.TYPE_34__, %struct.TYPE_60__ }
%struct.TYPE_54__ = type { %struct.TYPE_52__*, %struct.TYPE_41__ }
%struct.TYPE_52__ = type { i32, i32, i32 }
%struct.TYPE_41__ = type { i64 }
%struct.TYPE_53__ = type { i32, i32, %struct.TYPE_51__* }
%struct.TYPE_51__ = type { %struct.TYPE_50__, %struct.TYPE_47__*, %struct.TYPE_45__ }
%struct.TYPE_50__ = type { %struct.TYPE_49__ }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_47__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_48__ = type { i32, i32, i32, %struct.TYPE_43__* }
%struct.TYPE_43__ = type { %struct.TYPE_42__*, %struct.TYPE_36__ }
%struct.TYPE_42__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_39__ = type { i32, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_60__ = type { i32, i32, %struct.TYPE_59__*, %struct.TYPE_57__* }
%struct.TYPE_59__ = type { %struct.TYPE_58__ }
%struct.TYPE_58__ = type { i32 }
%struct.TYPE_57__ = type { %struct.TYPE_56__ }
%struct.TYPE_56__ = type { i32 }
%struct.drm_amdgpu_info = type { %struct.TYPE_55__ }
%struct.TYPE_55__ = type { i64, i32 }
%struct.drm_amdgpu_info_hw_ip = type { i32, i8*, i8*, i64, i32, i32 }

@AMDGPU_HW_IP_INSTANCE_MAX_COUNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AMD_IP_BLOCK_TYPE_GFX = common dso_local global i32 0, align 4
@AMD_IP_BLOCK_TYPE_SDMA = common dso_local global i32 0, align 4
@AMD_IP_BLOCK_TYPE_UVD = common dso_local global i32 0, align 4
@AMD_IP_BLOCK_TYPE_VCE = common dso_local global i32 0, align 4
@AMD_IP_BLOCK_TYPE_VCN = common dso_local global i32 0, align 4
@amdgpu_ctx_num_entities = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.drm_amdgpu_info*, %struct.drm_amdgpu_info_hw_ip*)* @amdgpu_hw_ip_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_hw_ip_info(%struct.amdgpu_device* %0, %struct.drm_amdgpu_info* %1, %struct.drm_amdgpu_info_hw_ip* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.drm_amdgpu_info*, align 8
  %7 = alloca %struct.drm_amdgpu_info_hw_ip*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.drm_amdgpu_info* %1, %struct.drm_amdgpu_info** %6, align 8
  store %struct.drm_amdgpu_info_hw_ip* %2, %struct.drm_amdgpu_info_hw_ip** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.drm_amdgpu_info*, %struct.drm_amdgpu_info** %6, align 8
  %15 = getelementptr inbounds %struct.drm_amdgpu_info, %struct.drm_amdgpu_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AMDGPU_HW_IP_INSTANCE_MAX_COUNT, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %471

23:                                               ; preds = %3
  %24 = load %struct.drm_amdgpu_info*, %struct.drm_amdgpu_info** %6, align 8
  %25 = getelementptr inbounds %struct.drm_amdgpu_info, %struct.drm_amdgpu_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %377 [
    i32 134, label %28
    i32 136, label %57
    i32 135, label %86
    i32 133, label %116
    i32 131, label %156
    i32 132, label %185
    i32 130, label %241
    i32 129, label %281
    i32 128, label %337
  ]

28:                                               ; preds = %23
  %29 = load i32, i32* @AMD_IP_BLOCK_TYPE_GFX, align 4
  store i32 %29, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %53, %28
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %31, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %30
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_57__*, %struct.TYPE_57__** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* %11, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %37
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %12, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %30

56:                                               ; preds = %30
  store i8* inttoptr (i64 32 to i8*), i8** %8, align 8
  store i8* inttoptr (i64 32 to i8*), i8** %9, align 8
  br label %380

57:                                               ; preds = %23
  %58 = load i32, i32* @AMD_IP_BLOCK_TYPE_GFX, align 4
  store i32 %58, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %82, %57
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ult i32 %60, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %59
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_59__*, %struct.TYPE_59__** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load i32, i32* %11, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %78, %66
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %12, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %59

85:                                               ; preds = %59
  store i8* inttoptr (i64 32 to i8*), i8** %8, align 8
  store i8* inttoptr (i64 32 to i8*), i8** %9, align 8
  br label %380

86:                                               ; preds = %23
  %87 = load i32, i32* @AMD_IP_BLOCK_TYPE_SDMA, align 4
  store i32 %87, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %88

88:                                               ; preds = %112, %86
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ult i32 %89, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %88
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %95
  %109 = load i32, i32* %11, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %108, %95
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %12, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %88

115:                                              ; preds = %88
  store i8* inttoptr (i64 256 to i8*), i8** %8, align 8
  store i8* inttoptr (i64 4 to i8*), i8** %9, align 8
  br label %380

116:                                              ; preds = %23
  %117 = load i32, i32* @AMD_IP_BLOCK_TYPE_UVD, align 4
  store i32 %117, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %152, %116
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %121 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ult i32 %119, %123
  br i1 %124, label %125, label %155

125:                                              ; preds = %118
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %127 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %12, align 4
  %131 = shl i32 1, %130
  %132 = and i32 %129, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %152

135:                                              ; preds = %125
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_43__*, %struct.TYPE_43__** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %135
  %149 = load i32, i32* %11, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %11, align 4
  br label %151

151:                                              ; preds = %148, %135
  br label %152

152:                                              ; preds = %151, %134
  %153 = load i32, i32* %12, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %12, align 4
  br label %118

155:                                              ; preds = %118
  store i8* inttoptr (i64 64 to i8*), i8** %8, align 8
  store i8* inttoptr (i64 64 to i8*), i8** %9, align 8
  br label %380

156:                                              ; preds = %23
  %157 = load i32, i32* @AMD_IP_BLOCK_TYPE_VCE, align 4
  store i32 %157, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %158

158:                                              ; preds = %181, %156
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %161 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ult i32 %159, %163
  br i1 %164, label %165, label %184

165:                                              ; preds = %158
  %166 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %167 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_38__*, %struct.TYPE_38__** %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %165
  %178 = load i32, i32* %11, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %11, align 4
  br label %180

180:                                              ; preds = %177, %165
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %12, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %12, align 4
  br label %158

184:                                              ; preds = %158
  store i8* inttoptr (i64 4 to i8*), i8** %8, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %9, align 8
  br label %380

185:                                              ; preds = %23
  %186 = load i32, i32* @AMD_IP_BLOCK_TYPE_UVD, align 4
  store i32 %186, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %187

187:                                              ; preds = %237, %185
  %188 = load i32, i32* %12, align 4
  %189 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %190 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ult i32 %188, %192
  br i1 %193, label %194, label %240

194:                                              ; preds = %187
  %195 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %196 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %12, align 4
  %200 = shl i32 1, %199
  %201 = and i32 %198, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  br label %237

204:                                              ; preds = %194
  store i32 0, i32* %13, align 4
  br label %205

205:                                              ; preds = %233, %204
  %206 = load i32, i32* %13, align 4
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %208 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = icmp ult i32 %206, %210
  br i1 %211, label %212, label %236

212:                                              ; preds = %205
  %213 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %214 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_43__*, %struct.TYPE_43__** %215, align 8
  %217 = load i32, i32* %12, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_42__*, %struct.TYPE_42__** %220, align 8
  %222 = load i32, i32* %13, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %212
  %230 = load i32, i32* %11, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %11, align 4
  br label %232

232:                                              ; preds = %229, %212
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %13, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %13, align 4
  br label %205

236:                                              ; preds = %205
  br label %237

237:                                              ; preds = %236, %203
  %238 = load i32, i32* %12, align 4
  %239 = add i32 %238, 1
  store i32 %239, i32* %12, align 4
  br label %187

240:                                              ; preds = %187
  store i8* inttoptr (i64 64 to i8*), i8** %8, align 8
  store i8* inttoptr (i64 64 to i8*), i8** %9, align 8
  br label %380

241:                                              ; preds = %23
  %242 = load i32, i32* @AMD_IP_BLOCK_TYPE_VCN, align 4
  store i32 %242, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %243

243:                                              ; preds = %277, %241
  %244 = load i32, i32* %12, align 4
  %245 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %246 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp ult i32 %244, %248
  br i1 %249, label %250, label %280

250:                                              ; preds = %243
  %251 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %252 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %12, align 4
  %256 = shl i32 1, %255
  %257 = and i32 %254, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %250
  br label %277

260:                                              ; preds = %250
  %261 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %262 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_51__*, %struct.TYPE_51__** %263, align 8
  %265 = load i32, i32* %12, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %260
  %274 = load i32, i32* %11, align 4
  %275 = add i32 %274, 1
  store i32 %275, i32* %11, align 4
  br label %276

276:                                              ; preds = %273, %260
  br label %277

277:                                              ; preds = %276, %259
  %278 = load i32, i32* %12, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %12, align 4
  br label %243

280:                                              ; preds = %243
  store i8* inttoptr (i64 16 to i8*), i8** %8, align 8
  store i8* inttoptr (i64 16 to i8*), i8** %9, align 8
  br label %380

281:                                              ; preds = %23
  %282 = load i32, i32* @AMD_IP_BLOCK_TYPE_VCN, align 4
  store i32 %282, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %283

283:                                              ; preds = %333, %281
  %284 = load i32, i32* %12, align 4
  %285 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %286 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = icmp ult i32 %284, %288
  br i1 %289, label %290, label %336

290:                                              ; preds = %283
  %291 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %292 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %12, align 4
  %296 = shl i32 1, %295
  %297 = and i32 %294, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %290
  br label %333

300:                                              ; preds = %290
  store i32 0, i32* %13, align 4
  br label %301

301:                                              ; preds = %329, %300
  %302 = load i32, i32* %13, align 4
  %303 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %304 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = icmp ult i32 %302, %306
  br i1 %307, label %308, label %332

308:                                              ; preds = %301
  %309 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %310 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %310, i32 0, i32 2
  %312 = load %struct.TYPE_51__*, %struct.TYPE_51__** %311, align 8
  %313 = load i32, i32* %12, align 4
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_47__*, %struct.TYPE_47__** %316, align 8
  %318 = load i32, i32* %13, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %308
  %326 = load i32, i32* %11, align 4
  %327 = add i32 %326, 1
  store i32 %327, i32* %11, align 4
  br label %328

328:                                              ; preds = %325, %308
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %13, align 4
  %331 = add i32 %330, 1
  store i32 %331, i32* %13, align 4
  br label %301

332:                                              ; preds = %301
  br label %333

333:                                              ; preds = %332, %299
  %334 = load i32, i32* %12, align 4
  %335 = add i32 %334, 1
  store i32 %335, i32* %12, align 4
  br label %283

336:                                              ; preds = %283
  store i8* inttoptr (i64 64 to i8*), i8** %8, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %9, align 8
  br label %380

337:                                              ; preds = %23
  %338 = load i32, i32* @AMD_IP_BLOCK_TYPE_VCN, align 4
  store i32 %338, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %339

339:                                              ; preds = %373, %337
  %340 = load i32, i32* %12, align 4
  %341 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %342 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp ult i32 %340, %344
  br i1 %345, label %346, label %376

346:                                              ; preds = %339
  %347 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %348 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* %12, align 4
  %352 = shl i32 1, %351
  %353 = and i32 %350, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %346
  br label %373

356:                                              ; preds = %346
  %357 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %358 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %358, i32 0, i32 2
  %360 = load %struct.TYPE_51__*, %struct.TYPE_51__** %359, align 8
  %361 = load i32, i32* %12, align 4
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %356
  %370 = load i32, i32* %11, align 4
  %371 = add i32 %370, 1
  store i32 %371, i32* %11, align 4
  br label %372

372:                                              ; preds = %369, %356
  br label %373

373:                                              ; preds = %372, %355
  %374 = load i32, i32* %12, align 4
  %375 = add i32 %374, 1
  store i32 %375, i32* %12, align 4
  br label %339

376:                                              ; preds = %339
  store i8* inttoptr (i64 16 to i8*), i8** %8, align 8
  store i8* inttoptr (i64 16 to i8*), i8** %9, align 8
  br label %380

377:                                              ; preds = %23
  %378 = load i32, i32* @EINVAL, align 4
  %379 = sub nsw i32 0, %378
  store i32 %379, i32* %4, align 4
  br label %471

380:                                              ; preds = %376, %336, %280, %240, %184, %155, %115, %85, %56
  store i32 0, i32* %12, align 4
  br label %381

381:                                              ; preds = %413, %380
  %382 = load i32, i32* %12, align 4
  %383 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %384 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = icmp ult i32 %382, %385
  br i1 %386, label %387, label %416

387:                                              ; preds = %381
  %388 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %389 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %388, i32 0, i32 1
  %390 = load %struct.TYPE_54__*, %struct.TYPE_54__** %389, align 8
  %391 = load i32, i32* %12, align 4
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %393, i32 0, i32 0
  %395 = load %struct.TYPE_52__*, %struct.TYPE_52__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %10, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %412

400:                                              ; preds = %387
  %401 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %402 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %401, i32 0, i32 1
  %403 = load %struct.TYPE_54__*, %struct.TYPE_54__** %402, align 8
  %404 = load i32, i32* %12, align 4
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %400
  br label %416

412:                                              ; preds = %400, %387
  br label %413

413:                                              ; preds = %412
  %414 = load i32, i32* %12, align 4
  %415 = add i32 %414, 1
  store i32 %415, i32* %12, align 4
  br label %381

416:                                              ; preds = %411, %381
  %417 = load i32, i32* %12, align 4
  %418 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %419 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = icmp eq i32 %417, %420
  br i1 %421, label %422, label %423

422:                                              ; preds = %416
  store i32 0, i32* %4, align 4
  br label %471

423:                                              ; preds = %416
  %424 = load i32*, i32** @amdgpu_ctx_num_entities, align 8
  %425 = load %struct.drm_amdgpu_info*, %struct.drm_amdgpu_info** %6, align 8
  %426 = getelementptr inbounds %struct.drm_amdgpu_info, %struct.drm_amdgpu_info* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %424, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* %11, align 4
  %433 = call i32 @min(i32 %431, i32 %432)
  store i32 %433, i32* %11, align 4
  %434 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %435 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %434, i32 0, i32 1
  %436 = load %struct.TYPE_54__*, %struct.TYPE_54__** %435, align 8
  %437 = load i32, i32* %12, align 4
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %436, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %439, i32 0, i32 0
  %441 = load %struct.TYPE_52__*, %struct.TYPE_52__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 4
  %444 = load %struct.drm_amdgpu_info_hw_ip*, %struct.drm_amdgpu_info_hw_ip** %7, align 8
  %445 = getelementptr inbounds %struct.drm_amdgpu_info_hw_ip, %struct.drm_amdgpu_info_hw_ip* %444, i32 0, i32 5
  store i32 %443, i32* %445, align 4
  %446 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %447 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %446, i32 0, i32 1
  %448 = load %struct.TYPE_54__*, %struct.TYPE_54__** %447, align 8
  %449 = load i32, i32* %12, align 4
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %448, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %451, i32 0, i32 0
  %453 = load %struct.TYPE_52__*, %struct.TYPE_52__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.drm_amdgpu_info_hw_ip*, %struct.drm_amdgpu_info_hw_ip** %7, align 8
  %457 = getelementptr inbounds %struct.drm_amdgpu_info_hw_ip, %struct.drm_amdgpu_info_hw_ip* %456, i32 0, i32 4
  store i32 %455, i32* %457, align 8
  %458 = load %struct.drm_amdgpu_info_hw_ip*, %struct.drm_amdgpu_info_hw_ip** %7, align 8
  %459 = getelementptr inbounds %struct.drm_amdgpu_info_hw_ip, %struct.drm_amdgpu_info_hw_ip* %458, i32 0, i32 3
  store i64 0, i64* %459, align 8
  %460 = load i32, i32* %11, align 4
  %461 = shl i32 1, %460
  %462 = sub nsw i32 %461, 1
  %463 = load %struct.drm_amdgpu_info_hw_ip*, %struct.drm_amdgpu_info_hw_ip** %7, align 8
  %464 = getelementptr inbounds %struct.drm_amdgpu_info_hw_ip, %struct.drm_amdgpu_info_hw_ip* %463, i32 0, i32 0
  store i32 %462, i32* %464, align 8
  %465 = load i8*, i8** %8, align 8
  %466 = load %struct.drm_amdgpu_info_hw_ip*, %struct.drm_amdgpu_info_hw_ip** %7, align 8
  %467 = getelementptr inbounds %struct.drm_amdgpu_info_hw_ip, %struct.drm_amdgpu_info_hw_ip* %466, i32 0, i32 2
  store i8* %465, i8** %467, align 8
  %468 = load i8*, i8** %9, align 8
  %469 = load %struct.drm_amdgpu_info_hw_ip*, %struct.drm_amdgpu_info_hw_ip** %7, align 8
  %470 = getelementptr inbounds %struct.drm_amdgpu_info_hw_ip, %struct.drm_amdgpu_info_hw_ip* %469, i32 0, i32 1
  store i8* %468, i8** %470, align 8
  store i32 0, i32* %4, align 4
  br label %471

471:                                              ; preds = %423, %422, %377, %20
  %472 = load i32, i32* %4, align 4
  ret i32 %472
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
