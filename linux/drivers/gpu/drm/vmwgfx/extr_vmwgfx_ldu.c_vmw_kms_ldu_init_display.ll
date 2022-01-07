; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ldu.c_vmw_kms_ldu_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ldu.c_vmw_kms_ldu_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, %struct.TYPE_3__*, i32, %struct.drm_device* }
%struct.TYPE_3__ = type { i32*, i64, i64, i32 }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"ldu system already on\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SVGA_CAP_MULTIMON = common dso_local global i32 0, align 4
@VMWGFX_NUM_DISPLAY_UNITS = common dso_local global i32 0, align 4
@vmw_du_legacy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Legacy Display Unit initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_kms_ldu_init_display(%struct.vmw_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %7 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %8 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %7, i32 0, i32 3
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %11 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @DRM_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %103

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_3__* @kmalloc(i32 32, i32 %19)
  %21 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %22 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %21, i32 0, i32 1
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %22, align 8
  %23 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %24 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %103

30:                                               ; preds = %18
  %31 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %32 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %37 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %41 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %45 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %49 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SVGA_CAP_MULTIMON, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %30
  %55 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %56 = load i32, i32* @VMWGFX_NUM_DISPLAY_UNITS, align 4
  %57 = call i32 @drm_vblank_init(%struct.drm_device* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %61

58:                                               ; preds = %30
  %59 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %60 = call i32 @drm_vblank_init(%struct.drm_device* %59, i32 1)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %95

65:                                               ; preds = %61
  %66 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %67 = call i32 @vmw_kms_create_implicit_placement_property(%struct.vmw_private* %66)
  %68 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %69 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SVGA_CAP_MULTIMON, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %83, %74
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @VMWGFX_NUM_DISPLAY_UNITS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @vmw_ldu_init(%struct.vmw_private* %80, i32 %81)
  br label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %75

86:                                               ; preds = %75
  br label %90

87:                                               ; preds = %65
  %88 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %89 = call i32 @vmw_ldu_init(%struct.vmw_private* %88, i32 0)
  br label %90

90:                                               ; preds = %87, %86
  %91 = load i32, i32* @vmw_du_legacy, align 4
  %92 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %93 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = call i32 @DRM_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %103

95:                                               ; preds = %64
  %96 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %97 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = call i32 @kfree(%struct.TYPE_3__* %98)
  %100 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %101 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %100, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %101, align 8
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %95, %90, %27, %14
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local %struct.TYPE_3__* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @vmw_kms_create_implicit_placement_property(%struct.vmw_private*) #1

declare dso_local i32 @vmw_ldu_init(%struct.vmw_private*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
