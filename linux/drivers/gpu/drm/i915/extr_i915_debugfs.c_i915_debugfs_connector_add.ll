; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_debugfs_connector_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_debugfs_connector_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, i32, %struct.dentry* }
%struct.dentry = type { i32 }
%struct.drm_i915_private = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_eDP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"i915_dpcd\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@i915_dpcd_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"i915_panel_timings\00", align 1
@i915_panel_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"i915_psr_sink_status\00", align 1
@i915_psr_sink_status_fops = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i64 0, align 8
@DRM_MODE_CONNECTOR_HDMIB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"i915_hdcp_sink_capability\00", align 1
@i915_hdcp_sink_capability_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"i915_dsc_fec_support\00", align 1
@i915_dsc_fec_support_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_debugfs_connector_add(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %6, i32 0, i32 2
  %8 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %8, %struct.dentry** %4, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.drm_i915_private* @to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = icmp ne %struct.dentry* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %95

18:                                               ; preds = %1
  %19 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DRM_MODE_CONNECTOR_DisplayPort, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %26 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24, %18
  %31 = load i32, i32* @S_IRUGO, align 4
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %34 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %31, %struct.dentry* %32, %struct.drm_connector* %33, i32* @i915_dpcd_fops)
  br label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %37 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i32, i32* @S_IRUGO, align 4
  %43 = load %struct.dentry*, %struct.dentry** %4, align 8
  %44 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %45 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %42, %struct.dentry* %43, %struct.drm_connector* %44, i32* @i915_panel_fops)
  %46 = load i32, i32* @S_IRUGO, align 4
  %47 = load %struct.dentry*, %struct.dentry** %4, align 8
  %48 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %49 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %46, %struct.dentry* %47, %struct.drm_connector* %48, i32* @i915_psr_sink_status_fops)
  br label %50

50:                                               ; preds = %41, %35
  %51 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %52 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DRM_MODE_CONNECTOR_DisplayPort, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %50
  %57 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %58 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DRM_MODE_CONNECTOR_HDMIA, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %64 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DRM_MODE_CONNECTOR_HDMIB, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62, %56, %50
  %69 = load i32, i32* @S_IRUGO, align 4
  %70 = load %struct.dentry*, %struct.dentry** %4, align 8
  %71 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %72 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %69, %struct.dentry* %70, %struct.drm_connector* %71, i32* @i915_hdcp_sink_capability_fops)
  br label %73

73:                                               ; preds = %68, %62
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %75 = call i32 @INTEL_GEN(%struct.drm_i915_private* %74)
  %76 = icmp sge i32 %75, 10
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %79 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DRM_MODE_CONNECTOR_DisplayPort, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %85 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DRM_MODE_CONNECTOR_eDP, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83, %77
  %90 = load i32, i32* @S_IRUGO, align 4
  %91 = load %struct.dentry*, %struct.dentry** %4, align 8
  %92 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %93 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %90, %struct.dentry* %91, %struct.drm_connector* %92, i32* @i915_dsc_fec_support_fops)
  br label %94

94:                                               ; preds = %89, %83, %73
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %15
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.drm_connector*, i32*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
