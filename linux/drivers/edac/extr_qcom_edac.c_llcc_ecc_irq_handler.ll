; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_qcom_edac.c_llcc_ecc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_qcom_edac.c_llcc_ecc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { %struct.llcc_drv_data* }
%struct.llcc_drv_data = type { i64, i64*, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DRP_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@SB_ECC_ERROR = common dso_local global i64 0, align 8
@KERN_CRIT = common dso_local global i32 0, align 4
@EDAC_LLCC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Single Bit Error detected in Data RAM\0A\00", align 1
@LLCC_DRAM_CE = common dso_local global i32 0, align 4
@DB_ECC_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Double Bit Error detected in Data RAM\0A\00", align 1
@LLCC_DRAM_UE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@TRP_INTERRUPT_0_STATUS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Single Bit Error detected in Tag RAM\0A\00", align 1
@LLCC_TRAM_CE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Double Bit Error detected in Tag RAM\0A\00", align 1
@LLCC_TRAM_UE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @llcc_ecc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llcc_ecc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.edac_device_ctl_info*, align 8
  %6 = alloca %struct.llcc_drv_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.edac_device_ctl_info*
  store %struct.edac_device_ctl_info* %13, %struct.edac_device_ctl_info** %5, align 8
  %14 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %15 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %14, i32 0, i32 0
  %16 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %15, align 8
  store %struct.llcc_drv_data* %16, %struct.llcc_drv_data** %6, align 8
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %7, align 4
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %125, %2
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %6, align 8
  %21 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %128

24:                                               ; preds = %18
  %25 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %6, align 8
  %26 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %6, align 8
  %29 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DRP_INTERRUPT_STATUS, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @regmap_read(i32 %27, i64 %35, i64* %8)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %24
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @SB_ECC_ERROR, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* @KERN_CRIT, align 4
  %46 = load i32, i32* @EDAC_LLCC, align 4
  %47 = call i32 @edac_printk(i32 %45, i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* @LLCC_DRAM_CE, align 4
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @dump_syn_reg(i8* %48, i32 %49, i64 %50)
  store i32 %51, i32* %11, align 4
  br label %69

52:                                               ; preds = %39, %24
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @DB_ECC_ERROR, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32, i32* @KERN_CRIT, align 4
  %62 = load i32, i32* @EDAC_LLCC, align 4
  %63 = call i32 @edac_printk(i32 %61, i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* @LLCC_DRAM_UE, align 4
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @dump_syn_reg(i8* %64, i32 %65, i64 %66)
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %60, %55, %52
  br label %69

69:                                               ; preds = %68, %44
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %6, align 8
  %76 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %6, align 8
  %79 = getelementptr inbounds %struct.llcc_drv_data, %struct.llcc_drv_data* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TRP_INTERRUPT_0_STATUS, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @regmap_read(i32 %77, i64 %85, i64* %9)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %74
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* @SB_ECC_ERROR, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i32, i32* @KERN_CRIT, align 4
  %96 = load i32, i32* @EDAC_LLCC, align 4
  %97 = call i32 @edac_printk(i32 %95, i32 %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i8*, i8** %4, align 8
  %99 = load i32, i32* @LLCC_TRAM_CE, align 4
  %100 = load i64, i64* %10, align 8
  %101 = call i32 @dump_syn_reg(i8* %98, i32 %99, i64 %100)
  store i32 %101, i32* %11, align 4
  br label %119

102:                                              ; preds = %89, %74
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %102
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* @DB_ECC_ERROR, align 8
  %108 = and i64 %106, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load i32, i32* @KERN_CRIT, align 4
  %112 = load i32, i32* @EDAC_LLCC, align 4
  %113 = call i32 @edac_printk(i32 %111, i32 %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i8*, i8** %4, align 8
  %115 = load i32, i32* @LLCC_TRAM_UE, align 4
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @dump_syn_reg(i8* %114, i32 %115, i64 %116)
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %110, %105, %102
  br label %119

119:                                              ; preds = %118, %94
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %122, %119
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %10, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %10, align 8
  br label %18

128:                                              ; preds = %18
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i32 @regmap_read(i32, i64, i64*) #1

declare dso_local i32 @edac_printk(i32, i32, i8*) #1

declare dso_local i32 @dump_syn_reg(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
