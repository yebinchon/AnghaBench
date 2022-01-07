; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_intel_get_gvt_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_intel_get_gvt_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute = type { i32 }
%struct.attribute_group = type { i32 }

@gvt_type_attrs = common dso_local global %struct.attribute** null, align 8
@gvt_vgpu_type_groups = common dso_local global %struct.attribute_group** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attribute***, %struct.attribute_group***)* @intel_get_gvt_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_get_gvt_attrs(%struct.attribute*** %0, %struct.attribute_group*** %1) #0 {
  %3 = alloca %struct.attribute***, align 8
  %4 = alloca %struct.attribute_group***, align 8
  store %struct.attribute*** %0, %struct.attribute**** %3, align 8
  store %struct.attribute_group*** %1, %struct.attribute_group**** %4, align 8
  %5 = load %struct.attribute**, %struct.attribute*** @gvt_type_attrs, align 8
  %6 = load %struct.attribute***, %struct.attribute**** %3, align 8
  store %struct.attribute** %5, %struct.attribute*** %6, align 8
  %7 = load %struct.attribute_group**, %struct.attribute_group*** @gvt_vgpu_type_groups, align 8
  %8 = load %struct.attribute_group***, %struct.attribute_group**** %4, align 8
  store %struct.attribute_group** %7, %struct.attribute_group*** %8, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
