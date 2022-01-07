; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.TYPE_11__, %struct.nouveau_drm* }
%struct.TYPE_11__ = type { i64 }
%struct.nouveau_drm = type { %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_8__, i32, %struct.drm_device* }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"DRM-master\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"DRM\00", align 1
@nouveau_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @nouveau_drm_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_drm_device_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nouveau_drm* @kzalloc(i32 40, i32 %6)
  store %struct.nouveau_drm* %7, %struct.nouveau_drm** %4, align 8
  %8 = icmp ne %struct.nouveau_drm* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %165

12:                                               ; preds = %1
  %13 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 3
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %15, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %17, i32 0, i32 4
  store %struct.drm_device* %16, %struct.drm_device** %18, align 8
  %19 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %20 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %20, i32 0, i32 0
  %22 = call i32 @nouveau_cli_init(%struct.nouveau_drm* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %161

26:                                               ; preds = %12
  %27 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %28 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %29 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %28, i32 0, i32 1
  %30 = call i32 @nouveau_cli_init(%struct.nouveau_drm* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %157

34:                                               ; preds = %26
  %35 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i32, i32* @nouveau_debug, align 4
  %38 = call i32 @nvkm_dbgopt(i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %40 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = call %struct.TYPE_12__* @nvxx_client(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i32 %38, i32* %43, align 4
  %44 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %45 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %44, i32 0, i32 3
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %48 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %52 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 193
  br i1 %57, label %58, label %64

58:                                               ; preds = %34
  %59 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %60 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = call i32 @nvif_mask(i32* %62, i32 557184, i32 2048, i32 0)
  br label %64

64:                                               ; preds = %58, %34
  %65 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %66 = call i32 @nouveau_vga_init(%struct.nouveau_drm* %65)
  %67 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %68 = call i32 @nouveau_ttm_init(%struct.nouveau_drm* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %151

72:                                               ; preds = %64
  %73 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %74 = call i32 @nouveau_bios_init(%struct.drm_device* %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %148

78:                                               ; preds = %72
  %79 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %80 = call i32 @nouveau_accel_init(%struct.nouveau_drm* %79)
  %81 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %82 = call i32 @nouveau_display_create(%struct.drm_device* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %143

86:                                               ; preds = %78
  %87 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %88 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %94 = call i32 @nouveau_display_init(%struct.drm_device* %93, i32 0, i32 0)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %140

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %86
  %100 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %101 = call i32 @nouveau_debugfs_init(%struct.nouveau_drm* %100)
  %102 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %103 = call i32 @nouveau_hwmon_init(%struct.drm_device* %102)
  %104 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %105 = call i32 @nouveau_svm_init(%struct.nouveau_drm* %104)
  %106 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %107 = call i32 @nouveau_dmem_init(%struct.nouveau_drm* %106)
  %108 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %109 = call i32 @nouveau_fbcon_init(%struct.drm_device* %108)
  %110 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %111 = call i32 @nouveau_led_init(%struct.drm_device* %110)
  %112 = call i64 (...) @nouveau_pmops_runtime()
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %139

114:                                              ; preds = %99
  %115 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %116 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @pm_runtime_use_autosuspend(i32 %117)
  %119 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %120 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @pm_runtime_set_autosuspend_delay(i32 %121, i32 5000)
  %123 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %124 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @pm_runtime_set_active(i32 %125)
  %127 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %128 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @pm_runtime_allow(i32 %129)
  %131 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %132 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @pm_runtime_mark_last_busy(i32 %133)
  %135 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %136 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @pm_runtime_put(i32 %137)
  br label %139

139:                                              ; preds = %114, %99
  store i32 0, i32* %2, align 4
  br label %165

140:                                              ; preds = %97
  %141 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %142 = call i32 @nouveau_display_destroy(%struct.drm_device* %141)
  br label %143

143:                                              ; preds = %140, %85
  %144 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %145 = call i32 @nouveau_accel_fini(%struct.nouveau_drm* %144)
  %146 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %147 = call i32 @nouveau_bios_takedown(%struct.drm_device* %146)
  br label %148

148:                                              ; preds = %143, %77
  %149 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %150 = call i32 @nouveau_ttm_fini(%struct.nouveau_drm* %149)
  br label %151

151:                                              ; preds = %148, %71
  %152 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %153 = call i32 @nouveau_vga_fini(%struct.nouveau_drm* %152)
  %154 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %155 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %154, i32 0, i32 1
  %156 = call i32 @nouveau_cli_fini(%struct.TYPE_13__* %155)
  br label %157

157:                                              ; preds = %151, %33
  %158 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %159 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %158, i32 0, i32 0
  %160 = call i32 @nouveau_cli_fini(%struct.TYPE_13__* %159)
  br label %161

161:                                              ; preds = %157, %25
  %162 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %163 = call i32 @kfree(%struct.nouveau_drm* %162)
  %164 = load i32, i32* %5, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %161, %139, %9
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.nouveau_drm* @kzalloc(i32, i32) #1

declare dso_local i32 @nouveau_cli_init(%struct.nouveau_drm*, i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @nvkm_dbgopt(i32, i8*) #1

declare dso_local %struct.TYPE_12__* @nvxx_client(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nvif_mask(i32*, i32, i32, i32) #1

declare dso_local i32 @nouveau_vga_init(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_ttm_init(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_bios_init(%struct.drm_device*) #1

declare dso_local i32 @nouveau_accel_init(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_display_create(%struct.drm_device*) #1

declare dso_local i32 @nouveau_display_init(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @nouveau_debugfs_init(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_hwmon_init(%struct.drm_device*) #1

declare dso_local i32 @nouveau_svm_init(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_dmem_init(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_fbcon_init(%struct.drm_device*) #1

declare dso_local i32 @nouveau_led_init(%struct.drm_device*) #1

declare dso_local i64 @nouveau_pmops_runtime(...) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32, i32) #1

declare dso_local i32 @pm_runtime_set_active(i32) #1

declare dso_local i32 @pm_runtime_allow(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @nouveau_display_destroy(%struct.drm_device*) #1

declare dso_local i32 @nouveau_accel_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_bios_takedown(%struct.drm_device*) #1

declare dso_local i32 @nouveau_ttm_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_vga_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_cli_fini(%struct.TYPE_13__*) #1

declare dso_local i32 @kfree(%struct.nouveau_drm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
