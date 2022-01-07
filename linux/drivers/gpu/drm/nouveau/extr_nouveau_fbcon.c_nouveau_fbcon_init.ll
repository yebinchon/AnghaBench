; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_fbcon.c_nouveau_fbcon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_17__, i32, %struct.nouveau_fbdev* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.nouveau_fbdev = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@nouveau_fbcon_bpp = common dso_local global i32 0, align 4
@PCI_CLASS_DISPLAY_VGA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nouveau_fbcon_set_suspend_work = common dso_local global i32 0, align 4
@nouveau_fbcon_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_fbcon_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_fbdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %8)
  store %struct.nouveau_drm* %9, %struct.nouveau_drm** %4, align 8
  %10 = load i32, i32* @nouveau_fbcon_bpp, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 8
  %23 = load i32, i32* @PCI_CLASS_DISPLAY_VGA, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %130

26:                                               ; preds = %16
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.nouveau_fbdev* @kzalloc(i32 16, i32 %27)
  store %struct.nouveau_fbdev* %28, %struct.nouveau_fbdev** %5, align 8
  %29 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %5, align 8
  %30 = icmp ne %struct.nouveau_fbdev* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %130

34:                                               ; preds = %26
  %35 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %5, align 8
  %36 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %37 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %36, i32 0, i32 2
  store %struct.nouveau_fbdev* %35, %struct.nouveau_fbdev** %37, align 8
  %38 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %39 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %38, i32 0, i32 1
  %40 = load i32, i32* @nouveau_fbcon_set_suspend_work, align 4
  %41 = call i32 @INIT_WORK(i32* %39, i32 %40)
  %42 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %5, align 8
  %43 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %42, i32 0, i32 1
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %5, align 8
  %47 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %46, i32 0, i32 0
  %48 = call i32 @drm_fb_helper_prepare(%struct.drm_device* %45, %struct.TYPE_20__* %47, i32* @nouveau_fbcon_helper_funcs)
  %49 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %50 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %5, align 8
  %51 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %50, i32 0, i32 0
  %52 = call i32 @drm_fb_helper_init(%struct.drm_device* %49, %struct.TYPE_20__* %51, i32 4)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %34
  br label %126

56:                                               ; preds = %34
  %57 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %5, align 8
  %58 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %57, i32 0, i32 0
  %59 = call i32 @drm_fb_helper_single_add_all_connectors(%struct.TYPE_20__* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %122

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 8
  br i1 %65, label %66, label %93

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 16
  br i1 %68, label %69, label %93

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 32
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  %73 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %74 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sle i32 %78, 33554432
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 8, i32* %6, align 4
  br label %92

81:                                               ; preds = %72
  %82 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %83 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sle i32 %87, 67108864
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i32 16, i32* %6, align 4
  br label %91

90:                                               ; preds = %81
  store i32 32, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %89
  br label %92

92:                                               ; preds = %91, %80
  br label %93

93:                                               ; preds = %92, %69, %66, %63
  %94 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %95 = call i32 @drm_drv_uses_atomic_modeset(%struct.drm_device* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %99 = call i32 @drm_helper_disable_unused_functions(%struct.drm_device* %98)
  br label %100

100:                                              ; preds = %97, %93
  %101 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %5, align 8
  %102 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %101, i32 0, i32 0
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @drm_fb_helper_initial_config(%struct.TYPE_20__* %102, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %122

108:                                              ; preds = %100
  %109 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %5, align 8
  %110 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = icmp ne %struct.TYPE_19__* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %5, align 8
  %116 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  store i32 4, i32* %120, align 4
  br label %121

121:                                              ; preds = %114, %108
  store i32 0, i32* %2, align 4
  br label %130

122:                                              ; preds = %107, %62
  %123 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %5, align 8
  %124 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %123, i32 0, i32 0
  %125 = call i32 @drm_fb_helper_fini(%struct.TYPE_20__* %124)
  br label %126

126:                                              ; preds = %122, %55
  %127 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %5, align 8
  %128 = call i32 @kfree(%struct.nouveau_fbdev* %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %126, %121, %31, %25
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_fbdev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @drm_fb_helper_prepare(%struct.drm_device*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @drm_fb_helper_init(%struct.drm_device*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @drm_fb_helper_single_add_all_connectors(%struct.TYPE_20__*) #1

declare dso_local i32 @drm_drv_uses_atomic_modeset(%struct.drm_device*) #1

declare dso_local i32 @drm_helper_disable_unused_functions(%struct.drm_device*) #1

declare dso_local i32 @drm_fb_helper_initial_config(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.TYPE_20__*) #1

declare dso_local i32 @kfree(%struct.nouveau_fbdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
