; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_debugfs.c_virtio_gpu_debugfs_irq_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_debugfs.c_virtio_gpu_debugfs_irq_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.drm_info_node = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.virtio_gpu_device* }
%struct.virtio_gpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"fence %llu %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @virtio_gpu_debugfs_irq_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_gpu_debugfs_irq_info(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.virtio_gpu_device*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.drm_info_node*
  store %struct.drm_info_node* %10, %struct.drm_info_node** %5, align 8
  %11 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %12 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %16, align 8
  store %struct.virtio_gpu_device* %17, %struct.virtio_gpu_device** %6, align 8
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %20 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = call i64 @atomic64_read(i32* %21)
  %23 = trunc i64 %22 to i32
  %24 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %25 = getelementptr inbounds %struct.virtio_gpu_device, %struct.virtio_gpu_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
