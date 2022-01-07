; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_armada_xp_edac.c_aurora_l2_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_armada_xp_edac.c_aurora_l2_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { %struct.aurora_l2_drvdata* }
%struct.aurora_l2_drvdata = type { i8*, i64 }

@AURORA_ERR_CNT_REG = common dso_local global i64 0, align 8
@AURORA_ERR_ATTR_CAP_REG = common dso_local global i64 0, align 8
@AURORA_ERR_ADDR_CAP_REG = common dso_local global i64 0, align 8
@AURORA_ERR_WAY_CAP_REG = common dso_local global i64 0, align 8
@AURORA_ERR_CNT_CE_MASK = common dso_local global i32 0, align 4
@AURORA_ERR_CNT_CE_OFFSET = common dso_local global i32 0, align 4
@AURORA_ERR_CNT_UE_MASK = common dso_local global i32 0, align 4
@AURORA_ERR_CNT_UE_OFFSET = common dso_local global i32 0, align 4
@AURORA_ERR_CNT_CLR = common dso_local global i32 0, align 4
@AURORA_ERR_ATTR_CAP_VALID = common dso_local global i32 0, align 4
@AURORA_ERR_ATTR_SRC_MSK = common dso_local global i32 0, align 4
@AURORA_ERR_ATTR_SRC_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"src=CPU%d \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"src=IO \00", align 1
@AURORA_ERR_ATTR_TXN_MSK = common dso_local global i32 0, align 4
@AURORA_ERR_ATTR_TXN_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"txn=Data-Read \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"txn=Isn-Read \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"txn=Clean-Flush \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"txn=Eviction \00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"txn=Read-Modify-Write \00", align 1
@AURORA_ERR_ATTR_ERR_MSK = common dso_local global i32 0, align 4
@AURORA_ERR_ATTR_ERR_OFF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"err=CorrECC \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"err=UnCorrECC \00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"err=TagParity \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"addr=0x%x \00", align 1
@AURORA_ERR_ADDR_CAP_ADDR_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"index=0x%x \00", align 1
@AURORA_ERR_WAY_IDX_MSK = common dso_local global i32 0, align 4
@AURORA_ERR_WAY_IDX_OFF = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"way=0x%x\00", align 1
@AURORA_ERR_WAY_CAP_WAY_MASK = common dso_local global i32 0, align 4
@AURORA_ERR_WAY_CAP_WAY_OFFSET = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"details unavailable (multiple errors)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*)* @aurora_l2_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aurora_l2_check(%struct.edac_device_ctl_info* %0) #0 {
  %2 = alloca %struct.edac_device_ctl_info*, align 8
  %3 = alloca %struct.aurora_l2_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %2, align 8
  %16 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %17 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %16, i32 0, i32 0
  %18 = load %struct.aurora_l2_drvdata*, %struct.aurora_l2_drvdata** %17, align 8
  store %struct.aurora_l2_drvdata* %18, %struct.aurora_l2_drvdata** %3, align 8
  %19 = load %struct.aurora_l2_drvdata*, %struct.aurora_l2_drvdata** %3, align 8
  %20 = getelementptr inbounds %struct.aurora_l2_drvdata, %struct.aurora_l2_drvdata* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %13, align 8
  store i64 8, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %22 = load %struct.aurora_l2_drvdata*, %struct.aurora_l2_drvdata** %3, align 8
  %23 = getelementptr inbounds %struct.aurora_l2_drvdata, %struct.aurora_l2_drvdata* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AURORA_ERR_CNT_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.aurora_l2_drvdata*, %struct.aurora_l2_drvdata** %3, align 8
  %29 = getelementptr inbounds %struct.aurora_l2_drvdata, %struct.aurora_l2_drvdata* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AURORA_ERR_ATTR_CAP_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.aurora_l2_drvdata*, %struct.aurora_l2_drvdata** %3, align 8
  %35 = getelementptr inbounds %struct.aurora_l2_drvdata, %struct.aurora_l2_drvdata* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AURORA_ERR_ADDR_CAP_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.aurora_l2_drvdata*, %struct.aurora_l2_drvdata** %3, align 8
  %41 = getelementptr inbounds %struct.aurora_l2_drvdata, %struct.aurora_l2_drvdata* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AURORA_ERR_WAY_CAP_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @AURORA_ERR_CNT_CE_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @AURORA_ERR_CNT_CE_OFFSET, align 4
  %50 = ashr i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @AURORA_ERR_CNT_UE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @AURORA_ERR_CNT_UE_OFFSET, align 4
  %55 = ashr i32 %53, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %1
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58, %1
  %62 = load i32, i32* @AURORA_ERR_CNT_CLR, align 4
  %63 = load %struct.aurora_l2_drvdata*, %struct.aurora_l2_drvdata** %3, align 8
  %64 = getelementptr inbounds %struct.aurora_l2_drvdata, %struct.aurora_l2_drvdata* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AURORA_ERR_CNT_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  br label %69

69:                                               ; preds = %61, %58
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @AURORA_ERR_ATTR_CAP_VALID, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %273

75:                                               ; preds = %69
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @AURORA_ERR_ATTR_SRC_MSK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @AURORA_ERR_ATTR_SRC_OFF, align 4
  %80 = ashr i32 %78, %79
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp sle i32 %81, 3
  br i1 %82, label %83, label %94

83:                                               ; preds = %75
  %84 = load i8*, i8** %13, align 8
  %85 = load i64, i64* %15, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %15, align 8
  %89 = sub i64 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %86, i64 %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i64, i64* %15, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %15, align 8
  br label %104

94:                                               ; preds = %75
  %95 = load i8*, i8** %13, align 8
  %96 = load i64, i64* %15, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %15, align 8
  %100 = sub i64 %98, %99
  %101 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %97, i64 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i64, i64* %15, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %15, align 8
  br label %104

104:                                              ; preds = %94, %83
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @AURORA_ERR_ATTR_TXN_MSK, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* @AURORA_ERR_ATTR_TXN_OFF, align 4
  %109 = ashr i32 %107, %108
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  switch i32 %110, label %161 [
    i32 0, label %111
    i32 1, label %121
    i32 2, label %131
    i32 3, label %141
    i32 4, label %151
  ]

111:                                              ; preds = %104
  %112 = load i8*, i8** %13, align 8
  %113 = load i64, i64* %15, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* %15, align 8
  %117 = sub i64 %115, %116
  %118 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %114, i64 %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %119 = load i64, i64* %15, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %15, align 8
  br label %161

121:                                              ; preds = %104
  %122 = load i8*, i8** %13, align 8
  %123 = load i64, i64* %15, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* %15, align 8
  %127 = sub i64 %125, %126
  %128 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %124, i64 %127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i64, i64* %15, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %15, align 8
  br label %161

131:                                              ; preds = %104
  %132 = load i8*, i8** %13, align 8
  %133 = load i64, i64* %15, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = load i64, i64* %14, align 8
  %136 = load i64, i64* %15, align 8
  %137 = sub i64 %135, %136
  %138 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %134, i64 %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %139 = load i64, i64* %15, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %15, align 8
  br label %161

141:                                              ; preds = %104
  %142 = load i8*, i8** %13, align 8
  %143 = load i64, i64* %15, align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  %145 = load i64, i64* %14, align 8
  %146 = load i64, i64* %15, align 8
  %147 = sub i64 %145, %146
  %148 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %144, i64 %147, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %149 = load i64, i64* %15, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %15, align 8
  br label %161

151:                                              ; preds = %104
  %152 = load i8*, i8** %13, align 8
  %153 = load i64, i64* %15, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %15, align 8
  %157 = sub i64 %155, %156
  %158 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %154, i64 %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %159 = load i64, i64* %15, align 8
  %160 = add i64 %159, %158
  store i64 %160, i64* %15, align 8
  br label %161

161:                                              ; preds = %104, %151, %141, %131, %121, %111
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @AURORA_ERR_ATTR_ERR_MSK, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* @AURORA_ERR_ATTR_ERR_OFF, align 4
  %166 = ashr i32 %164, %165
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %7, align 4
  switch i32 %167, label %198 [
    i32 0, label %168
    i32 1, label %178
    i32 2, label %188
  ]

168:                                              ; preds = %161
  %169 = load i8*, i8** %13, align 8
  %170 = load i64, i64* %15, align 8
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %15, align 8
  %174 = sub i64 %172, %173
  %175 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %171, i64 %174, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %176 = load i64, i64* %15, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %15, align 8
  br label %198

178:                                              ; preds = %161
  %179 = load i8*, i8** %13, align 8
  %180 = load i64, i64* %15, align 8
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  %182 = load i64, i64* %14, align 8
  %183 = load i64, i64* %15, align 8
  %184 = sub i64 %182, %183
  %185 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %181, i64 %184, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %186 = load i64, i64* %15, align 8
  %187 = add i64 %186, %185
  store i64 %187, i64* %15, align 8
  br label %198

188:                                              ; preds = %161
  %189 = load i8*, i8** %13, align 8
  %190 = load i64, i64* %15, align 8
  %191 = getelementptr inbounds i8, i8* %189, i64 %190
  %192 = load i64, i64* %14, align 8
  %193 = load i64, i64* %15, align 8
  %194 = sub i64 %192, %193
  %195 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %191, i64 %194, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %196 = load i64, i64* %15, align 8
  %197 = add i64 %196, %195
  store i64 %197, i64* %15, align 8
  br label %198

198:                                              ; preds = %161, %188, %178, %168
  %199 = load i8*, i8** %13, align 8
  %200 = load i64, i64* %15, align 8
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  %202 = load i64, i64* %14, align 8
  %203 = load i64, i64* %15, align 8
  %204 = sub i64 %202, %203
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @AURORA_ERR_ADDR_CAP_ADDR_MASK, align 4
  %207 = and i32 %205, %206
  %208 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %201, i64 %204, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %207)
  %209 = load i64, i64* %15, align 8
  %210 = add i64 %209, %208
  store i64 %210, i64* %15, align 8
  %211 = load i8*, i8** %13, align 8
  %212 = load i64, i64* %15, align 8
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  %214 = load i64, i64* %14, align 8
  %215 = load i64, i64* %15, align 8
  %216 = sub i64 %214, %215
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* @AURORA_ERR_WAY_IDX_MSK, align 4
  %219 = and i32 %217, %218
  %220 = load i32, i32* @AURORA_ERR_WAY_IDX_OFF, align 4
  %221 = ashr i32 %219, %220
  %222 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %213, i64 %216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %221)
  %223 = load i64, i64* %15, align 8
  %224 = add i64 %223, %222
  store i64 %224, i64* %15, align 8
  %225 = load i8*, i8** %13, align 8
  %226 = load i64, i64* %15, align 8
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  %228 = load i64, i64* %14, align 8
  %229 = load i64, i64* %15, align 8
  %230 = sub i64 %228, %229
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* @AURORA_ERR_WAY_CAP_WAY_MASK, align 4
  %233 = and i32 %231, %232
  %234 = load i32, i32* @AURORA_ERR_WAY_CAP_WAY_OFFSET, align 4
  %235 = ashr i32 %233, %234
  %236 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %227, i64 %230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %235)
  %237 = load i64, i64* %15, align 8
  %238 = add i64 %237, %236
  store i64 %238, i64* %15, align 8
  %239 = load i32, i32* @AURORA_ERR_ATTR_CAP_VALID, align 4
  %240 = load %struct.aurora_l2_drvdata*, %struct.aurora_l2_drvdata** %3, align 8
  %241 = getelementptr inbounds %struct.aurora_l2_drvdata, %struct.aurora_l2_drvdata* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @AURORA_ERR_ATTR_CAP_REG, align 8
  %244 = add nsw i64 %242, %243
  %245 = call i32 @writel(i32 %239, i64 %244)
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %260

248:                                              ; preds = %198
  %249 = load i32, i32* %12, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load i32, i32* %12, align 4
  %253 = add i32 %252, -1
  store i32 %253, i32* %12, align 4
  br label %254

254:                                              ; preds = %251, %248
  %255 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %256 = load %struct.aurora_l2_drvdata*, %struct.aurora_l2_drvdata** %3, align 8
  %257 = getelementptr inbounds %struct.aurora_l2_drvdata, %struct.aurora_l2_drvdata* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %255, i32 0, i32 0, i8* %258)
  br label %272

260:                                              ; preds = %198
  %261 = load i32, i32* %11, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load i32, i32* %11, align 4
  %265 = add i32 %264, -1
  store i32 %265, i32* %11, align 4
  br label %266

266:                                              ; preds = %263, %260
  %267 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %268 = load %struct.aurora_l2_drvdata*, %struct.aurora_l2_drvdata** %3, align 8
  %269 = getelementptr inbounds %struct.aurora_l2_drvdata, %struct.aurora_l2_drvdata* %268, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @edac_device_handle_ce(%struct.edac_device_ctl_info* %267, i32 0, i32 0, i8* %270)
  br label %272

272:                                              ; preds = %266, %254
  br label %273

273:                                              ; preds = %272, %74
  br label %274

274:                                              ; preds = %278, %273
  %275 = load i32, i32* %12, align 4
  %276 = add i32 %275, -1
  store i32 %276, i32* %12, align 4
  %277 = icmp ne i32 %275, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %274
  %279 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %280 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %279, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  br label %274

281:                                              ; preds = %274
  br label %282

282:                                              ; preds = %286, %281
  %283 = load i32, i32* %11, align 4
  %284 = add i32 %283, -1
  store i32 %284, i32* %11, align 4
  %285 = icmp ne i32 %283, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  %287 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %288 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %287, i32 0, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  br label %282

289:                                              ; preds = %282
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @edac_device_handle_ue(%struct.edac_device_ctl_info*, i32, i32, i8*) #1

declare dso_local i32 @edac_device_handle_ce(%struct.edac_device_ctl_info*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
