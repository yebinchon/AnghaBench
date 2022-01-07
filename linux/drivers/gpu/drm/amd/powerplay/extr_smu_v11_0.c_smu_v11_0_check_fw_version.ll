; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_check_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_check_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SMU11_DRIVER_IF_VERSION_VG20 = common dso_local global i32 0, align 4
@SMU11_DRIVER_IF_VERSION_ARCT = common dso_local global i32 0, align 4
@SMU11_DRIVER_IF_VERSION_NV10 = common dso_local global i32 0, align 4
@SMU11_DRIVER_IF_VERSION_NV14 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"smu unsupported asic type:%d.\0A\00", align 1
@SMU11_DRIVER_IF_VERSION_INV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [96 x i8] c"smu driver if version = 0x%08x, smu fw if version = 0x%08x, smu fw version = 0x%08x (%d.%d.%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"SMU driver if version not matched\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_check_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_check_fw_version(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  store i32 255, i32* %4, align 4
  store i32 255, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %11 = call i32 @smu_get_smc_version(%struct.smu_context* %10, i32* %4, i32* %5)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %2, align 4
  br label %76

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 16
  %19 = and i32 %18, 65535
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 0
  %25 = and i32 %24, 255
  store i32 %25, i32* %8, align 4
  %26 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %27 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %47 [
    i32 128, label %31
    i32 131, label %35
    i32 130, label %39
    i32 129, label %43
  ]

31:                                               ; preds = %16
  %32 = load i32, i32* @SMU11_DRIVER_IF_VERSION_VG20, align 4
  %33 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %34 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %57

35:                                               ; preds = %16
  %36 = load i32, i32* @SMU11_DRIVER_IF_VERSION_ARCT, align 4
  %37 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %38 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %57

39:                                               ; preds = %16
  %40 = load i32, i32* @SMU11_DRIVER_IF_VERSION_NV10, align 4
  %41 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %42 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %57

43:                                               ; preds = %16
  %44 = load i32, i32* @SMU11_DRIVER_IF_VERSION_NV14, align 4
  %45 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %46 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %57

47:                                               ; preds = %16
  %48 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %49 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @SMU11_DRIVER_IF_VERSION_INV, align 4
  %55 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %56 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %47, %43, %39, %35, %31
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %60 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %65 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @pr_info(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %63, %57
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %14
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @smu_get_smc_version(%struct.smu_context*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
