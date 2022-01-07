; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_iob_gic_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_iob_gic_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, i32, %struct.xgene_edac_dev_ctx* }
%struct.xgene_edac_dev_ctx = type { i64 }

@XGICTRANSERRINTSTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"XGIC transaction error\0A\00", align 1
@RD_ACCESS_ERR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"XGIC read size error\0A\00", align 1
@M_RD_ACCESS_ERR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Multiple XGIC read size error\0A\00", align 1
@WR_ACCESS_ERR_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"XGIC write size error\0A\00", align 1
@M_WR_ACCESS_ERR_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Multiple XGIC write size error\0A\00", align 1
@XGICTRANSERRREQINFO = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"XGIC %s access @ 0x%08X (0x%08X)\0A\00", align 1
@REQTYPE_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@GLBL_ERR_STS = common dso_local global i64 0, align 8
@SEC_ERR_MASK = common dso_local global i32 0, align 4
@GLBL_SEC_ERRL = common dso_local global i64 0, align 8
@GLBL_SEC_ERRH = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [56 x i8] c"IOB single-bit correctable memory at 0x%08X.%08X error\0A\00", align 1
@MSEC_ERR_MASK = common dso_local global i32 0, align 4
@GLBL_MSEC_ERRL = common dso_local global i64 0, align 8
@GLBL_MSEC_ERRH = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [65 x i8] c"IOB multiple single-bit correctable memory at 0x%08X.%08X error\0A\00", align 1
@DED_ERR_MASK = common dso_local global i32 0, align 4
@GLBL_DED_ERRL = common dso_local global i64 0, align 8
@GLBL_DED_ERRH = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [58 x i8] c"IOB double-bit uncorrectable memory at 0x%08X.%08X error\0A\00", align 1
@MDED_ERR_MASK = common dso_local global i32 0, align 4
@GLBL_MDED_ERRL = common dso_local global i64 0, align 8
@GLBL_MDED_ERRH = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [67 x i8] c"Multiple IOB double-bit uncorrectable memory at 0x%08X.%08X error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*)* @xgene_edac_iob_gic_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_edac_iob_gic_report(%struct.edac_device_ctl_info* %0) #0 {
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
  %12 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XGICTRANSERRINTSTS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %91

20:                                               ; preds = %1
  %21 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %22 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @RD_ACCESS_ERR_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %31 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %20
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @M_RD_ACCESS_ERR_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %41 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @WR_ACCESS_ERR_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %51 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @M_WR_ACCESS_ERR_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %61 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @XGICTRANSERRREQINFO, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @readl(i64 %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %72 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @REQTYPE_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @ERRADDR_RD(i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (i32, i8*, ...) @dev_err(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %79, i32 %81, i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @XGICTRANSERRINTSTS, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel(i32 %84, i64 %89)
  br label %91

91:                                               ; preds = %64, %19
  %92 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %93 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @GLBL_ERR_STS, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @readl(i64 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %91
  br label %279

101:                                              ; preds = %91
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @SEC_ERR_MASK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %139

106:                                              ; preds = %101
  %107 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %108 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @GLBL_SEC_ERRL, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @readl(i64 %111)
  store i32 %112, i32* %4, align 4
  %113 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %114 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @GLBL_SEC_ERRH, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @readl(i64 %117)
  store i32 %118, i32* %5, align 4
  %119 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %120 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 (i32, i8*, ...) @dev_err(i32 %121, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %122, i32 %123)
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %127 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @GLBL_SEC_ERRL, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @writel(i32 %125, i64 %130)
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %134 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @GLBL_SEC_ERRH, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @writel(i32 %132, i64 %137)
  br label %139

139:                                              ; preds = %106, %101
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @MSEC_ERR_MASK, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %177

144:                                              ; preds = %139
  %145 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %146 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @GLBL_MSEC_ERRL, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @readl(i64 %149)
  store i32 %150, i32* %4, align 4
  %151 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %152 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @GLBL_MSEC_ERRH, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @readl(i64 %155)
  store i32 %156, i32* %5, align 4
  %157 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %158 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* %5, align 4
  %162 = call i32 (i32, i8*, ...) @dev_err(i32 %159, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0), i32 %160, i32 %161)
  %163 = load i32, i32* %4, align 4
  %164 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %165 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @GLBL_MSEC_ERRL, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @writel(i32 %163, i64 %168)
  %170 = load i32, i32* %5, align 4
  %171 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %172 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @GLBL_MSEC_ERRH, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 @writel(i32 %170, i64 %175)
  br label %177

177:                                              ; preds = %144, %139
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @SEC_ERR_MASK, align 4
  %180 = load i32, i32* @MSEC_ERR_MASK, align 4
  %181 = or i32 %179, %180
  %182 = and i32 %178, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %177
  %185 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %186 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %187 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @edac_device_handle_ce(%struct.edac_device_ctl_info* %185, i32 0, i32 0, i32 %188)
  br label %190

190:                                              ; preds = %184, %177
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @DED_ERR_MASK, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %228

195:                                              ; preds = %190
  %196 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %197 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @GLBL_DED_ERRL, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @readl(i64 %200)
  store i32 %201, i32* %4, align 4
  %202 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %203 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @GLBL_DED_ERRH, align 8
  %206 = add nsw i64 %204, %205
  %207 = call i32 @readl(i64 %206)
  store i32 %207, i32* %5, align 4
  %208 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %209 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %4, align 4
  %212 = load i32, i32* %5, align 4
  %213 = call i32 (i32, i8*, ...) @dev_err(i32 %210, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i32 %211, i32 %212)
  %214 = load i32, i32* %4, align 4
  %215 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %216 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @GLBL_DED_ERRL, align 8
  %219 = add nsw i64 %217, %218
  %220 = call i32 @writel(i32 %214, i64 %219)
  %221 = load i32, i32* %5, align 4
  %222 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %223 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @GLBL_DED_ERRH, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @writel(i32 %221, i64 %226)
  br label %228

228:                                              ; preds = %195, %190
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* @MDED_ERR_MASK, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %266

233:                                              ; preds = %228
  %234 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %235 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @GLBL_MDED_ERRL, align 8
  %238 = add nsw i64 %236, %237
  %239 = call i32 @readl(i64 %238)
  store i32 %239, i32* %4, align 4
  %240 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %241 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @GLBL_MDED_ERRH, align 8
  %244 = add nsw i64 %242, %243
  %245 = call i32 @readl(i64 %244)
  store i32 %245, i32* %5, align 4
  %246 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %247 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %4, align 4
  %250 = load i32, i32* %5, align 4
  %251 = call i32 (i32, i8*, ...) @dev_err(i32 %248, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0), i32 %249, i32 %250)
  %252 = load i32, i32* %4, align 4
  %253 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %254 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @GLBL_MDED_ERRL, align 8
  %257 = add nsw i64 %255, %256
  %258 = call i32 @writel(i32 %252, i64 %257)
  %259 = load i32, i32* %5, align 4
  %260 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %3, align 8
  %261 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @GLBL_MDED_ERRH, align 8
  %264 = add nsw i64 %262, %263
  %265 = call i32 @writel(i32 %259, i64 %264)
  br label %266

266:                                              ; preds = %233, %228
  %267 = load i32, i32* %6, align 4
  %268 = load i32, i32* @DED_ERR_MASK, align 4
  %269 = load i32, i32* @MDED_ERR_MASK, align 4
  %270 = or i32 %268, %269
  %271 = and i32 %267, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %266
  %274 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %275 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %276 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %274, i32 0, i32 0, i32 %277)
  br label %279

279:                                              ; preds = %100, %273, %266
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ERRADDR_RD(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @edac_device_handle_ce(%struct.edac_device_ctl_info*, i32, i32, i32) #1

declare dso_local i32 @edac_device_handle_ue(%struct.edac_device_ctl_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
