; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_mc_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_mc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.xgene_edac_mc_ctx* }
%struct.xgene_edac_mc_ctx = type { i64, i32 }

@PCPHPERRINTSTS = common dso_local global i32 0, align 4
@PCPLPERRINTSTS = common dso_local global i32 0, align 4
@MCU_UNCORR_ERR_MASK = common dso_local global i32 0, align 4
@MCU_CTL_ERR_MASK = common dso_local global i32 0, align 4
@MCU_CORR_ERR_MASK = common dso_local global i32 0, align 4
@MCU_MAX_RANK = common dso_local global i32 0, align 4
@MCUESRR0 = common dso_local global i64 0, align 8
@MCU_RANK_STRIDE = common dso_local global i32 0, align 4
@MCU_ESRR_DEMANDUCERR_MASK = common dso_local global i32 0, align 4
@MCU_ESRR_BACKUCERR_MASK = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"X-Gene\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"MCU uncorrectable error at rank %d\0A\00", align 1
@HW_EVENT_ERR_UNCORRECTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MCU_ESRR_CERR_MASK = common dso_local global i32 0, align 4
@MCUEBLRR0 = common dso_local global i64 0, align 8
@MCUERCRR0 = common dso_local global i64 0, align 8
@MCUSBECNT0 = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"MCU correctable error at rank %d bank %d column %d row %d count %d\0A\00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@MCUGESR = common dso_local global i64 0, align 8
@MCU_GESR_ADDRNOMATCH_ERR_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"MCU address miss-match error\0A\00", align 1
@MCU_GESR_ADDRMULTIMATCH_ERR_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"MCU address multi-match error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @xgene_edac_mc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_edac_mc_check(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.xgene_edac_mc_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %12 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %11, i32 0, i32 1
  %13 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %12, align 8
  store %struct.xgene_edac_mc_ctx* %13, %struct.xgene_edac_mc_ctx** %3, align 8
  %14 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PCPHPERRINTSTS, align 4
  %18 = call i32 @xgene_edac_pcp_rd(i32 %16, i32 %17, i32* %4)
  %19 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PCPLPERRINTSTS, align 4
  %23 = call i32 @xgene_edac_pcp_rd(i32 %21, i32 %22, i32* %5)
  %24 = load i32, i32* @MCU_UNCORR_ERR_MASK, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @MCU_CTL_ERR_MASK, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @MCU_CORR_ERR_MASK, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %214

39:                                               ; preds = %33, %28, %1
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %176, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MCU_MAX_RANK, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %179

44:                                               ; preds = %40
  %45 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MCUESRR0, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @MCU_RANK_STRIDE, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %49, %53
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @MCU_ESRR_DEMANDUCERR_MASK, align 4
  %58 = load i32, i32* @MCU_ESRR_BACKUCERR_MASK, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %44
  %63 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %64 = load i32, i32* @KERN_ERR, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (%struct.mem_ctl_info*, i32, i8*, i8*, ...) @edac_mc_chipset_printk(%struct.mem_ctl_info* %63, i32 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @HW_EVENT_ERR_UNCORRECTED, align 4
  %68 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %69 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %70 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @edac_mc_handle_error(i32 %67, %struct.mem_ctl_info* %68, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 %71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %62, %44
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @MCU_ESRR_CERR_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %130

78:                                               ; preds = %73
  %79 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MCUEBLRR0, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @MCU_RANK_STRIDE, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %83, %87
  %89 = call i32 @readl(i64 %88)
  store i32 %89, i32* %8, align 4
  %90 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %3, align 8
  %91 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MCUERCRR0, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @MCU_RANK_STRIDE, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %94, %98
  %100 = call i32 @readl(i64 %99)
  store i32 %100, i32* %10, align 4
  %101 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %3, align 8
  %102 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MCUSBECNT0, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @MCU_RANK_STRIDE, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %105, %109
  %111 = call i32 @readl(i64 %110)
  store i32 %111, i32* %9, align 4
  %112 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %113 = load i32, i32* @KERN_WARNING, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @MCU_EBLRR_ERRBANK_RD(i32 %115)
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @MCU_ERCRR_ERRCOL_RD(i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @MCU_ERCRR_ERRROW_RD(i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @MCU_SBECNT_COUNT(i32 %121)
  %123 = call i32 (%struct.mem_ctl_info*, i32, i8*, i8*, ...) @edac_mc_chipset_printk(%struct.mem_ctl_info* %112, i32 %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %114, i32 %116, i32 %118, i32 %120, i32 %122)
  %124 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %125 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %126 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %127 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @edac_mc_handle_error(i32 %124, %struct.mem_ctl_info* %125, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 %128, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %130

130:                                              ; preds = %78, %73
  %131 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %3, align 8
  %132 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @MCUEBLRR0, align 8
  %135 = add nsw i64 %133, %134
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @MCU_RANK_STRIDE, align 4
  %138 = mul nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %135, %139
  %141 = call i32 @writel(i32 0, i64 %140)
  %142 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %3, align 8
  %143 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @MCUERCRR0, align 8
  %146 = add nsw i64 %144, %145
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @MCU_RANK_STRIDE, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %146, %150
  %152 = call i32 @writel(i32 0, i64 %151)
  %153 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %3, align 8
  %154 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @MCUSBECNT0, align 8
  %157 = add nsw i64 %155, %156
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @MCU_RANK_STRIDE, align 4
  %160 = mul nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %157, %161
  %163 = call i32 @writel(i32 0, i64 %162)
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %3, align 8
  %166 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @MCUESRR0, align 8
  %169 = add nsw i64 %167, %168
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @MCU_RANK_STRIDE, align 4
  %172 = mul nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %169, %173
  %175 = call i32 @writel(i32 %164, i64 %174)
  br label %176

176:                                              ; preds = %130
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %7, align 4
  br label %40

179:                                              ; preds = %40
  %180 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %3, align 8
  %181 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @MCUGESR, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @readl(i64 %184)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %214

188:                                              ; preds = %179
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* @MCU_GESR_ADDRNOMATCH_ERR_MASK, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %195 = load i32, i32* @KERN_WARNING, align 4
  %196 = call i32 (%struct.mem_ctl_info*, i32, i8*, i8*, ...) @edac_mc_chipset_printk(%struct.mem_ctl_info* %194, i32 %195, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %197

197:                                              ; preds = %193, %188
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @MCU_GESR_ADDRMULTIMATCH_ERR_MASK, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %204 = load i32, i32* @KERN_WARNING, align 4
  %205 = call i32 (%struct.mem_ctl_info*, i32, i8*, i8*, ...) @edac_mc_chipset_printk(%struct.mem_ctl_info* %203, i32 %204, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %206

206:                                              ; preds = %202, %197
  %207 = load i32, i32* %6, align 4
  %208 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %3, align 8
  %209 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @MCUGESR, align 8
  %212 = add nsw i64 %210, %211
  %213 = call i32 @writel(i32 %207, i64 %212)
  br label %214

214:                                              ; preds = %38, %206, %179
  ret void
}

declare dso_local i32 @xgene_edac_pcp_rd(i32, i32, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @edac_mc_chipset_printk(%struct.mem_ctl_info*, i32, i8*, i8*, ...) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @MCU_EBLRR_ERRBANK_RD(i32) #1

declare dso_local i32 @MCU_ERCRR_ERRCOL_RD(i32) #1

declare dso_local i32 @MCU_ERCRR_ERRROW_RD(i32) #1

declare dso_local i32 @MCU_SBECNT_COUNT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
