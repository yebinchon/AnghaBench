; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.amdgpu_ras = type { i32, i32, i32, i32, i64, %struct.ras_manager* }
%struct.ras_manager = type { i32 }

@AMDGPU_RAS_BLOCK_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RAS_DEFAULT_FLAGS = common dso_local global i32 0, align 4
@AMDGPU_RAS_BLOCK_MASK = common dso_local global i32 0, align 4
@amdgpu_ras_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"RAS INFO: ras initialized successfully, hardware ability[%x] ras_mask[%x]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ras_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ras*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %5)
  store %struct.amdgpu_ras* %6, %struct.amdgpu_ras** %4, align 8
  %7 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %8 = icmp ne %struct.amdgpu_ras* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

10:                                               ; preds = %1
  %11 = load i32, i32* @AMDGPU_RAS_BLOCK_COUNT, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = add i64 32, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i32, i32* @__GFP_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.amdgpu_ras* @kmalloc(i32 %15, i32 %18)
  store %struct.amdgpu_ras* %19, %struct.amdgpu_ras** %4, align 8
  %20 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %21 = icmp ne %struct.amdgpu_ras* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %10
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %107

25:                                               ; preds = %10
  %26 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %26, i64 1
  %28 = bitcast %struct.amdgpu_ras* %27 to %struct.ras_manager*
  %29 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %29, i32 0, i32 5
  store %struct.ras_manager* %28, %struct.ras_manager** %30, align 8
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %33 = call i32 @amdgpu_ras_set_context(%struct.amdgpu_device* %31, %struct.amdgpu_ras* %32)
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %36 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %35, i32 0, i32 1
  %37 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %37, i32 0, i32 0
  %39 = call i32 @amdgpu_ras_check_supported(%struct.amdgpu_device* %34, i32* %36, i32* %38)
  %40 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %25
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = call i32 @amdgpu_ras_set_context(%struct.amdgpu_device* %45, %struct.amdgpu_ras* null)
  %47 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %48 = call i32 @kfree(%struct.amdgpu_ras* %47)
  store i32 0, i32* %2, align 4
  br label %107

49:                                               ; preds = %25
  %50 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %53 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %52, i32 0, i32 3
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load i32, i32* @RAS_DEFAULT_FLAGS, align 4
  %56 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %57 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = call i64 @amdgpu_ras_recovery_init(%struct.amdgpu_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %100

62:                                               ; preds = %49
  %63 = load i32, i32* @AMDGPU_RAS_BLOCK_MASK, align 4
  %64 = load i32, i32* @amdgpu_ras_mask, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* @amdgpu_ras_mask, align 4
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %67 = call i64 @amdgpu_ras_fs_init(%struct.amdgpu_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %97

70:                                               ; preds = %62
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = bitcast {}** %75 to i32 (%struct.amdgpu_device*)**
  %77 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %76, align 8
  %78 = icmp ne i32 (%struct.amdgpu_device*)* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %70
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = bitcast {}** %84 to i32 (%struct.amdgpu_device*)**
  %86 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %85, align 8
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %88 = call i32 %86(%struct.amdgpu_device* %87)
  br label %89

89:                                               ; preds = %79, %70
  %90 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %91 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %94 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @DRM_INFO(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %95)
  store i32 0, i32* %2, align 4
  br label %107

97:                                               ; preds = %69
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %99 = call i32 @amdgpu_ras_recovery_fini(%struct.amdgpu_device* %98)
  br label %100

100:                                              ; preds = %97, %61
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %102 = call i32 @amdgpu_ras_set_context(%struct.amdgpu_device* %101, %struct.amdgpu_ras* null)
  %103 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %104 = call i32 @kfree(%struct.amdgpu_ras* %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %100, %89, %44, %22, %9
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

declare dso_local %struct.amdgpu_ras* @kmalloc(i32, i32) #1

declare dso_local i32 @amdgpu_ras_set_context(%struct.amdgpu_device*, %struct.amdgpu_ras*) #1

declare dso_local i32 @amdgpu_ras_check_supported(%struct.amdgpu_device*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.amdgpu_ras*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @amdgpu_ras_recovery_init(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_ras_fs_init(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

declare dso_local i32 @amdgpu_ras_recovery_fini(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
