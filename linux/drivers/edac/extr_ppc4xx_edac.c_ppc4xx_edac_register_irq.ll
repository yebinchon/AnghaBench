; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_register_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_register_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mem_ctl_info = type { %struct.ppc4xx_edac_pdata* }
%struct.ppc4xx_edac_pdata = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@INTMAP_ECCDED_INDEX = common dso_local global i32 0, align 4
@INTMAP_ECCSEC_INDEX = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to map interrupts.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ppc4xx_edac_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"[EDAC] MC ECCDED\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to request irq %d for ECC DED\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"[EDAC] MC ECCSEC\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Unable to request irq %d for ECC SEC\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"ECCDED irq is %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"ECCSEC irq is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.mem_ctl_info*)* @ppc4xx_edac_register_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc4xx_edac_register_irq(%struct.platform_device* %0, %struct.mem_ctl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ppc4xx_edac_pdata*, align 8
  %10 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.mem_ctl_info* %1, %struct.mem_ctl_info** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %12 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %11, i32 0, i32 0
  %13 = load %struct.ppc4xx_edac_pdata*, %struct.ppc4xx_edac_pdata** %12, align 8
  store %struct.ppc4xx_edac_pdata* %13, %struct.ppc4xx_edac_pdata** %9, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %10, align 8
  %18 = load %struct.device_node*, %struct.device_node** %10, align 8
  %19 = load i32, i32* @INTMAP_ECCDED_INDEX, align 4
  %20 = call i32 @irq_of_parse_and_map(%struct.device_node* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.device_node*, %struct.device_node** %10, align 8
  %22 = load i32, i32* @INTMAP_ECCSEC_INDEX, align 4
  %23 = call i32 @irq_of_parse_and_map(%struct.device_node* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %32 = call i32 (i32, %struct.mem_ctl_info*, i8*, ...) @ppc4xx_edac_mc_printk(i32 %30, %struct.mem_ctl_info* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %88

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ppc4xx_edac_isr, align 4
  %38 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %39 = call i32 @request_irq(i32 %36, i32 %37, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.mem_ctl_info* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32, i32* @KERN_ERR, align 4
  %44 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i32, %struct.mem_ctl_info*, i8*, ...) @ppc4xx_edac_mc_printk(i32 %43, %struct.mem_ctl_info* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %84

49:                                               ; preds = %35
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @ppc4xx_edac_isr, align 4
  %52 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %53 = call i32 @request_irq(i32 %50, i32 %51, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), %struct.mem_ctl_info* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load i32, i32* @KERN_ERR, align 4
  %58 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, %struct.mem_ctl_info*, i8*, ...) @ppc4xx_edac_mc_printk(i32 %57, %struct.mem_ctl_info* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %80

63:                                               ; preds = %49
  %64 = load i32, i32* @KERN_INFO, align 4
  %65 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i32, %struct.mem_ctl_info*, i8*, ...) @ppc4xx_edac_mc_printk(i32 %64, %struct.mem_ctl_info* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @KERN_INFO, align 4
  %69 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i32, %struct.mem_ctl_info*, i8*, ...) @ppc4xx_edac_mc_printk(i32 %68, %struct.mem_ctl_info* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.ppc4xx_edac_pdata*, %struct.ppc4xx_edac_pdata** %9, align 8
  %74 = getelementptr inbounds %struct.ppc4xx_edac_pdata, %struct.ppc4xx_edac_pdata* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.ppc4xx_edac_pdata*, %struct.ppc4xx_edac_pdata** %9, align 8
  %78 = getelementptr inbounds %struct.ppc4xx_edac_pdata, %struct.ppc4xx_edac_pdata* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  store i32 0, i32* %3, align 4
  br label %90

80:                                               ; preds = %56
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %83 = call i32 @free_irq(i32 %81, %struct.mem_ctl_info* %82)
  br label %84

84:                                               ; preds = %80, %42
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %87 = call i32 @free_irq(i32 %85, %struct.mem_ctl_info* %86)
  br label %88

88:                                               ; preds = %84, %29
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %63
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @ppc4xx_edac_mc_printk(i32, %struct.mem_ctl_info*, i8*, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.mem_ctl_info*) #1

declare dso_local i32 @free_irq(i32, %struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
