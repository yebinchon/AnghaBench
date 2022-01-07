; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_construct_encoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_construct_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.mdp5_kms = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32, %struct.drm_encoder** }
%struct.mdp5_interface = type { i32 }
%struct.mdp5_ctl = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to construct encoder\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_encoder* (%struct.mdp5_kms*, %struct.mdp5_interface*, %struct.mdp5_ctl*)* @construct_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_encoder* @construct_encoder(%struct.mdp5_kms* %0, %struct.mdp5_interface* %1, %struct.mdp5_ctl* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.mdp5_kms*, align 8
  %6 = alloca %struct.mdp5_interface*, align 8
  %7 = alloca %struct.mdp5_ctl*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.msm_drm_private*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %5, align 8
  store %struct.mdp5_interface* %1, %struct.mdp5_interface** %6, align 8
  store %struct.mdp5_ctl* %2, %struct.mdp5_ctl** %7, align 8
  %11 = load %struct.mdp5_kms*, %struct.mdp5_kms** %5, align 8
  %12 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 1
  %16 = load %struct.msm_drm_private*, %struct.msm_drm_private** %15, align 8
  store %struct.msm_drm_private* %16, %struct.msm_drm_private** %9, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %18 = load %struct.mdp5_interface*, %struct.mdp5_interface** %6, align 8
  %19 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %7, align 8
  %20 = call %struct.drm_encoder* @mdp5_encoder_init(%struct.drm_device* %17, %struct.mdp5_interface* %18, %struct.mdp5_ctl* %19)
  store %struct.drm_encoder* %20, %struct.drm_encoder** %10, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %22 = call i64 @IS_ERR(%struct.drm_encoder* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @DRM_DEV_ERROR(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  store %struct.drm_encoder* %29, %struct.drm_encoder** %4, align 8
  br label %42

30:                                               ; preds = %3
  %31 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %32 = load %struct.msm_drm_private*, %struct.msm_drm_private** %9, align 8
  %33 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %32, i32 0, i32 1
  %34 = load %struct.drm_encoder**, %struct.drm_encoder*** %33, align 8
  %35 = load %struct.msm_drm_private*, %struct.msm_drm_private** %9, align 8
  %36 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds %struct.drm_encoder*, %struct.drm_encoder** %34, i64 %39
  store %struct.drm_encoder* %31, %struct.drm_encoder** %40, align 8
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  store %struct.drm_encoder* %41, %struct.drm_encoder** %4, align 8
  br label %42

42:                                               ; preds = %30, %24
  %43 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  ret %struct.drm_encoder* %43
}

declare dso_local %struct.drm_encoder* @mdp5_encoder_init(%struct.drm_device*, %struct.mdp5_interface*, %struct.mdp5_ctl*) #1

declare dso_local i64 @IS_ERR(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
