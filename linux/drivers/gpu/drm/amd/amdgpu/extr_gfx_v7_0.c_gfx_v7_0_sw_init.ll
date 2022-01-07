; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32* }
%struct.amdgpu_device = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32, %struct.amdgpu_ring*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.amdgpu_device*)* }

@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to load gfx firmware!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to init rlc BOs!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to init MEC BOs!\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"gfx\00", align 1
@AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v7_0_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v7_0_sw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %5, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %22 [
    i32 129, label %16
    i32 132, label %21
    i32 131, label %21
    i32 130, label %21
    i32 128, label %21
  ]

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 2, i32* %20, align 8
  br label %27

21:                                               ; preds = %1, %1, %1, %1
  br label %22

22:                                               ; preds = %1, %21
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 4, i32* %31, align 4
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store i32 8, i32* %35, align 8
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %37 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %36, i32 %37, i32 181, i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %27
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %2, align 4
  br label %205

46:                                               ; preds = %27
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %48 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 7
  %52 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %47, i32 %48, i32 184, i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %2, align 4
  br label %205

57:                                               ; preds = %46
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %59 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 6
  %63 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %58, i32 %59, i32 185, i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %2, align 4
  br label %205

68:                                               ; preds = %57
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %70 = call i32 @gfx_v7_0_scratch_init(%struct.amdgpu_device* %69)
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %72 = call i32 @gfx_v7_0_init_microcode(%struct.amdgpu_device* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %2, align 4
  br label %205

78:                                               ; preds = %68
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %84, align 8
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %87 = call i32 %85(%struct.amdgpu_device* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %2, align 4
  br label %205

93:                                               ; preds = %78
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %95 = call i32 @gfx_v7_0_mec_init(%struct.amdgpu_device* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %2, align 4
  br label %205

101:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %135, %101
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %103, %107
  br i1 %108, label %109, label %138

109:                                              ; preds = %102
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 4
  %113 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %113, i64 %115
  store %struct.amdgpu_ring* %116, %struct.amdgpu_ring** %4, align 8
  %117 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %118 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %117, i32 0, i32 1
  store i32* null, i32** %118, align 8
  %119 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %120 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @sprintf(i32 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %124 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %126 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 3
  %128 = load i32, i32* @AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP, align 4
  %129 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %123, %struct.amdgpu_ring* %124, i32 1024, i32* %127, i32 %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %109
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %2, align 4
  br label %205

134:                                              ; preds = %109
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %102

138:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %195, %138
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %142 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %140, %145
  br i1 %146, label %147, label %198

147:                                              ; preds = %139
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %191, %147
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %151 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %149, %154
  br i1 %155, label %156, label %194

156:                                              ; preds = %148
  store i32 0, i32* %8, align 4
  br label %157

157:                                              ; preds = %187, %156
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %160 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %158, %163
  br i1 %164, label %165, label %190

165:                                              ; preds = %157
  %166 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @amdgpu_gfx_is_mec_queue_enabled(%struct.amdgpu_device* %166, i32 %167, i32 %168, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %165
  br label %187

173:                                              ; preds = %165
  %174 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @gfx_v7_0_compute_ring_init(%struct.amdgpu_device* %174, i32 %175, i32 %176, i32 %177, i32 %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %173
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %2, align 4
  br label %205

184:                                              ; preds = %173
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %184, %172
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  br label %157

190:                                              ; preds = %157
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %7, align 4
  br label %148

194:                                              ; preds = %148
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  br label %139

198:                                              ; preds = %139
  %199 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %200 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  store i32 32768, i32* %201, align 4
  %202 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %203 = call i32 @gfx_v7_0_gpu_early_init(%struct.amdgpu_device* %202)
  %204 = load i32, i32* %9, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %198, %182, %132, %98, %90, %75, %66, %55, %44
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, i32*) #1

declare dso_local i32 @gfx_v7_0_scratch_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v7_0_init_microcode(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @gfx_v7_0_mec_init(%struct.amdgpu_device*) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

declare dso_local i32 @amdgpu_gfx_is_mec_queue_enabled(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @gfx_v7_0_compute_ring_init(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v7_0_gpu_early_init(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
