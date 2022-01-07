; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_intel_gvt_cleanup_vgpu_type_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_intel_gvt_cleanup_vgpu_type_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { i32 }
%struct.intel_gvt = type { i32 }

@gvt_vgpu_type_groups = common dso_local global %struct.attribute_group** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gvt*)* @intel_gvt_cleanup_vgpu_type_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_gvt_cleanup_vgpu_type_groups(%struct.intel_gvt* %0) #0 {
  %2 = alloca %struct.intel_gvt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.attribute_group*, align 8
  store %struct.intel_gvt* %0, %struct.intel_gvt** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %8 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %5
  %12 = load %struct.attribute_group**, %struct.attribute_group*** @gvt_vgpu_type_groups, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %12, i64 %14
  %16 = load %struct.attribute_group*, %struct.attribute_group** %15, align 8
  store %struct.attribute_group* %16, %struct.attribute_group** %4, align 8
  %17 = load %struct.attribute_group**, %struct.attribute_group*** @gvt_vgpu_type_groups, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %17, i64 %19
  store %struct.attribute_group* null, %struct.attribute_group** %20, align 8
  %21 = load %struct.attribute_group*, %struct.attribute_group** %4, align 8
  %22 = call i32 @kfree(%struct.attribute_group* %21)
  br label %23

23:                                               ; preds = %11
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %5

26:                                               ; preds = %5
  ret void
}

declare dso_local i32 @kfree(%struct.attribute_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
