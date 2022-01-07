; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_pa_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_pa_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, %struct.xgene_edac_dev_ctx* }
%struct.xgene_edac_dev_ctx = type { i64 }

@IOBPATRANSERRINTSTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"IOB processing agent (PA) transaction error\0A\00", align 1
@IOBPA_RDATA_CORRUPT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"IOB PA read data RAM error\0A\00", align 1
@IOBPA_M_RDATA_CORRUPT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Multiple IOB PA read data RAM error\0A\00", align 1
@IOBPA_WDATA_CORRUPT_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"IOB PA write data RAM error\0A\00", align 1
@IOBPA_M_WDATA_CORRUPT_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Multiple IOB PA write data RAM error\0A\00", align 1
@IOBPA_TRANS_CORRUPT_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"IOB PA transaction error\0A\00", align 1
@IOBPA_M_TRANS_CORRUPT_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Multiple IOB PA transaction error\0A\00", align 1
@IOBPA_REQIDRAM_CORRUPT_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"IOB PA transaction ID RAM error\0A\00", align 1
@IOBPA_M_REQIDRAM_CORRUPT_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"Multiple IOB PA transaction ID RAM error\0A\00", align 1
@IOBAXIS0TRANSERRINTSTS = common dso_local global i64 0, align 8
@IOBAXIS0TRANSERRREQINFOL = common dso_local global i64 0, align 8
@IOBAXIS0TRANSERRREQINFOH = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [56 x i8] c"%sAXI slave 0 illegal %s access @ 0x%02X.%08X (0x%08X)\0A\00", align 1
@IOBAXIS0_M_ILLEGAL_ACCESS_MASK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"Multiple \00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@IOBAXIS1TRANSERRINTSTS = common dso_local global i64 0, align 8
@IOBAXIS1TRANSERRREQINFOL = common dso_local global i64 0, align 8
@IOBAXIS1TRANSERRREQINFOH = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [56 x i8] c"%sAXI slave 1 illegal %s access @ 0x%02X.%08X (0x%08X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*)* @xgene_edac_pa_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_edac_pa_report(%struct.edac_device_ctl_info* %0) #0 {
  %2 = alloca %struct.edac_device_ctl_info*, align 8
  %3 = alloca %struct.xgene_edac_dev_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %2, align 8
  %7 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %8 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %7, i32 0, i32 1
  %9 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %8, align 8
  store %struct.xgene_edac_dev_ctx* %9, %struct.xgene_edac_dev_ctx** %3, align 8
  %10 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IOBPATRANSERRINTSTS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %111

19:                                               ; preds = %1
  %20 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %21 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, ...) @dev_err(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @IOBPA_RDATA_CORRUPT_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %30 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %19
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @IOBPA_M_RDATA_CORRUPT_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %40 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @IOBPA_WDATA_CORRUPT_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %50 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @IOBPA_M_WDATA_CORRUPT_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %60 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %53
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @IOBPA_TRANS_CORRUPT_MASK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %70 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32, i8*, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @IOBPA_M_TRANS_CORRUPT_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %80 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, ...) @dev_err(i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @IOBPA_REQIDRAM_CORRUPT_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %90 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, ...) @dev_err(i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @IOBPA_M_REQIDRAM_CORRUPT_MASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %100 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, ...) @dev_err(i32 %101, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %106 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @IOBPATRANSERRINTSTS, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %104, i64 %109)
  br label %111

111:                                              ; preds = %103, %18
  %112 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %113 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @IOBAXIS0TRANSERRINTSTS, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @readl(i64 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %111
  br label %160

121:                                              ; preds = %111
  %122 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %123 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @IOBAXIS0TRANSERRREQINFOL, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @readl(i64 %126)
  store i32 %127, i32* %4, align 4
  %128 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %129 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @IOBAXIS0TRANSERRREQINFOH, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @readl(i64 %132)
  store i32 %133, i32* %5, align 4
  %134 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %135 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @IOBAXIS0_M_ILLEGAL_ACCESS_MASK, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %143 = load i32, i32* %5, align 4
  %144 = call i64 @REQTYPE_RD(i32 %143)
  %145 = icmp ne i64 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @ERRADDRH_RD(i32 %148)
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* %5, align 4
  %152 = call i32 (i32, i8*, ...) @dev_err(i32 %136, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i8* %142, i8* %147, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %155 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @IOBAXIS0TRANSERRINTSTS, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @writel(i32 %153, i64 %158)
  br label %160

160:                                              ; preds = %121, %120
  %161 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %162 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @IOBAXIS1TRANSERRINTSTS, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @readl(i64 %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %160
  br label %209

170:                                              ; preds = %160
  %171 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %172 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @IOBAXIS1TRANSERRREQINFOL, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 @readl(i64 %175)
  store i32 %176, i32* %4, align 4
  %177 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %178 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @IOBAXIS1TRANSERRREQINFOH, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @readl(i64 %181)
  store i32 %182, i32* %5, align 4
  %183 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %184 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @IOBAXIS0_M_ILLEGAL_ACCESS_MASK, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %192 = load i32, i32* %5, align 4
  %193 = call i64 @REQTYPE_RD(i32 %192)
  %194 = icmp ne i64 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @ERRADDRH_RD(i32 %197)
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* %5, align 4
  %201 = call i32 (i32, i8*, ...) @dev_err(i32 %185, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i8* %191, i8* %196, i32 %198, i32 %199, i32 %200)
  %202 = load i32, i32* %6, align 4
  %203 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %204 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @IOBAXIS1TRANSERRINTSTS, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @writel(i32 %202, i64 %207)
  br label %209

209:                                              ; preds = %170, %169
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @REQTYPE_RD(i32) #1

declare dso_local i32 @ERRADDRH_RD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
