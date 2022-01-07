; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp.c_mtk_ddp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp.c_mtk_ddp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_ddp = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to get clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to map mutex registers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_ddp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_ddp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtk_ddp*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mtk_ddp* @devm_kzalloc(%struct.device* %10, i32 24, i32 %11)
  store %struct.mtk_ddp* %12, %struct.mtk_ddp** %5, align 8
  %13 = load %struct.mtk_ddp*, %struct.mtk_ddp** %5, align 8
  %14 = icmp ne %struct.mtk_ddp* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %80

18:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 10
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.mtk_ddp*, %struct.mtk_ddp** %5, align 8
  %25 = getelementptr inbounds %struct.mtk_ddp, %struct.mtk_ddp* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %23, i32* %30, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %19

34:                                               ; preds = %19
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @devm_clk_get(%struct.device* %35, i32* null)
  %37 = load %struct.mtk_ddp*, %struct.mtk_ddp** %5, align 8
  %38 = getelementptr inbounds %struct.mtk_ddp, %struct.mtk_ddp* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mtk_ddp*, %struct.mtk_ddp** %5, align 8
  %40 = getelementptr inbounds %struct.mtk_ddp, %struct.mtk_ddp* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %34
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.mtk_ddp*, %struct.mtk_ddp** %5, align 8
  %48 = getelementptr inbounds %struct.mtk_ddp, %struct.mtk_ddp* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %80

51:                                               ; preds = %34
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load i32, i32* @IORESOURCE_MEM, align 4
  %54 = call %struct.resource* @platform_get_resource(%struct.platform_device* %52, i32 %53, i32 0)
  store %struct.resource* %54, %struct.resource** %6, align 8
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load %struct.resource*, %struct.resource** %6, align 8
  %57 = call i32 @devm_ioremap_resource(%struct.device* %55, %struct.resource* %56)
  %58 = load %struct.mtk_ddp*, %struct.mtk_ddp** %5, align 8
  %59 = getelementptr inbounds %struct.mtk_ddp, %struct.mtk_ddp* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.mtk_ddp*, %struct.mtk_ddp** %5, align 8
  %61 = getelementptr inbounds %struct.mtk_ddp, %struct.mtk_ddp* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %51
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.mtk_ddp*, %struct.mtk_ddp** %5, align 8
  %69 = getelementptr inbounds %struct.mtk_ddp, %struct.mtk_ddp* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PTR_ERR(i32 %70)
  store i32 %71, i32* %2, align 4
  br label %80

72:                                               ; preds = %51
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call i32 @of_device_get_match_data(%struct.device* %73)
  %75 = load %struct.mtk_ddp*, %struct.mtk_ddp** %5, align 8
  %76 = getelementptr inbounds %struct.mtk_ddp, %struct.mtk_ddp* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load %struct.mtk_ddp*, %struct.mtk_ddp** %5, align 8
  %79 = call i32 @platform_set_drvdata(%struct.platform_device* %77, %struct.mtk_ddp* %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %72, %65, %44, %15
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.mtk_ddp* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_ddp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
