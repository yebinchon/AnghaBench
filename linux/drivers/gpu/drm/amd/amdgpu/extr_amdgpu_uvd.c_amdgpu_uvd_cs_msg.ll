; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_cs_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_cs_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_uvd_cs_ctx = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32* }
%struct.amdgpu_bo = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"UVD messages must be 64 byte aligned!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed mapping the UVD) message (%ld)!\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid UVD handle!\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c")Handle 0x%x already in use!\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"No more free UVD handles!\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"UVD handle collision detected!\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Invalid UVD handle 0x%x!\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Illegal UVD message type (%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_bo*, i32)* @amdgpu_uvd_cs_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_uvd_cs_msg(%struct.amdgpu_uvd_cs_ctx* %0, %struct.amdgpu_bo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_uvd_cs_ctx*, align 8
  %6 = alloca %struct.amdgpu_bo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.amdgpu_uvd_cs_ctx* %0, %struct.amdgpu_uvd_cs_ctx** %5, align 8
  store %struct.amdgpu_bo* %1, %struct.amdgpu_bo** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  store %struct.amdgpu_device* %19, %struct.amdgpu_device** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 63
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %206

27:                                               ; preds = %3
  %28 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %29 = call i64 @amdgpu_bo_kmap(%struct.amdgpu_bo* %28, i8** %12)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i64, i64* %13, align 8
  %34 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %13, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  br label %206

37:                                               ; preds = %27
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr i8, i8* %38, i64 %40
  %42 = bitcast i8* %41 to i64*
  store i64* %42, i64** %9, align 8
  %43 = load i64*, i64** %9, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %10, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %37
  %52 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %206

55:                                               ; preds = %37
  %56 = load i64, i64* %10, align 8
  switch i64 %56, label %201 [
    i64 0, label %57
    i64 1, label %115
    i64 2, label %177
  ]

57:                                               ; preds = %55
  %58 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %59 = call i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo* %58)
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %108, %57
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %111

67:                                               ; preds = %60
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %69 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i64 @atomic_read(i32* %74)
  %76 = load i64, i64* %11, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load i64, i64* %11, align 8
  %80 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %206

83:                                               ; preds = %67
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @atomic_cmpxchg(i32* %90, i64 0, i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %83
  %95 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %99, i32* %106, align 4
  store i32 0, i32* %4, align 4
  br label %206

107:                                              ; preds = %83
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %60

111:                                              ; preds = %60
  %112 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %113 = load i32, i32* @ENOSPC, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %206

115:                                              ; preds = %55
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %117 = load i64*, i64** %9, align 8
  %118 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %5, align 8
  %119 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @amdgpu_uvd_cs_msg_decode(%struct.amdgpu_device* %116, i64* %117, i32 %120)
  store i64 %121, i64* %13, align 8
  %122 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %123 = call i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo* %122)
  %124 = load i64, i64* %13, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %115
  %127 = load i64, i64* %13, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %4, align 4
  br label %206

129:                                              ; preds = %115
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %169, %129
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %133 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %131, %135
  br i1 %136, label %137, label %172

137:                                              ; preds = %130
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = call i64 @atomic_read(i32* %144)
  %146 = load i64, i64* %11, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %168

148:                                              ; preds = %137
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %150 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %5, align 8
  %158 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %157, i32 0, i32 0
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %156, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %148
  %164 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %4, align 4
  br label %206

167:                                              ; preds = %148
  store i32 0, i32* %4, align 4
  br label %206

168:                                              ; preds = %137
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %130

172:                                              ; preds = %130
  %173 = load i64, i64* %11, align 8
  %174 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 %173)
  %175 = load i32, i32* @ENOENT, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %4, align 4
  br label %206

177:                                              ; preds = %55
  store i32 0, i32* %14, align 4
  br label %178

178:                                              ; preds = %195, %177
  %179 = load i32, i32* %14, align 4
  %180 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %181 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %179, %183
  br i1 %184, label %185, label %198

185:                                              ; preds = %178
  %186 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %187 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %14, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i64, i64* %11, align 8
  %194 = call i32 @atomic_cmpxchg(i32* %192, i64 %193, i64 0)
  br label %195

195:                                              ; preds = %185
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %178

198:                                              ; preds = %178
  %199 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %200 = call i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo* %199)
  store i32 0, i32* %4, align 4
  br label %206

201:                                              ; preds = %55
  %202 = load i64, i64* %10, align 8
  %203 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %202)
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %201, %198, %172, %167, %163, %126, %111, %94, %78, %51, %32, %23
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i64 @amdgpu_bo_kmap(%struct.amdgpu_bo*, i8**) #1

declare dso_local i32 @amdgpu_bo_kunmap(%struct.amdgpu_bo*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i64, i64) #1

declare dso_local i64 @amdgpu_uvd_cs_msg_decode(%struct.amdgpu_device*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
