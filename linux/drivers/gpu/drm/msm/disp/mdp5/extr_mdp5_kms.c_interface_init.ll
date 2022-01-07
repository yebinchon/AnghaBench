; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_interface_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_interface_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_kms = type { i32, %struct.mdp5_interface**, i32, %struct.drm_device* }
%struct.mdp5_interface = type { i32, i32, i32, i32 }
%struct.drm_device = type { i32 }
%struct.mdp5_cfg_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@INTF_DISABLED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to construct INTF%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MDP5_INTF_MODE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp5_kms*)* @interface_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interface_init(%struct.mdp5_kms* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdp5_kms*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.mdp5_cfg_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdp5_interface*, align 8
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %3, align 8
  %9 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %10 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %9, i32 0, i32 3
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %13 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.mdp5_cfg_hw* @mdp5_cfg_get_hw_config(i32 %14)
  store %struct.mdp5_cfg_hw* %15, %struct.mdp5_cfg_hw** %5, align 8
  %16 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %5, align 8
  %17 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %79, %1
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %5, align 8
  %23 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %82

28:                                               ; preds = %20
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @INTF_DISABLED, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %79

37:                                               ; preds = %28
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.mdp5_interface* @kzalloc(i32 16, i32 %38)
  store %struct.mdp5_interface* %39, %struct.mdp5_interface** %8, align 8
  %40 = load %struct.mdp5_interface*, %struct.mdp5_interface** %8, align 8
  %41 = icmp ne %struct.mdp5_interface* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @DRM_DEV_ERROR(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %83

50:                                               ; preds = %37
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.mdp5_interface*, %struct.mdp5_interface** %8, align 8
  %53 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mdp5_interface*, %struct.mdp5_interface** %8, align 8
  %60 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @MDP5_INTF_MODE_NONE, align 4
  %62 = load %struct.mdp5_interface*, %struct.mdp5_interface** %8, align 8
  %63 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %65 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.mdp5_interface*, %struct.mdp5_interface** %8, align 8
  %68 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.mdp5_interface*, %struct.mdp5_interface** %8, align 8
  %70 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %71 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %70, i32 0, i32 1
  %72 = load %struct.mdp5_interface**, %struct.mdp5_interface*** %71, align 8
  %73 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %74 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds %struct.mdp5_interface*, %struct.mdp5_interface** %72, i64 %77
  store %struct.mdp5_interface* %69, %struct.mdp5_interface** %78, align 8
  br label %79

79:                                               ; preds = %50, %36
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %20

82:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %42
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.mdp5_cfg_hw* @mdp5_cfg_get_hw_config(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.mdp5_interface* @kzalloc(i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
