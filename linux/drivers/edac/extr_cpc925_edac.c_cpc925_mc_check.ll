; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_cpc925_mc_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_cpc925_mc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.cpc925_mc_pdata* }
%struct.cpc925_mc_pdata = type { i64 }

@REG_APIEXCP_OFFSET = common dso_local global i64 0, align 8
@ECC_EXCP_DETECTED = common dso_local global i32 0, align 4
@REG_MESR_OFFSET = common dso_local global i64 0, align 8
@MESR_ECC_SYN_H_MASK = common dso_local global i32 0, align 4
@MESR_ECC_SYN_L_MASK = common dso_local global i32 0, align 4
@REG_MEAR_OFFSET = common dso_local global i64 0, align 8
@CECC_EXCP_DETECTED = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"DRAM CECC Fault\0A\00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@UECC_EXCP_DETECTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"DRAM UECC Fault\0A\00", align 1
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Dump registers:\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"APIMASK\09\090x%08x\0A\00", align 1
@REG_APIMASK_OFFSET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"APIEXCP\09\090x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Mem Scrub Ctrl\090x%08x\0A\00", align 1
@REG_MSCR_OFFSET = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"Mem Scrub Rge Start\090x%08x\0A\00", align 1
@REG_MSRSR_OFFSET = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"Mem Scrub Rge End\090x%08x\0A\00", align 1
@REG_MSRER_OFFSET = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"Mem Scrub Pattern\090x%08x\0A\00", align 1
@REG_MSPR_OFFSET = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"Mem Chk Ctrl\09\090x%08x\0A\00", align 1
@REG_MCCR_OFFSET = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [24 x i8] c"Mem Chk Rge End\090x%08x\0A\00", align 1
@REG_MCRER_OFFSET = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"Mem Err Address\090x%08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Mem Err Syndrome\090x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @cpc925_mc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpc925_mc_check(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.cpc925_mc_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 1
  %14 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %13, align 8
  store %struct.cpc925_mc_pdata* %14, %struct.cpc925_mc_pdata** %3, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %16 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REG_APIEXCP_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @__raw_readl(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ECC_EXCP_DETECTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %166

26:                                               ; preds = %1
  %27 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %28 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REG_MESR_OFFSET, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @__raw_readl(i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MESR_ECC_SYN_H_MASK, align 4
  %35 = load i32, i32* @MESR_ECC_SYN_L_MASK, align 4
  %36 = or i32 %34, %35
  %37 = or i32 %33, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %39 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REG_MEAR_OFFSET, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @__raw_readl(i64 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @cpc925_mc_get_pfn(%struct.mem_ctl_info* %44, i32 %45, i64* %8, i64* %9, i32* %10)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @CECC_EXCP_DETECTED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %26
  %52 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %53 = load i32, i32* @KERN_INFO, align 4
  %54 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %52, i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @cpc925_mc_find_channel(%struct.mem_ctl_info* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %59 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %66 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @edac_mc_handle_error(i32 %58, %struct.mem_ctl_info* %59, i32 1, i64 %60, i64 %61, i32 %62, i32 %63, i32 %64, i32 -1, i32 %67, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %51, %26
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @UECC_EXCP_DETECTED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %76 = load i32, i32* @KERN_INFO, align 4
  %77 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %75, i32 %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %79 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %84 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @edac_mc_handle_error(i32 %78, %struct.mem_ctl_info* %79, i32 1, i64 %80, i64 %81, i32 0, i32 %82, i32 -1, i32 -1, i32 %85, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %74, %69
  %88 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %89 = load i32, i32* @KERN_INFO, align 4
  %90 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %88, i32 %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %92 = load i32, i32* @KERN_INFO, align 4
  %93 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %94 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @REG_APIMASK_OFFSET, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @__raw_readl(i64 %97)
  %99 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %91, i32 %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %101 = load i32, i32* @KERN_INFO, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %100, i32 %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %105 = load i32, i32* @KERN_INFO, align 4
  %106 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %107 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @REG_MSCR_OFFSET, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @__raw_readl(i64 %110)
  %112 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %104, i32 %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  %113 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %114 = load i32, i32* @KERN_INFO, align 4
  %115 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %116 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @REG_MSRSR_OFFSET, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @__raw_readl(i64 %119)
  %121 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %113, i32 %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %120)
  %122 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %123 = load i32, i32* @KERN_INFO, align 4
  %124 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %125 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @REG_MSRER_OFFSET, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @__raw_readl(i64 %128)
  %130 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %122, i32 %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  %131 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %132 = load i32, i32* @KERN_INFO, align 4
  %133 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %134 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @REG_MSPR_OFFSET, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @__raw_readl(i64 %137)
  %139 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %131, i32 %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %138)
  %140 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %141 = load i32, i32* @KERN_INFO, align 4
  %142 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %143 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @REG_MCCR_OFFSET, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @__raw_readl(i64 %146)
  %148 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %140, i32 %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %147)
  %149 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %150 = load i32, i32* @KERN_INFO, align 4
  %151 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %152 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @REG_MCRER_OFFSET, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @__raw_readl(i64 %155)
  %157 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %149, i32 %150, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %156)
  %158 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %159 = load i32, i32* @KERN_INFO, align 4
  %160 = load i32, i32* %6, align 4
  %161 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %158, i32 %159, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %160)
  %162 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %163 = load i32, i32* @KERN_INFO, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %162, i32 %163, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %87, %25
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @cpc925_mc_get_pfn(%struct.mem_ctl_info*, i32, i64*, i64*, i32*) #1

declare dso_local i32 @cpc925_mc_printk(%struct.mem_ctl_info*, i32, i8*, ...) #1

declare dso_local i32 @cpc925_mc_find_channel(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i64, i64, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
