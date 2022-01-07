; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_kms_sou_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_scrn.c_vmw_kms_sou_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@SVGA_CAP_SCREEN_OBJECT_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Not using screen objects, missing cap SCREEN_OBJECT_2\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VMWGFX_NUM_DISPLAY_UNITS = common dso_local global i32 0, align 4
@vmw_du_screen_object = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Screen Objects Display Unit initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_kms_sou_init_display(%struct.vmw_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %7 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %8 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %7, i32 0, i32 2
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %11 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SVGA_CAP_SCREEN_OBJECT_2, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = call i32 @DRM_INFO(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %50

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = load i32, i32* @VMWGFX_NUM_DISPLAY_UNITS, align 4
  %25 = call i32 @drm_vblank_init(%struct.drm_device* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %50

33:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %42, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @VMWGFX_NUM_DISPLAY_UNITS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @vmw_sou_init(%struct.vmw_private* %39, i32 %40)
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %34

45:                                               ; preds = %34
  %46 = load i32, i32* @vmw_du_screen_object, align 4
  %47 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %48 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = call i32 @DRM_INFO(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %31, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_sou_init(%struct.vmw_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
