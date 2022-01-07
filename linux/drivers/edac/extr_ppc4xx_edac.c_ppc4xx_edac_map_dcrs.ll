; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_map_dcrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_map_dcrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to obtain DCR property.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SDRAM_DCR_RESOURCE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unexpected DCR length %d, expected %d.\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Failed to map DCRs.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i32*)* @ppc4xx_edac_map_dcrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc4xx_edac_map_dcrs(%struct.device_node* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = icmp eq %struct.device_node* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %58

16:                                               ; preds = %10
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = call i32 @dcr_resource_start(%struct.device_node* %17, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i32 @dcr_resource_len(%struct.device_node* %19, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23, %16
  %27 = load i32, i32* @KERN_ERR, align 4
  %28 = call i32 (i32, i8*, ...) @ppc4xx_edac_printk(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SDRAM_DCR_RESOURCE_LEN, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SDRAM_DCR_RESOURCE_LEN, align 4
  %39 = call i32 (i32, i8*, ...) @ppc4xx_edac_printk(i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %58

42:                                               ; preds = %31
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dcr_map(%struct.device_node* %43, i32 %44, i32 %45)
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DCR_MAP_OK(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @KERN_INFO, align 4
  %54 = call i32 (i32, i8*, ...) @ppc4xx_edac_printk(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %52, %35, %26, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @dcr_resource_start(%struct.device_node*, i32) #1

declare dso_local i32 @dcr_resource_len(%struct.device_node*, i32) #1

declare dso_local i32 @ppc4xx_edac_printk(i32, i8*, ...) #1

declare dso_local i32 @dcr_map(%struct.device_node*, i32, i32) #1

declare dso_local i32 @DCR_MAP_OK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
