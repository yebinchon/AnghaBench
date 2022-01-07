; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_device.c_nvif_device_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_device.c_nvif_device_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_device = type { i32 }
%struct.nv_device_time_v0 = type { i32 }

@NV_DEVICE_V0_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvif_device_time(%struct.nvif_device* %0) #0 {
  %2 = alloca %struct.nvif_device*, align 8
  %3 = alloca %struct.nv_device_time_v0, align 4
  %4 = alloca i32, align 4
  store %struct.nvif_device* %0, %struct.nvif_device** %2, align 8
  %5 = bitcast %struct.nv_device_time_v0* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  %6 = load %struct.nvif_device*, %struct.nvif_device** %2, align 8
  %7 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %6, i32 0, i32 0
  %8 = load i32, i32* @NV_DEVICE_V0_TIME, align 4
  %9 = call i32 @nvif_object_mthd(i32* %7, i32 %8, %struct.nv_device_time_v0* %3, i32 4)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON_ONCE(i32 %12)
  %14 = getelementptr inbounds %struct.nv_device_time_v0, %struct.nv_device_time_v0* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  ret i32 %15
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nvif_object_mthd(i32*, i32, %struct.nv_device_time_v0*, i32) #2

declare dso_local i32 @WARN_ON_ONCE(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
