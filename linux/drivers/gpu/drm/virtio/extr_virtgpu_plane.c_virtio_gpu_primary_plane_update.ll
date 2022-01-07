; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_plane.c_virtio_gpu_primary_plane_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_plane.c_virtio_gpu_primary_plane_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_4__*, %struct.drm_device* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.drm_device = type { %struct.virtio_gpu_device* }
%struct.virtio_gpu_device = type { i32 }
%struct.drm_plane_state = type { i64 }
%struct.virtio_gpu_output = type { i32, i64 }
%struct.virtio_gpu_framebuffer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.virtio_gpu_object = type { i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"handle 0x%x, crtc %dx%d+%d+%d, src %dx%d+%d+%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @virtio_gpu_primary_plane_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_gpu_primary_plane_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.virtio_gpu_device*, align 8
  %7 = alloca %struct.virtio_gpu_output*, align 8
  %8 = alloca %struct.virtio_gpu_framebuffer*, align 8
  %9 = alloca %struct.virtio_gpu_object*, align 8
  %10 = alloca i64, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %15, align 8
  store %struct.virtio_gpu_device* %16, %struct.virtio_gpu_device** %6, align 8
  store %struct.virtio_gpu_output* null, %struct.virtio_gpu_output** %7, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %25 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 9
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.virtio_gpu_output* @drm_crtc_to_virtio_gpu_output(i64 %28)
  store %struct.virtio_gpu_output* %29, %struct.virtio_gpu_output** %7, align 8
  br label %30

30:                                               ; preds = %23, %2
  %31 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %32 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %37 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call %struct.virtio_gpu_output* @drm_crtc_to_virtio_gpu_output(i64 %38)
  store %struct.virtio_gpu_output* %39, %struct.virtio_gpu_output** %7, align 8
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %42 = icmp ne %struct.virtio_gpu_output* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %222

48:                                               ; preds = %40
  %49 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %50 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %114

55:                                               ; preds = %48
  %56 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %57 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %114

60:                                               ; preds = %55
  %61 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %62 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = call %struct.virtio_gpu_framebuffer* @to_virtio_gpu_framebuffer(i64 %65)
  store %struct.virtio_gpu_framebuffer* %66, %struct.virtio_gpu_framebuffer** %8, align 8
  %67 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %8, align 8
  %68 = getelementptr inbounds %struct.virtio_gpu_framebuffer, %struct.virtio_gpu_framebuffer* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.virtio_gpu_object* @gem_to_virtio_gpu_obj(i32 %72)
  store %struct.virtio_gpu_object* %73, %struct.virtio_gpu_object** %9, align 8
  %74 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %9, align 8
  %75 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %10, align 8
  %77 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %9, align 8
  %78 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %113

81:                                               ; preds = %60
  %82 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %83 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %9, align 8
  %84 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %85 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = ashr i32 %88, 16
  %90 = call i32 @cpu_to_le32(i32 %89)
  %91 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %92 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 16
  %97 = call i32 @cpu_to_le32(i32 %96)
  %98 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %99 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = ashr i32 %102, 16
  %104 = call i32 @cpu_to_le32(i32 %103)
  %105 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %106 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 16
  %111 = call i32 @cpu_to_le32(i32 %110)
  %112 = call i32 @virtio_gpu_cmd_transfer_to_host_2d(%struct.virtio_gpu_device* %82, %struct.virtio_gpu_object* %83, i32 0, i32 %90, i32 %97, i32 %104, i32 %111, i32* null)
  br label %113

113:                                              ; preds = %81, %60
  br label %115

114:                                              ; preds = %55, %48
  store i64 0, i64* %10, align 8
  br label %115

115:                                              ; preds = %114, %113
  %116 = load i64, i64* %10, align 8
  %117 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %118 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %123 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %128 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %133 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %138 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = ashr i32 %141, 16
  %143 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %144 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = ashr i32 %147, 16
  %149 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %150 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %149, i32 0, i32 0
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = ashr i32 %153, 16
  %155 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %156 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %155, i32 0, i32 0
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 16
  %161 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %116, i32 %121, i32 %126, i32 %131, i32 %136, i32 %142, i32 %148, i32 %154, i32 %160)
  %162 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %163 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %164 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i64, i64* %10, align 8
  %167 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %168 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %167, i32 0, i32 0
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = ashr i32 %171, 16
  %173 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %174 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = ashr i32 %177, 16
  %179 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %180 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %179, i32 0, i32 0
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = ashr i32 %183, 16
  %185 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %186 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = ashr i32 %189, 16
  %191 = call i32 @virtio_gpu_cmd_set_scanout(%struct.virtio_gpu_device* %162, i32 %165, i64 %166, i32 %172, i32 %178, i32 %184, i32 %190)
  %192 = load i64, i64* %10, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %222

194:                                              ; preds = %115
  %195 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %196 = load i64, i64* %10, align 8
  %197 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %198 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %197, i32 0, i32 0
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = ashr i32 %201, 16
  %203 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %204 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %203, i32 0, i32 0
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = ashr i32 %207, 16
  %209 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %210 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %209, i32 0, i32 0
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = ashr i32 %213, 16
  %215 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %216 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %215, i32 0, i32 0
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = ashr i32 %219, 16
  %221 = call i32 @virtio_gpu_cmd_resource_flush(%struct.virtio_gpu_device* %195, i64 %196, i32 %202, i32 %208, i32 %214, i32 %220)
  br label %222

222:                                              ; preds = %47, %194, %115
  ret void
}

declare dso_local %struct.virtio_gpu_output* @drm_crtc_to_virtio_gpu_output(i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.virtio_gpu_framebuffer* @to_virtio_gpu_framebuffer(i64) #1

declare dso_local %struct.virtio_gpu_object* @gem_to_virtio_gpu_obj(i32) #1

declare dso_local i32 @virtio_gpu_cmd_transfer_to_host_2d(%struct.virtio_gpu_device*, %struct.virtio_gpu_object*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @virtio_gpu_cmd_set_scanout(%struct.virtio_gpu_device*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @virtio_gpu_cmd_resource_flush(%struct.virtio_gpu_device*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
