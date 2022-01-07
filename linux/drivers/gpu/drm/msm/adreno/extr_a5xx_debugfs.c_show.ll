; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_debugfs.c_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_debugfs.c_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.drm_info_node = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.msm_gpu*, %struct.drm_printer*)* }
%struct.msm_gpu = type opaque
%struct.drm_printer = type { i32 }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_gpu* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.msm_drm_private*, align 8
  %8 = alloca %struct.drm_printer, align 4
  %9 = alloca i32 (%struct.msm_gpu*, %struct.drm_printer*)*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.drm_info_node*
  store %struct.drm_info_node* %13, %struct.drm_info_node** %5, align 8
  %14 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %15 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %6, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.msm_drm_private*, %struct.msm_drm_private** %20, align 8
  store %struct.msm_drm_private* %21, %struct.msm_drm_private** %7, align 8
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = call i32 @drm_seq_file_printer(%struct.seq_file* %22)
  %24 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %26 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (%struct.msm_gpu*, %struct.drm_printer*)*, i32 (%struct.msm_gpu*, %struct.drm_printer*)** %28, align 8
  store i32 (%struct.msm_gpu*, %struct.drm_printer*)* %29, i32 (%struct.msm_gpu*, %struct.drm_printer*)** %9, align 8
  %30 = load i32 (%struct.msm_gpu*, %struct.drm_printer*)*, i32 (%struct.msm_gpu*, %struct.drm_printer*)** %9, align 8
  %31 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %32 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %31, i32 0, i32 0
  %33 = load %struct.msm_gpu*, %struct.msm_gpu** %32, align 8
  %34 = call i32 %30(%struct.msm_gpu* %33, %struct.drm_printer* %8)
  ret i32 %34
}

declare dso_local i32 @drm_seq_file_printer(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
