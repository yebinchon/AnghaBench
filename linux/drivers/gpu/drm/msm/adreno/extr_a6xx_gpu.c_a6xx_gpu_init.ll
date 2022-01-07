; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_gpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_gpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.platform_device* }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.device_node = type { i32 }
%struct.a6xx_gpu = type { %struct.adreno_gpu }
%struct.adreno_gpu = type { %struct.msm_gpu, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@a6xx_register_offsets = common dso_local global i32 0, align 4
@funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"qcom,gmu\00", align 1
@a6xx_fault_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_gpu* @a6xx_gpu_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.a6xx_gpu*, align 8
  %8 = alloca %struct.adreno_gpu*, align 8
  %9 = alloca %struct.msm_gpu*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.msm_drm_private*, %struct.msm_drm_private** %12, align 8
  store %struct.msm_drm_private* %13, %struct.msm_drm_private** %4, align 8
  %14 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %15 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %14, i32 0, i32 0
  %16 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  store %struct.platform_device* %16, %struct.platform_device** %5, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.a6xx_gpu* @kzalloc(i32 24, i32 %17)
  store %struct.a6xx_gpu* %18, %struct.a6xx_gpu** %7, align 8
  %19 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %7, align 8
  %20 = icmp ne %struct.a6xx_gpu* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.msm_gpu* @ERR_PTR(i32 %23)
  store %struct.msm_gpu* %24, %struct.msm_gpu** %2, align 8
  br label %87

25:                                               ; preds = %1
  %26 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %7, align 8
  %27 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %26, i32 0, i32 0
  store %struct.adreno_gpu* %27, %struct.adreno_gpu** %8, align 8
  %28 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %29 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %28, i32 0, i32 0
  store %struct.msm_gpu* %29, %struct.msm_gpu** %9, align 8
  %30 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %31 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* @a6xx_register_offsets, align 4
  %33 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %34 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %37 = load %struct.adreno_gpu*, %struct.adreno_gpu** %8, align 8
  %38 = call i32 @adreno_gpu_init(%struct.drm_device* %35, %struct.platform_device* %36, %struct.adreno_gpu* %37, i32* @funcs, i32 1)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %25
  %42 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %7, align 8
  %43 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %43, i32 0, i32 0
  %45 = call i32 @a6xx_destroy(%struct.msm_gpu* %44)
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.msm_gpu* @ERR_PTR(i32 %46)
  store %struct.msm_gpu* %47, %struct.msm_gpu** %2, align 8
  br label %87

48:                                               ; preds = %25
  %49 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.device_node* @of_parse_phandle(i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %53, %struct.device_node** %6, align 8
  %54 = load %struct.device_node*, %struct.device_node** %6, align 8
  %55 = icmp ne %struct.device_node* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %7, align 8
  %60 = load %struct.device_node*, %struct.device_node** %6, align 8
  %61 = call i32 @a6xx_gmu_init(%struct.a6xx_gpu* %59, %struct.device_node* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %48
  %65 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %7, align 8
  %66 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %66, i32 0, i32 0
  %68 = call i32 @a6xx_destroy(%struct.msm_gpu* %67)
  %69 = load i32, i32* %10, align 4
  %70 = call %struct.msm_gpu* @ERR_PTR(i32 %69)
  store %struct.msm_gpu* %70, %struct.msm_gpu** %2, align 8
  br label %87

71:                                               ; preds = %48
  %72 = load %struct.msm_gpu*, %struct.msm_gpu** %9, align 8
  %73 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = icmp ne %struct.TYPE_4__* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.msm_gpu*, %struct.msm_gpu** %9, align 8
  %78 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.msm_gpu*, %struct.msm_gpu** %9, align 8
  %83 = load i32, i32* @a6xx_fault_handler, align 4
  %84 = call i32 @msm_mmu_set_fault_handler(i32 %81, %struct.msm_gpu* %82, i32 %83)
  br label %85

85:                                               ; preds = %76, %71
  %86 = load %struct.msm_gpu*, %struct.msm_gpu** %9, align 8
  store %struct.msm_gpu* %86, %struct.msm_gpu** %2, align 8
  br label %87

87:                                               ; preds = %85, %64, %41, %21
  %88 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  ret %struct.msm_gpu* %88
}

declare dso_local %struct.a6xx_gpu* @kzalloc(i32, i32) #1

declare dso_local %struct.msm_gpu* @ERR_PTR(i32) #1

declare dso_local i32 @adreno_gpu_init(%struct.drm_device*, %struct.platform_device*, %struct.adreno_gpu*, i32*, i32) #1

declare dso_local i32 @a6xx_destroy(%struct.msm_gpu*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @a6xx_gmu_init(%struct.a6xx_gpu*, %struct.device_node*) #1

declare dso_local i32 @msm_mmu_set_fault_handler(i32, %struct.msm_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
