; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_device = type { i32 }
%struct.dpu_encoder_virt = type { i32, %struct.drm_encoder, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dpu_encoder_funcs = common dso_local global i32 0, align 4
@dpu_encoder_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_encoder* @dpu_encoder_init(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpu_encoder_virt*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dpu_encoder_virt* null, %struct.dpu_encoder_virt** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.dpu_encoder_virt* @devm_kzalloc(i32 %10, i32 12, i32 %11)
  store %struct.dpu_encoder_virt* %12, %struct.dpu_encoder_virt** %6, align 8
  %13 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %14 = icmp ne %struct.dpu_encoder_virt* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = call %struct.drm_encoder* @ERR_PTR(i32 %16)
  store %struct.drm_encoder* %17, %struct.drm_encoder** %3, align 8
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %21 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %20, i32 0, i32 1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @drm_encoder_init(%struct.drm_device* %19, %struct.drm_encoder* %21, i32* @dpu_encoder_funcs, i32 %22, i32* null)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %31 = call i32 @devm_kfree(i32 %29, %struct.dpu_encoder_virt* %30)
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.drm_encoder* @ERR_PTR(i32 %32)
  store %struct.drm_encoder* %33, %struct.drm_encoder** %3, align 8
  br label %45

34:                                               ; preds = %18
  %35 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %36 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %35, i32 0, i32 1
  %37 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %36, i32* @dpu_encoder_helper_funcs)
  %38 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %39 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %38, i32 0, i32 2
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %42 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %44 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %43, i32 0, i32 1
  store %struct.drm_encoder* %44, %struct.drm_encoder** %3, align 8
  br label %45

45:                                               ; preds = %34, %26, %15
  %46 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  ret %struct.drm_encoder* %46
}

declare dso_local %struct.dpu_encoder_virt* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.drm_encoder* @ERR_PTR(i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @devm_kfree(i32, %struct.dpu_encoder_virt*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
