; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_debugfs.c_intel_gvt_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_debugfs.c_intel_gvt_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt = type { %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_minor* }
%struct.drm_minor = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"gvt\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"num_tracked_mmio\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_gvt_debugfs_init(%struct.intel_gvt* %0) #0 {
  %2 = alloca %struct.intel_gvt*, align 8
  %3 = alloca %struct.drm_minor*, align 8
  store %struct.intel_gvt* %0, %struct.intel_gvt** %2, align 8
  %4 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %5 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %4, i32 0, i32 2
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.drm_minor*, %struct.drm_minor** %8, align 8
  store %struct.drm_minor* %9, %struct.drm_minor** %3, align 8
  %10 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %11 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %15 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %17 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %20 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i32 @debugfs_create_ulong(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 292, i32 %18, i32* %21)
  ret void
}

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_ulong(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
