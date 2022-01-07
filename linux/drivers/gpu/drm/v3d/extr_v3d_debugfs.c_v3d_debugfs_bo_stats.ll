; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_debugfs.c_v3d_debugfs_bo_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_debugfs.c_v3d_debugfs_bo_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.drm_info_node = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.v3d_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"allocated bos:          %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"allocated bo size (kb): %ld\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @v3d_debugfs_bo_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3d_debugfs_bo_stats(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.v3d_dev*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.drm_info_node*
  store %struct.drm_info_node* %11, %struct.drm_info_node** %5, align 8
  %12 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %13 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = call %struct.v3d_dev* @to_v3d_dev(%struct.drm_device* %17)
  store %struct.v3d_dev* %18, %struct.v3d_dev** %7, align 8
  %19 = load %struct.v3d_dev*, %struct.v3d_dev** %7, align 8
  %20 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load %struct.v3d_dev*, %struct.v3d_dev** %7, align 8
  %24 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load %struct.v3d_dev*, %struct.v3d_dev** %7, align 8
  %30 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = sub nsw i32 %33, 10
  %35 = zext i32 %34 to i64
  %36 = shl i64 %32, %35
  %37 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load %struct.v3d_dev*, %struct.v3d_dev** %7, align 8
  %39 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  ret i32 0
}

declare dso_local %struct.v3d_dev* @to_v3d_dev(%struct.drm_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
