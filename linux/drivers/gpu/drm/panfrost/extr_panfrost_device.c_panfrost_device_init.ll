; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_device.c_panfrost_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_device.c_panfrost_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"clk init failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"regulator init failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"reset init failed %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to ioremap iomem\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @panfrost_device_init(%struct.panfrost_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panfrost_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  store %struct.panfrost_device* %0, %struct.panfrost_device** %3, align 8
  %6 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %7 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %6, i32 0, i32 7
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %10 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %9, i32 0, i32 6
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %13 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %12, i32 0, i32 5
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %16 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %15, i32 0, i32 4
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %19 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %18, i32 0, i32 3
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %22 = call i32 @panfrost_clk_init(%struct.panfrost_device* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %27 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %125

32:                                               ; preds = %1
  %33 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %34 = call i32 @panfrost_regulator_init(%struct.panfrost_device* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %39 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %121

43:                                               ; preds = %32
  %44 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %45 = call i32 @panfrost_reset_init(%struct.panfrost_device* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %50 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %118

54:                                               ; preds = %43
  %55 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %56 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IORESOURCE_MEM, align 4
  %59 = call %struct.resource* @platform_get_resource(i32 %57, i32 %58, i32 0)
  store %struct.resource* %59, %struct.resource** %5, align 8
  %60 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %61 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.resource*, %struct.resource** %5, align 8
  %64 = call i32 @devm_ioremap_resource(i32 %62, %struct.resource* %63)
  %65 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %66 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %68 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %54
  %73 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %74 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @dev_err(i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %78 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %4, align 4
  br label %115

81:                                               ; preds = %54
  %82 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %83 = call i32 @panfrost_gpu_init(%struct.panfrost_device* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %115

87:                                               ; preds = %81
  %88 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %89 = call i32 @panfrost_mmu_init(%struct.panfrost_device* %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %112

93:                                               ; preds = %87
  %94 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %95 = call i32 @panfrost_job_init(%struct.panfrost_device* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %109

99:                                               ; preds = %93
  %100 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %101 = call i32 @panfrost_perfcnt_init(%struct.panfrost_device* %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %106

105:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %125

106:                                              ; preds = %104
  %107 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %108 = call i32 @panfrost_job_fini(%struct.panfrost_device* %107)
  br label %109

109:                                              ; preds = %106, %98
  %110 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %111 = call i32 @panfrost_mmu_fini(%struct.panfrost_device* %110)
  br label %112

112:                                              ; preds = %109, %92
  %113 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %114 = call i32 @panfrost_gpu_fini(%struct.panfrost_device* %113)
  br label %115

115:                                              ; preds = %112, %86, %72
  %116 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %117 = call i32 @panfrost_reset_fini(%struct.panfrost_device* %116)
  br label %118

118:                                              ; preds = %115, %48
  %119 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %120 = call i32 @panfrost_regulator_fini(%struct.panfrost_device* %119)
  br label %121

121:                                              ; preds = %118, %37
  %122 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %123 = call i32 @panfrost_clk_fini(%struct.panfrost_device* %122)
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %105, %25
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @panfrost_clk_init(%struct.panfrost_device*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @panfrost_regulator_init(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_reset_init(%struct.panfrost_device*) #1

declare dso_local %struct.resource* @platform_get_resource(i32, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @panfrost_gpu_init(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_mmu_init(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_job_init(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_perfcnt_init(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_job_fini(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_mmu_fini(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_gpu_fini(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_reset_fini(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_regulator_fini(%struct.panfrost_device*) #1

declare dso_local i32 @panfrost_clk_fini(%struct.panfrost_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
