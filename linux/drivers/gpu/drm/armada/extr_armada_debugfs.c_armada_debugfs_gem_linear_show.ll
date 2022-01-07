; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_debugfs.c_armada_debugfs_gem_linear_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_debugfs.c_armada_debugfs_gem_linear_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_info_node* }
%struct.drm_info_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.armada_private* }
%struct.armada_private = type { i32, i32 }
%struct.drm_printer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @armada_debugfs_gem_linear_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_debugfs_gem_linear_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.armada_private*, align 8
  %8 = alloca %struct.drm_printer, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.drm_info_node*, %struct.drm_info_node** %10, align 8
  store %struct.drm_info_node* %11, %struct.drm_info_node** %5, align 8
  %12 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %13 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.armada_private*, %struct.armada_private** %18, align 8
  store %struct.armada_private* %19, %struct.armada_private** %7, align 8
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = call i32 @drm_seq_file_printer(%struct.seq_file* %20)
  %22 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %8, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.armada_private*, %struct.armada_private** %7, align 8
  %24 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.armada_private*, %struct.armada_private** %7, align 8
  %27 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %26, i32 0, i32 1
  %28 = call i32 @drm_mm_print(i32* %27, %struct.drm_printer* %8)
  %29 = load %struct.armada_private*, %struct.armada_private** %7, align 8
  %30 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  ret i32 0
}

declare dso_local i32 @drm_seq_file_printer(%struct.seq_file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_mm_print(i32*, %struct.drm_printer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
