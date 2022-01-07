; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_l3_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_l3_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, i32, %struct.xgene_edac_dev_ctx* }
%struct.xgene_edac_dev_ctx = type { i32, i64 }

@L3C_ESR = common dso_local global i64 0, align 8
@L3C_ESR_UCERR_MASK = common dso_local global i32 0, align 4
@L3C_ESR_CERR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"L3C uncorrectable error\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"L3C correctable error\0A\00", align 1
@L3C_ELR = common dso_local global i64 0, align 8
@L3C_AELR = common dso_local global i64 0, align 8
@L3C_BELR = common dso_local global i64 0, align 8
@L3C_ESR_MULTIHIT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"L3C multiple hit error\0A\00", align 1
@L3C_ESR_UCEVICT_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"L3C dropped eviction of line with error\0A\00", align 1
@L3C_ESR_MULTIUCERR_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"L3C multiple uncorrectable error\0A\00", align 1
@L3C_ESR_DATATAG_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"L3C data error syndrome 0x%X group 0x%X\0A\00", align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"L3C tag error syndrome 0x%X Way of Tag 0x%X Agent ID 0x%X Operation type 0x%X\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"L3C error address 0x%08X.%08X bank %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"L3C error status register value 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*)* @xgene_edac_l3_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_edac_l3_check(%struct.edac_device_ctl_info* %0) #0 {
  %2 = alloca %struct.edac_device_ctl_info*, align 8
  %3 = alloca %struct.xgene_edac_dev_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %2, align 8
  %8 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %9 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %8, i32 0, i32 2
  %10 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %9, align 8
  store %struct.xgene_edac_dev_ctx* %10, %struct.xgene_edac_dev_ctx** %3, align 8
  %11 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @L3C_ESR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @L3C_ESR_UCERR_MASK, align 4
  %19 = load i32, i32* @L3C_ESR_CERR_MASK, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %183

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @L3C_ESR_UCERR_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %31 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @L3C_ESR_CERR_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %41 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @L3C_ELR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  store i32 %50, i32* %5, align 4
  %51 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @L3C_AELR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl(i64 %55)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @L3C_BELR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @readl(i64 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @L3C_ESR_MULTIHIT_MASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %44
  %68 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %69 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %44
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @L3C_ESR_UCEVICT_MASK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %79 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @L3C_ESR_MULTIUCERR_MASK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %89 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, ...) @dev_err(i32 %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %87, %82
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @L3C_ESR_DATATAG_MASK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %99 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @L3C_ELR_ERRSYN(i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @L3C_ELR_ERRGRP(i32 %103)
  %105 = call i32 (i32, i8*, ...) @dev_err(i32 %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %102, i32 %104)
  br label %119

106:                                              ; preds = %92
  %107 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %108 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @L3C_ELR_ERRSYN(i32 %110)
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @L3C_ELR_ERRWAY(i32 %112)
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @L3C_ELR_AGENTID(i32 %114)
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @L3C_ELR_OPTYPE(i32 %116)
  %118 = call i32 (i32, i8*, ...) @dev_err(i32 %109, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i64 0, i64 0), i32 %111, i32 %113, i32 %115, i32 %117)
  br label %119

119:                                              ; preds = %106, %97
  %120 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %121 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @L3C_ELR_PADDRHIGH(i32 %123)
  %125 = shl i32 %124, 6
  %126 = load i32, i32* %6, align 4
  %127 = ashr i32 %126, 26
  %128 = or i32 %125, %127
  %129 = load i32, i32* %6, align 4
  %130 = and i32 %129, 1073741823
  %131 = shl i32 %130, 6
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @L3C_BELR_BANK(i32 %132)
  %134 = call i32 (i32, i8*, ...) @dev_err(i32 %122, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %128, i32 %131, i32 %133)
  %135 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %136 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 (i32, i8*, ...) @dev_err(i32 %137, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %138)
  %140 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %141 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @L3C_ESR, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writel(i32 0, i64 %144)
  %146 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %147 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp sle i32 %148, 1
  br i1 %149, label %150, label %161

150:                                              ; preds = %119
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i64 @xgene_edac_l3_promote_to_uc_err(i32 %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %157 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %158 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %156, i32 0, i32 0, i32 %159)
  br label %183

161:                                              ; preds = %150, %119
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @L3C_ESR_CERR_MASK, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %168 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %169 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @edac_device_handle_ce(%struct.edac_device_ctl_info* %167, i32 0, i32 0, i32 %170)
  br label %172

172:                                              ; preds = %166, %161
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @L3C_ESR_UCERR_MASK, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %179 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %180 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %178, i32 0, i32 0, i32 %181)
  br label %183

183:                                              ; preds = %23, %155, %177, %172
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @L3C_ELR_ERRSYN(i32) #1

declare dso_local i32 @L3C_ELR_ERRGRP(i32) #1

declare dso_local i32 @L3C_ELR_ERRWAY(i32) #1

declare dso_local i32 @L3C_ELR_AGENTID(i32) #1

declare dso_local i32 @L3C_ELR_OPTYPE(i32) #1

declare dso_local i32 @L3C_ELR_PADDRHIGH(i32) #1

declare dso_local i32 @L3C_BELR_BANK(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @xgene_edac_l3_promote_to_uc_err(i32, i32) #1

declare dso_local i32 @edac_device_handle_ue(%struct.edac_device_ctl_info*, i32, i32, i32) #1

declare dso_local i32 @edac_device_handle_ce(%struct.edac_device_ctl_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
