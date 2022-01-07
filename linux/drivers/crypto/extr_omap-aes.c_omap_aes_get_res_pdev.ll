; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_get_res_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes.c_omap_aes_get_res_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_aes_dev = type { i32* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no MEM resource info\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@omap_aes_pdata_omap2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_aes_dev*, %struct.platform_device*, %struct.resource*)* @omap_aes_get_res_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_aes_get_res_pdev(%struct.omap_aes_dev* %0, %struct.platform_device* %1, %struct.resource* %2) #0 {
  %4 = alloca %struct.omap_aes_dev*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.omap_aes_dev* %0, %struct.omap_aes_dev** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  store %struct.resource* %2, %struct.resource** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = load i32, i32* @IORESOURCE_MEM, align 4
  %14 = call %struct.resource* @platform_get_resource(%struct.platform_device* %12, i32 %13, i32 0)
  store %struct.resource* %14, %struct.resource** %8, align 8
  %15 = load %struct.resource*, %struct.resource** %8, align 8
  %16 = icmp ne %struct.resource* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %7, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  br label %28

22:                                               ; preds = %3
  %23 = load %struct.resource*, %struct.resource** %6, align 8
  %24 = load %struct.resource*, %struct.resource** %8, align 8
  %25 = call i32 @memcpy(%struct.resource* %23, %struct.resource* %24, i32 4)
  %26 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %27 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %26, i32 0, i32 0
  store i32* @omap_aes_pdata_omap2, i32** %27, align 8
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %9, align 4
  ret i32 %29
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @memcpy(%struct.resource*, %struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
