; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_intel_tc_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_intel_tc_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, i32, i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PORT_TC_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%c/TC#%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_tc_port_init(%struct.intel_digital_port* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %9 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %5, align 8
  %14 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %15 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @intel_port_to_tc(%struct.drm_i915_private* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @PORT_TC_NONE, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %50

28:                                               ; preds = %2
  %29 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %30 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @port_name(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, 1
  %36 = call i32 @snprintf(i32 %31, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35)
  %37 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %38 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %37, i32 0, i32 3
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %42 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %44 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @tc_port_to_fia(%struct.drm_i915_private* %45, i32 %46)
  %48 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %49 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %28, %27
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_port_to_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tc_port_to_fia(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
