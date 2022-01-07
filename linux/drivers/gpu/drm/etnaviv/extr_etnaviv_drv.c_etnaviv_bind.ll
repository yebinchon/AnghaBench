; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_drv.c_etnaviv_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_drv.c_etnaviv_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.etnaviv_drm_private = type { %struct.drm_device*, i64, i32, i32, i32 }
%struct.drm_device = type { %struct.device*, %struct.etnaviv_drm_private* }

@etnaviv_drm_driver = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to allocate private data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SZ_2G = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to create cmdbuf suballocator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @etnaviv_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_bind(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.etnaviv_drm_private*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.drm_device* @drm_dev_alloc(i32* @etnaviv_drm_driver, %struct.device* %7)
  store %struct.drm_device* %8, %struct.drm_device** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %10 = call i64 @IS_ERR(%struct.drm_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = call i32 @PTR_ERR(%struct.drm_device* %13)
  store i32 %14, i32* %2, align 4
  br label %99

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.etnaviv_drm_private* @kzalloc(i32 32, i32 %16)
  store %struct.etnaviv_drm_private* %17, %struct.etnaviv_drm_private** %4, align 8
  %18 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %4, align 8
  %19 = icmp ne %struct.etnaviv_drm_private* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %95

25:                                               ; preds = %15
  %26 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %4, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 1
  store %struct.etnaviv_drm_private* %26, %struct.etnaviv_drm_private** %28, align 8
  %29 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %4, align 8
  %30 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %29, i32 0, i32 4
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load i32, i32* @SZ_2G, align 4
  %35 = call i32 @dma_set_max_seg_size(%struct.device* %33, i32 %34)
  %36 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %4, align 8
  %37 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %36, i32 0, i32 3
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %4, align 8
  %40 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %39, i32 0, i32 2
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %4, align 8
  %43 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 0
  %46 = load %struct.device*, %struct.device** %45, align 8
  %47 = call %struct.drm_device* @etnaviv_cmdbuf_suballoc_new(%struct.device* %46)
  %48 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %4, align 8
  %49 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %48, i32 0, i32 0
  store %struct.drm_device* %47, %struct.drm_device** %49, align 8
  %50 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %4, align 8
  %51 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %50, i32 0, i32 0
  %52 = load %struct.drm_device*, %struct.drm_device** %51, align 8
  %53 = call i64 @IS_ERR(%struct.drm_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %25
  %56 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 0
  %58 = load %struct.device*, %struct.device** %57, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %4, align 8
  %61 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %60, i32 0, i32 0
  %62 = load %struct.drm_device*, %struct.drm_device** %61, align 8
  %63 = call i32 @PTR_ERR(%struct.drm_device* %62)
  store i32 %63, i32* %6, align 4
  br label %92

64:                                               ; preds = %25
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %67 = call i32 @dev_set_drvdata(%struct.device* %65, %struct.drm_device* %66)
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %70 = call i32 @component_bind_all(%struct.device* %68, %struct.drm_device* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %87

74:                                               ; preds = %64
  %75 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %76 = call i32 @load_gpu(%struct.drm_device* %75)
  %77 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %78 = call i32 @drm_dev_register(%struct.drm_device* %77, i32 0)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %83

82:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %99

83:                                               ; preds = %81
  %84 = load %struct.device*, %struct.device** %3, align 8
  %85 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %86 = call i32 @component_unbind_all(%struct.device* %84, %struct.drm_device* %85)
  br label %87

87:                                               ; preds = %83, %73
  %88 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %4, align 8
  %89 = getelementptr inbounds %struct.etnaviv_drm_private, %struct.etnaviv_drm_private* %88, i32 0, i32 0
  %90 = load %struct.drm_device*, %struct.drm_device** %89, align 8
  %91 = call i32 @etnaviv_cmdbuf_suballoc_destroy(%struct.drm_device* %90)
  br label %92

92:                                               ; preds = %87, %55
  %93 = load %struct.etnaviv_drm_private*, %struct.etnaviv_drm_private** %4, align 8
  %94 = call i32 @kfree(%struct.etnaviv_drm_private* %93)
  br label %95

95:                                               ; preds = %92, %20
  %96 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %97 = call i32 @drm_dev_put(%struct.drm_device* %96)
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %82, %12
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local %struct.etnaviv_drm_private* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dma_set_max_seg_size(%struct.device*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.drm_device* @etnaviv_cmdbuf_suballoc_new(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @component_bind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @load_gpu(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @component_unbind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @etnaviv_cmdbuf_suballoc_destroy(%struct.drm_device*) #1

declare dso_local i32 @kfree(%struct.etnaviv_drm_private*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
