; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hpd_pulse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_hpd_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.TYPE_3__, %struct.intel_dp }
%struct.TYPE_3__ = type { i64, i32 }
%struct.intel_dp = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@INTEL_OUTPUT_EDP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"ignoring long hpd on eDP port %c\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"got hpd irq on port %c - %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"MST device may have disappeared %d vs %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dp_hpd_pulse(%struct.intel_digital_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_dp*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %9 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %8, i32 0, i32 1
  store %struct.intel_dp* %9, %struct.intel_dp** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %14 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INTEL_OUTPUT_EDP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %21 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @port_name(i32 %23)
  %25 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %26, i32* %3, align 4
  br label %89

27:                                               ; preds = %12, %2
  %28 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %29 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @port_name(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %37 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %42 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* @IRQ_NONE, align 4
  store i32 %43, i32* %3, align 4
  br label %89

44:                                               ; preds = %27
  %45 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %46 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %51 = call i32 @intel_dp_check_mst_status(%struct.intel_dp* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %57 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %60 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %58, i8* %62)
  %64 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %65 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %67 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %66, i32 0, i32 2
  %68 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %69 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @drm_dp_mst_topology_mgr_set_mst(%struct.TYPE_4__* %67, i32 %70)
  %72 = load i32, i32* @IRQ_NONE, align 4
  store i32 %72, i32* %3, align 4
  br label %89

73:                                               ; preds = %49
  br label %74

74:                                               ; preds = %73, %44
  %75 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %76 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %74
  %80 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %81 = call i32 @intel_dp_short_pulse(%struct.intel_dp* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @IRQ_NONE, align 4
  store i32 %85, i32* %3, align 4
  br label %89

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %74
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %84, %55, %40, %19
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @intel_dp_check_mst_status(%struct.intel_dp*) #1

declare dso_local i32 @drm_dp_mst_topology_mgr_set_mst(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @intel_dp_short_pulse(%struct.intel_dp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
