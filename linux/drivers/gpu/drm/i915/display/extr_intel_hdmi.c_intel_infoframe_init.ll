; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_infoframe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_infoframe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@vlv_write_infoframe = common dso_local global i32 0, align 4
@vlv_read_infoframe = common dso_local global i32 0, align 4
@vlv_set_infoframes = common dso_local global i32 0, align 4
@vlv_infoframes_enabled = common dso_local global i32 0, align 4
@g4x_write_infoframe = common dso_local global i32 0, align 4
@g4x_read_infoframe = common dso_local global i32 0, align 4
@g4x_set_infoframes = common dso_local global i32 0, align 4
@g4x_infoframes_enabled = common dso_local global i32 0, align 4
@lspcon_write_infoframe = common dso_local global i32 0, align 4
@lspcon_read_infoframe = common dso_local global i32 0, align 4
@lspcon_set_infoframes = common dso_local global i32 0, align 4
@lspcon_infoframes_enabled = common dso_local global i32 0, align 4
@hsw_write_infoframe = common dso_local global i32 0, align 4
@hsw_read_infoframe = common dso_local global i32 0, align 4
@hsw_set_infoframes = common dso_local global i32 0, align 4
@hsw_infoframes_enabled = common dso_local global i32 0, align 4
@ibx_write_infoframe = common dso_local global i32 0, align 4
@ibx_read_infoframe = common dso_local global i32 0, align 4
@ibx_set_infoframes = common dso_local global i32 0, align 4
@ibx_infoframes_enabled = common dso_local global i32 0, align 4
@cpt_write_infoframe = common dso_local global i32 0, align 4
@cpt_read_infoframe = common dso_local global i32 0, align 4
@cpt_set_infoframes = common dso_local global i32 0, align 4
@cpt_infoframes_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_infoframe_init(%struct.intel_digital_port* %0) #0 {
  %2 = alloca %struct.intel_digital_port*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %2, align 8
  %4 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %5 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %4, i32 0, i32 5
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.drm_i915_private* @to_i915(i32 %8)
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %3, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13, %1
  %18 = load i32, i32* @vlv_write_infoframe, align 4
  %19 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %20 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @vlv_read_infoframe, align 4
  %22 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %23 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @vlv_set_infoframes, align 4
  %25 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %26 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @vlv_infoframes_enabled, align 4
  %28 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %29 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %117

30:                                               ; preds = %13
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %32 = call i64 @IS_G4X(%struct.drm_i915_private* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i32, i32* @g4x_write_infoframe, align 4
  %36 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %37 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @g4x_read_infoframe, align 4
  %39 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %40 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @g4x_set_infoframes, align 4
  %42 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %43 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @g4x_infoframes_enabled, align 4
  %45 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %46 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %116

47:                                               ; preds = %30
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %49 = call i64 @HAS_DDI(%struct.drm_i915_private* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %47
  %52 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %53 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load i32, i32* @lspcon_write_infoframe, align 4
  %59 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %60 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @lspcon_read_infoframe, align 4
  %62 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %63 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @lspcon_set_infoframes, align 4
  %65 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %66 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @lspcon_infoframes_enabled, align 4
  %68 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %69 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %83

70:                                               ; preds = %51
  %71 = load i32, i32* @hsw_write_infoframe, align 4
  %72 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %73 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @hsw_read_infoframe, align 4
  %75 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %76 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @hsw_set_infoframes, align 4
  %78 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %79 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @hsw_infoframes_enabled, align 4
  %81 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %82 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %70, %57
  br label %115

84:                                               ; preds = %47
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %86 = call i64 @HAS_PCH_IBX(%struct.drm_i915_private* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load i32, i32* @ibx_write_infoframe, align 4
  %90 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %91 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @ibx_read_infoframe, align 4
  %93 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %94 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @ibx_set_infoframes, align 4
  %96 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %97 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @ibx_infoframes_enabled, align 4
  %99 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %100 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %114

101:                                              ; preds = %84
  %102 = load i32, i32* @cpt_write_infoframe, align 4
  %103 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %104 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @cpt_read_infoframe, align 4
  %106 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %107 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @cpt_set_infoframes, align 4
  %109 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %110 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @cpt_infoframes_enabled, align 4
  %112 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %113 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %101, %88
  br label %115

115:                                              ; preds = %114, %83
  br label %116

116:                                              ; preds = %115, %34
  br label %117

117:                                              ; preds = %116, %17
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
