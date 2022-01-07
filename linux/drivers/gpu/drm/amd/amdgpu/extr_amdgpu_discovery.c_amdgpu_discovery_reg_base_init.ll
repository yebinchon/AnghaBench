; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_discovery.c_amdgpu_discovery_reg_base_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_discovery.c_amdgpu_discovery_reg_base_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32*** }
%struct.binary_header = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ip_discovery_header = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.die_header = type { i32, i32 }
%struct.ip = type { i32, i64, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"ip discovery uninitialized\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IP_DISCOVERY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"number of dies: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid die id %d, expected %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"number of hardware IPs on die%d: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%s(%d) #%d v%d.%d.%d:\0A\00", align 1
@hw_id_names = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"\090x%08x\0A\00", align 1
@MAX_HWIP = common dso_local global i32 0, align 4
@hw_id_map = common dso_local global i64* null, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"set register base offset for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_discovery_reg_base_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.binary_header*, align 8
  %5 = alloca %struct.ip_discovery_header*, align 8
  %6 = alloca %struct.die_header*, align 8
  %7 = alloca %struct.ip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %239

25:                                               ; preds = %1
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to %struct.binary_header*
  store %struct.binary_header* %30, %struct.binary_header** %4, align 8
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load %struct.binary_header*, %struct.binary_header** %4, align 8
  %36 = getelementptr inbounds %struct.binary_header, %struct.binary_header* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i64, i64* @IP_DISCOVERY, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le16_to_cpu(i32 %41)
  %43 = add i64 %34, %42
  %44 = inttoptr i64 %43 to %struct.ip_discovery_header*
  store %struct.ip_discovery_header* %44, %struct.ip_discovery_header** %5, align 8
  %45 = load %struct.ip_discovery_header*, %struct.ip_discovery_header** %5, align 8
  %46 = getelementptr inbounds %struct.ip_discovery_header, %struct.ip_discovery_header* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @le16_to_cpu(i32 %47)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %235, %25
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %238

56:                                               ; preds = %52
  %57 = load %struct.ip_discovery_header*, %struct.ip_discovery_header** %5, align 8
  %58 = getelementptr inbounds %struct.ip_discovery_header, %struct.ip_discovery_header* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @le16_to_cpu(i32 %64)
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to %struct.die_header*
  store %struct.die_header* %73, %struct.die_header** %6, align 8
  %74 = load %struct.die_header*, %struct.die_header** %6, align 8
  %75 = getelementptr inbounds %struct.die_header, %struct.die_header* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @le16_to_cpu(i32 %76)
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %9, align 4
  %83 = load %struct.die_header*, %struct.die_header** %6, align 8
  %84 = getelementptr inbounds %struct.die_header, %struct.die_header* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @le16_to_cpu(i32 %85)
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp ne i64 %86, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %56
  %91 = load %struct.die_header*, %struct.die_header** %6, align 8
  %92 = getelementptr inbounds %struct.die_header, %struct.die_header* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @le16_to_cpu(i32 %93)
  %95 = load i32, i32* %14, align 4
  %96 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %94, i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %239

99:                                               ; preds = %56
  %100 = load %struct.die_header*, %struct.die_header** %6, align 8
  %101 = getelementptr inbounds %struct.die_header, %struct.die_header* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @le16_to_cpu(i32 %102)
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* %11, align 4
  %106 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %105)
  store i32 0, i32* %15, align 4
  br label %107

107:                                              ; preds = %231, %99
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %234

111:                                              ; preds = %107
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to %struct.ip*
  store %struct.ip* %118, %struct.ip** %7, align 8
  %119 = load %struct.ip*, %struct.ip** %7, align 8
  %120 = getelementptr inbounds %struct.ip, %struct.ip* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %12, align 4
  %122 = load i32*, i32** @hw_id_names, align 8
  %123 = load %struct.ip*, %struct.ip** %7, align 8
  %124 = getelementptr inbounds %struct.ip, %struct.ip* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @le16_to_cpu(i32 %125)
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ip*, %struct.ip** %7, align 8
  %130 = getelementptr inbounds %struct.ip, %struct.ip* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @le16_to_cpu(i32 %131)
  %133 = load %struct.ip*, %struct.ip** %7, align 8
  %134 = getelementptr inbounds %struct.ip, %struct.ip* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.ip*, %struct.ip** %7, align 8
  %137 = getelementptr inbounds %struct.ip, %struct.ip* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ip*, %struct.ip** %7, align 8
  %140 = getelementptr inbounds %struct.ip, %struct.ip* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ip*, %struct.ip** %7, align 8
  %143 = getelementptr inbounds %struct.ip, %struct.ip* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %128, i64 %132, i64 %135, i32 %138, i32 %141, i32 %144)
  store i32 0, i32* %16, align 4
  br label %146

146:                                              ; preds = %173, %111
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %176

150:                                              ; preds = %146
  %151 = load %struct.ip*, %struct.ip** %7, align 8
  %152 = getelementptr inbounds %struct.ip, %struct.ip* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le32_to_cpu(i32 %157)
  %159 = load %struct.ip*, %struct.ip** %7, align 8
  %160 = getelementptr inbounds %struct.ip, %struct.ip* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %158, i32* %164, align 4
  %165 = load %struct.ip*, %struct.ip** %7, align 8
  %166 = getelementptr inbounds %struct.ip, %struct.ip* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %150
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %16, align 4
  br label %146

176:                                              ; preds = %146
  store i32 0, i32* %13, align 4
  br label %177

177:                                              ; preds = %216, %176
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* @MAX_HWIP, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %219

181:                                              ; preds = %177
  %182 = load i64*, i64** @hw_id_map, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.ip*, %struct.ip** %7, align 8
  %188 = getelementptr inbounds %struct.ip, %struct.ip* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @le16_to_cpu(i32 %189)
  %191 = icmp eq i64 %186, %190
  br i1 %191, label %192, label %215

192:                                              ; preds = %181
  %193 = load i32*, i32** @hw_id_names, align 8
  %194 = load %struct.ip*, %struct.ip** %7, align 8
  %195 = getelementptr inbounds %struct.ip, %struct.ip* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = call i64 @le16_to_cpu(i32 %196)
  %198 = getelementptr inbounds i32, i32* %193, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @DRM_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %199)
  %201 = load %struct.ip*, %struct.ip** %7, align 8
  %202 = getelementptr inbounds %struct.ip, %struct.ip* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %205 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %204, i32 0, i32 1
  %206 = load i32***, i32**** %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32**, i32*** %206, i64 %208
  %210 = load i32**, i32*** %209, align 8
  %211 = load %struct.ip*, %struct.ip** %7, align 8
  %212 = getelementptr inbounds %struct.ip, %struct.ip* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds i32*, i32** %210, i64 %213
  store i32* %203, i32** %214, align 8
  br label %215

215:                                              ; preds = %192, %181
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %13, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %13, align 4
  br label %177

219:                                              ; preds = %177
  %220 = load %struct.ip*, %struct.ip** %7, align 8
  %221 = getelementptr inbounds %struct.ip, %struct.ip* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sub nsw i32 %222, 1
  %224 = mul nsw i32 4, %223
  %225 = sext i32 %224 to i64
  %226 = add i64 40, %225
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = add i64 %228, %226
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %9, align 4
  br label %231

231:                                              ; preds = %219
  %232 = load i32, i32* %15, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %15, align 4
  br label %107

234:                                              ; preds = %107
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %14, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %14, align 4
  br label %52

238:                                              ; preds = %52
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %238, %90, %21
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
