; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_intel_gvt_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gvt.c_intel_gvt_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.drm_i915_private = type { %struct.TYPE_7__, %struct.intel_gvt* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.intel_gvt = type { i32, %struct.intel_vgpu*, %struct.drm_i915_private*, i32, i32, %struct.TYPE_5__ }
%struct.intel_vgpu = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"init gvt device\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to init vgpu type groups: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to create idle vgpu\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"gvt device initialization is done\0A\00", align 1
@intel_gvt_host = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gvt_init_device(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_gvt*, align 8
  %5 = alloca %struct.intel_vgpu*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 1
  %9 = load %struct.intel_gvt*, %struct.intel_gvt** %8, align 8
  %10 = call i64 @WARN_ON(%struct.intel_gvt* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EEXIST, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %165

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.intel_gvt* @kzalloc(i32 40, i32 %16)
  store %struct.intel_gvt* %17, %struct.intel_gvt** %4, align 8
  %18 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %19 = icmp ne %struct.intel_gvt* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %165

23:                                               ; preds = %15
  %24 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %26 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %25, i32 0, i32 0
  %27 = call i32 @idr_init(i32* %26)
  %28 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %29 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %33 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %32, i32 0, i32 4
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %36 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %35, i32 0, i32 3
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %40 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %39, i32 0, i32 2
  store %struct.drm_i915_private* %38, %struct.drm_i915_private** %40, align 8
  %41 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %42 = call i32 @init_device_info(%struct.intel_gvt* %41)
  %43 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %44 = call i32 @intel_gvt_setup_mmio_info(%struct.intel_gvt* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %23
  br label %158

48:                                               ; preds = %23
  %49 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %50 = call i32 @intel_gvt_init_engine_mmio_context(%struct.intel_gvt* %49)
  %51 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %52 = call i32 @intel_gvt_load_firmware(%struct.intel_gvt* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %155

56:                                               ; preds = %48
  %57 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %58 = call i32 @intel_gvt_init_irq(%struct.intel_gvt* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %152

62:                                               ; preds = %56
  %63 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %64 = call i32 @intel_gvt_init_gtt(%struct.intel_gvt* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %149

68:                                               ; preds = %62
  %69 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %70 = call i32 @intel_gvt_init_workload_scheduler(%struct.intel_gvt* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %146

74:                                               ; preds = %68
  %75 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %76 = call i32 @intel_gvt_init_sched_policy(%struct.intel_gvt* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %143

80:                                               ; preds = %74
  %81 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %82 = call i32 @intel_gvt_init_cmd_parser(%struct.intel_gvt* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %140

86:                                               ; preds = %80
  %87 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %88 = call i32 @init_service_thread(%struct.intel_gvt* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %137

92:                                               ; preds = %86
  %93 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %94 = call i32 @intel_gvt_init_vgpu_types(%struct.intel_gvt* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %134

98:                                               ; preds = %92
  %99 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %100 = call i32 @intel_gvt_init_vgpu_type_groups(%struct.intel_gvt* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %6, align 4
  %105 = call i32 (i8*, ...) @gvt_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %131

106:                                              ; preds = %98
  %107 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %108 = call %struct.intel_vgpu* @intel_gvt_create_idle_vgpu(%struct.intel_gvt* %107)
  store %struct.intel_vgpu* %108, %struct.intel_vgpu** %5, align 8
  %109 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %110 = call i64 @IS_ERR(%struct.intel_vgpu* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %114 = call i32 @PTR_ERR(%struct.intel_vgpu* %113)
  store i32 %114, i32* %6, align 4
  %115 = call i32 (i8*, ...) @gvt_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %131

116:                                              ; preds = %106
  %117 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %118 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %119 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %118, i32 0, i32 1
  store %struct.intel_vgpu* %117, %struct.intel_vgpu** %119, align 8
  %120 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %121 = call i32 @intel_gvt_debugfs_init(%struct.intel_gvt* %120)
  %122 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %123 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %124 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %125 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %124, i32 0, i32 1
  store %struct.intel_gvt* %123, %struct.intel_gvt** %125, align 8
  %126 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %127 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i32* %130, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_gvt_host, i32 0, i32 1), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @intel_gvt_host, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %165

131:                                              ; preds = %112, %103
  %132 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %133 = call i32 @intel_gvt_clean_vgpu_types(%struct.intel_gvt* %132)
  br label %134

134:                                              ; preds = %131, %97
  %135 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %136 = call i32 @clean_service_thread(%struct.intel_gvt* %135)
  br label %137

137:                                              ; preds = %134, %91
  %138 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %139 = call i32 @intel_gvt_clean_cmd_parser(%struct.intel_gvt* %138)
  br label %140

140:                                              ; preds = %137, %85
  %141 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %142 = call i32 @intel_gvt_clean_sched_policy(%struct.intel_gvt* %141)
  br label %143

143:                                              ; preds = %140, %79
  %144 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %145 = call i32 @intel_gvt_clean_workload_scheduler(%struct.intel_gvt* %144)
  br label %146

146:                                              ; preds = %143, %73
  %147 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %148 = call i32 @intel_gvt_clean_gtt(%struct.intel_gvt* %147)
  br label %149

149:                                              ; preds = %146, %67
  %150 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %151 = call i32 @intel_gvt_clean_irq(%struct.intel_gvt* %150)
  br label %152

152:                                              ; preds = %149, %61
  %153 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %154 = call i32 @intel_gvt_free_firmware(%struct.intel_gvt* %153)
  br label %155

155:                                              ; preds = %152, %55
  %156 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %157 = call i32 @intel_gvt_clean_mmio_info(%struct.intel_gvt* %156)
  br label %158

158:                                              ; preds = %155, %47
  %159 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %160 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %159, i32 0, i32 0
  %161 = call i32 @idr_destroy(i32* %160)
  %162 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %163 = call i32 @kfree(%struct.intel_gvt* %162)
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %158, %116, %20, %12
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i64 @WARN_ON(%struct.intel_gvt*) #1

declare dso_local %struct.intel_gvt* @kzalloc(i32, i32) #1

declare dso_local i32 @gvt_dbg_core(i8*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_device_info(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_setup_mmio_info(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_init_engine_mmio_context(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_load_firmware(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_init_irq(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_init_gtt(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_init_workload_scheduler(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_init_sched_policy(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_init_cmd_parser(%struct.intel_gvt*) #1

declare dso_local i32 @init_service_thread(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_init_vgpu_types(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_init_vgpu_type_groups(%struct.intel_gvt*) #1

declare dso_local i32 @gvt_err(i8*, ...) #1

declare dso_local %struct.intel_vgpu* @intel_gvt_create_idle_vgpu(%struct.intel_gvt*) #1

declare dso_local i64 @IS_ERR(%struct.intel_vgpu*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_gvt_debugfs_init(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_clean_vgpu_types(%struct.intel_gvt*) #1

declare dso_local i32 @clean_service_thread(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_clean_cmd_parser(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_clean_sched_policy(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_clean_workload_scheduler(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_clean_gtt(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_clean_irq(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_free_firmware(%struct.intel_gvt*) #1

declare dso_local i32 @intel_gvt_clean_mmio_info(%struct.intel_gvt*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.intel_gvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
