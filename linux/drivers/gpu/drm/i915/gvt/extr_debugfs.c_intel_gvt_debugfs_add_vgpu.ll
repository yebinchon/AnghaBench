; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_debugfs.c_intel_gvt_debugfs_add_vgpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_debugfs.c_intel_gvt_debugfs_add_vgpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"vgpu%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"mmio_diff\00", align 1
@vgpu_mmio_diff_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"scan_nonprivbb\00", align 1
@vgpu_scan_nonprivbb_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_gvt_debugfs_add_vgpu(%struct.intel_vgpu* %0) #0 {
  %2 = alloca %struct.intel_vgpu*, align 8
  %3 = alloca [16 x i8], align 16
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %2, align 8
  %4 = bitcast [16 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 16, i1 false)
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %6 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %7 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @snprintf(i8* %5, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %12 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @debugfs_create_dir(i8* %10, i32 %15)
  %17 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %18 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %20 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %23 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %22, i32 0, i32 2
  %24 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 292, i32 %21, i32* %23)
  %25 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %26 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %29 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 292, i32 %27, %struct.intel_vgpu* %28, i32* @vgpu_mmio_diff_fops)
  %30 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %31 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.intel_vgpu*, %struct.intel_vgpu** %2, align 8
  %34 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 420, i32 %32, %struct.intel_vgpu* %33, i32* @vgpu_scan_nonprivbb_fops)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @debugfs_create_dir(i8*, i32) #2

declare dso_local i32 @debugfs_create_bool(i8*, i32, i32, i32*) #2

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.intel_vgpu*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
