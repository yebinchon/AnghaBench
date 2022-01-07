; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mem_ctl_info = type { i32 }
%struct.edac_mc_layer = type { i32, i32, i32 }

@ppc4xx_edac_probe.ppc4xx_edac_instance = internal global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ibm,sdram-405ex\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ibm,sdram-405exr\00", align 1
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Only the PPC405EX[r] is supported.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SDRAM_MCOPT1 = common dso_local global i32 0, align 4
@SDRAM_MCOPT1_MCHK_MASK = common dso_local global i32 0, align 4
@SDRAM_MCOPT1_MCHK_NON = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"%pOF: No ECC memory detected or ECC is disabled.\0A\00", align 1
@EDAC_MC_LAYER_CHIP_SELECT = common dso_local global i32 0, align 4
@ppc4xx_edac_nr_csrows = common dso_local global i32 0, align 4
@EDAC_MC_LAYER_CHANNEL = common dso_local global i32 0, align 4
@ppc4xx_edac_nr_chans = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"%pOF: Failed to allocate EDAC MC instance!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to initialize instance!\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to add instance!\0A\00", align 1
@edac_op_state = common dso_local global i64 0, align 8
@EDAC_OPSTATE_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ppc4xx_edac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc4xx_edac_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.mem_ctl_info*, align 8
  %10 = alloca [2 x %struct.edac_mc_layer], align 16
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %8, align 8
  store %struct.mem_ctl_info* null, %struct.mem_ctl_info** %9, align 8
  %15 = load %struct.device_node*, %struct.device_node** %8, align 8
  %16 = call i32 @of_device_is_compatible(%struct.device_node* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %1
  %19 = load %struct.device_node*, %struct.device_node** %8, align 8
  %20 = call i32 @of_device_is_compatible(%struct.device_node* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @KERN_NOTICE, align 4
  %24 = call i32 (i32, i8*, ...) @ppc4xx_edac_printk(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %125

27:                                               ; preds = %18, %1
  %28 = load %struct.device_node*, %struct.device_node** %8, align 8
  %29 = call i32 @ppc4xx_edac_map_dcrs(%struct.device_node* %28, i32* %7)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %125

34:                                               ; preds = %27
  %35 = load i32, i32* @SDRAM_MCOPT1, align 4
  %36 = call i32 @mfsdram(i32* %7, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SDRAM_MCOPT1_MCHK_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SDRAM_MCOPT1_MCHK_NON, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load i32, i32* @KERN_INFO, align 4
  %45 = load %struct.device_node*, %struct.device_node** %8, align 8
  %46 = call i32 (i32, i8*, ...) @ppc4xx_edac_printk(i32 %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %45)
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %123

49:                                               ; preds = %34
  %50 = load i32, i32* @EDAC_MC_LAYER_CHIP_SELECT, align 4
  %51 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %10, i64 0, i64 0
  %52 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @ppc4xx_edac_nr_csrows, align 4
  %54 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %10, i64 0, i64 0
  %55 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %10, i64 0, i64 0
  %57 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %56, i32 0, i32 0
  store i32 1, i32* %57, align 16
  %58 = load i32, i32* @EDAC_MC_LAYER_CHANNEL, align 4
  %59 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %10, i64 0, i64 1
  %60 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @ppc4xx_edac_nr_chans, align 4
  %62 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %10, i64 0, i64 1
  %63 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %10, i64 0, i64 1
  %65 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* @ppc4xx_edac_probe.ppc4xx_edac_instance, align 4
  %67 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %10, i64 0, i64 0
  %68 = call i32 @ARRAY_SIZE(%struct.edac_mc_layer* %67)
  %69 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %10, i64 0, i64 0
  %70 = call %struct.mem_ctl_info* @edac_mc_alloc(i32 %66, i32 %68, %struct.edac_mc_layer* %69, i32 4)
  store %struct.mem_ctl_info* %70, %struct.mem_ctl_info** %9, align 8
  %71 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %72 = icmp eq %struct.mem_ctl_info* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %49
  %74 = load i32, i32* @KERN_ERR, align 4
  %75 = load %struct.device_node*, %struct.device_node** %8, align 8
  %76 = call i32 (i32, i8*, ...) @ppc4xx_edac_printk(i32 %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %123

79:                                               ; preds = %49
  %80 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @ppc4xx_edac_mc_init(%struct.mem_ctl_info* %80, %struct.platform_device* %81, i32* %7, i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @KERN_ERR, align 4
  %88 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %89 = call i32 @ppc4xx_edac_mc_printk(i32 %87, %struct.mem_ctl_info* %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %120

90:                                               ; preds = %79
  %91 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %92 = call i64 @edac_mc_add_mc(%struct.mem_ctl_info* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* @KERN_ERR, align 4
  %96 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %97 = call i32 @ppc4xx_edac_mc_printk(i32 %95, %struct.mem_ctl_info* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %98 = load i32, i32* @ENODEV, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %120

100:                                              ; preds = %90
  %101 = load i64, i64* @edac_op_state, align 8
  %102 = load i64, i64* @EDAC_OPSTATE_INT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %107 = call i32 @ppc4xx_edac_register_irq(%struct.platform_device* %105, %struct.mem_ctl_info* %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %115

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %100
  %113 = load i32, i32* @ppc4xx_edac_probe.ppc4xx_edac_instance, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* @ppc4xx_edac_probe.ppc4xx_edac_instance, align 4
  store i32 0, i32* %2, align 4
  br label %125

115:                                              ; preds = %110
  %116 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %117 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @edac_mc_del_mc(i32 %118)
  br label %120

120:                                              ; preds = %115, %94, %86
  %121 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %122 = call i32 @edac_mc_free(%struct.mem_ctl_info* %121)
  br label %123

123:                                              ; preds = %120, %73, %43
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %123, %112, %32, %22
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @ppc4xx_edac_printk(i32, i8*, ...) #1

declare dso_local i32 @ppc4xx_edac_map_dcrs(%struct.device_node*, i32*) #1

declare dso_local i32 @mfsdram(i32*, i32) #1

declare dso_local %struct.mem_ctl_info* @edac_mc_alloc(i32, i32, %struct.edac_mc_layer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.edac_mc_layer*) #1

declare dso_local i32 @ppc4xx_edac_mc_init(%struct.mem_ctl_info*, %struct.platform_device*, i32*, i32) #1

declare dso_local i32 @ppc4xx_edac_mc_printk(i32, %struct.mem_ctl_info*, i8*) #1

declare dso_local i64 @edac_mc_add_mc(%struct.mem_ctl_info*) #1

declare dso_local i32 @ppc4xx_edac_register_irq(%struct.platform_device*, %struct.mem_ctl_info*) #1

declare dso_local i32 @edac_mc_del_mc(i32) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
