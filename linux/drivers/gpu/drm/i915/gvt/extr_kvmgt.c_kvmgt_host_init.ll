; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.attribute***, %struct.attribute_group***)* }
%struct.attribute = type { i32 }
%struct.attribute_group = type { i32 }
%struct.TYPE_4__ = type { %struct.attribute_group** }
%struct.device = type { i32 }

@intel_gvt_ops = common dso_local global %struct.TYPE_5__* null, align 8
@EFAULT = common dso_local global i32 0, align 4
@intel_vgpu_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i8*)* @kvmgt_host_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmgt_host_init(%struct.device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.attribute**, align 8
  %9 = alloca %struct.attribute_group**, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** @intel_gvt_ops, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @intel_gvt_ops, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32 (%struct.attribute***, %struct.attribute_group***)*, i32 (%struct.attribute***, %struct.attribute_group***)** %13, align 8
  %15 = call i32 %14(%struct.attribute*** %8, %struct.attribute_group*** %9)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.attribute_group**, %struct.attribute_group*** %9, align 8
  store %struct.attribute_group** %21, %struct.attribute_group*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_vgpu_ops, i32 0, i32 0), align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call i32 @mdev_register_device(%struct.device* %22, %struct.TYPE_4__* @intel_vgpu_ops)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @mdev_register_device(%struct.device*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
