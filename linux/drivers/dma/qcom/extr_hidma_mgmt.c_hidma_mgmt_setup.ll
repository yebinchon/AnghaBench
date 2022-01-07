; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_mgmt.c_hidma_mgmt_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_mgmt.c_hidma_mgmt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_mgmt_dev = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"invalid write request %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid read request %d\0A\00", align 1
@HIDMA_MAX_WR_XACTIONS_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"max_wr_xactions cannot be bigger than %ld\0A\00", align 1
@HIDMA_MAX_RD_XACTIONS_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"max_rd_xactions cannot be bigger than %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"priority can be 0 or 1\0A\00", align 1
@HIDMA_MAX_CHANNEL_WEIGHT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"max value of weight can be %d.\0A\00", align 1
@HIDMA_MAX_BUS_REQ_LEN_OFFSET = common dso_local global i64 0, align 8
@HIDMA_MAX_BUS_REQ_LEN_MASK = common dso_local global i32 0, align 4
@HIDMA_MAX_BUS_WR_REQ_BIT_POS = common dso_local global i32 0, align 4
@HIDMA_MAX_XACTIONS_OFFSET = common dso_local global i64 0, align 8
@HIDMA_MAX_WR_XACTIONS_BIT_POS = common dso_local global i32 0, align 4
@HIDMA_HW_VERSION_OFFSET = common dso_local global i64 0, align 8
@HIDMA_QOS_N_OFFSET = common dso_local global i64 0, align 8
@HIDMA_PRIORITY_BIT_POS = common dso_local global i32 0, align 4
@HIDMA_WEIGHT_MASK = common dso_local global i32 0, align 4
@HIDMA_WRR_BIT_POS = common dso_local global i32 0, align 4
@HIDMA_CHRESET_TIMEOUT_OFFSET = common dso_local global i64 0, align 8
@HIDMA_CHRESET_TIMEOUT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hidma_mgmt_setup(%struct.hidma_mgmt_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidma_mgmt_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hidma_mgmt_dev* %0, %struct.hidma_mgmt_dev** %3, align 8
  %8 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @is_power_of_2(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 128
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %20 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 1024
  br i1 %22, label %23, label %34

23:                                               ; preds = %18, %13, %1
  %24 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %25 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %24, i32 0, i32 11
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %361

34:                                               ; preds = %18
  %35 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %36 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @is_power_of_2(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %42 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 128
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %47 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 1024
  br i1 %49, label %50, label %61

50:                                               ; preds = %45, %40, %34
  %51 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %52 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %51, i32 0, i32 11
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %56 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %361

61:                                               ; preds = %45
  %62 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %63 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @HIDMA_MAX_WR_XACTIONS_MASK, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %69 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %68, i32 0, i32 11
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* @HIDMA_MAX_WR_XACTIONS_MASK, align 4
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %361

76:                                               ; preds = %61
  %77 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %78 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @HIDMA_MAX_RD_XACTIONS_MASK, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %84 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %83, i32 0, i32 11
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* @HIDMA_MAX_RD_XACTIONS_MASK, align 4
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %361

91:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %151, %91
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %95 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %154

98:                                               ; preds = %92
  %99 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %100 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %115

107:                                              ; preds = %98
  %108 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %109 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %108, i32 0, i32 11
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i32 (i32*, i8*, ...) @dev_err(i32* %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %361

115:                                              ; preds = %98
  %116 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %117 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @HIDMA_MAX_CHANNEL_WEIGHT, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %115
  %126 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %127 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %126, i32 0, i32 11
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* @HIDMA_MAX_CHANNEL_WEIGHT, align 4
  %131 = call i32 (i32*, i8*, ...) @dev_err(i32* %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %361

134:                                              ; preds = %115
  %135 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %136 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %135, i32 0, i32 6
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %134
  %144 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %145 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %144, i32 0, i32 6
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 1, i32* %149, align 4
  br label %150

150:                                              ; preds = %143, %134
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %4, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %4, align 4
  br label %92

154:                                              ; preds = %92
  %155 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %156 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %155, i32 0, i32 11
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = call i32 @pm_runtime_get_sync(i32* %158)
  %160 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %161 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %160, i32 0, i32 12
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @HIDMA_MAX_BUS_REQ_LEN_OFFSET, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i8* @readl(i64 %164)
  %166 = ptrtoint i8* %165 to i32
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* @HIDMA_MAX_BUS_REQ_LEN_MASK, align 4
  %168 = load i32, i32* @HIDMA_MAX_BUS_WR_REQ_BIT_POS, align 4
  %169 = shl i32 %167, %168
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %5, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %5, align 4
  %173 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %174 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @HIDMA_MAX_BUS_WR_REQ_BIT_POS, align 4
  %177 = shl i32 %175, %176
  %178 = load i32, i32* %5, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* @HIDMA_MAX_BUS_REQ_LEN_MASK, align 4
  %181 = xor i32 %180, -1
  %182 = load i32, i32* %5, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %5, align 4
  %184 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %185 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %5, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %5, align 4
  %190 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %191 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %190, i32 0, i32 12
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @HIDMA_MAX_BUS_REQ_LEN_OFFSET, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @writel(i32 %189, i64 %194)
  %196 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %197 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %196, i32 0, i32 12
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @HIDMA_MAX_XACTIONS_OFFSET, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i8* @readl(i64 %200)
  %202 = ptrtoint i8* %201 to i32
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* @HIDMA_MAX_WR_XACTIONS_MASK, align 4
  %204 = load i32, i32* @HIDMA_MAX_WR_XACTIONS_BIT_POS, align 4
  %205 = shl i32 %203, %204
  %206 = xor i32 %205, -1
  %207 = load i32, i32* %5, align 4
  %208 = and i32 %207, %206
  store i32 %208, i32* %5, align 4
  %209 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %210 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @HIDMA_MAX_WR_XACTIONS_BIT_POS, align 4
  %213 = shl i32 %211, %212
  %214 = load i32, i32* %5, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %5, align 4
  %216 = load i32, i32* @HIDMA_MAX_RD_XACTIONS_MASK, align 4
  %217 = xor i32 %216, -1
  %218 = load i32, i32* %5, align 4
  %219 = and i32 %218, %217
  store i32 %219, i32* %5, align 4
  %220 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %221 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %5, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %5, align 4
  %225 = load i32, i32* %5, align 4
  %226 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %227 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %226, i32 0, i32 12
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @HIDMA_MAX_XACTIONS_OFFSET, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @writel(i32 %225, i64 %230)
  %232 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %233 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %232, i32 0, i32 12
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @HIDMA_HW_VERSION_OFFSET, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i8* @readl(i64 %236)
  %238 = ptrtoint i8* %237 to i32
  %239 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %240 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %239, i32 0, i32 7
  store i32 %238, i32* %240, align 8
  %241 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %242 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %241, i32 0, i32 7
  %243 = load i32, i32* %242, align 8
  %244 = ashr i32 %243, 28
  %245 = and i32 %244, 15
  %246 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %247 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %246, i32 0, i32 8
  store i32 %245, i32* %247, align 4
  %248 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %249 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 8
  %251 = ashr i32 %250, 16
  %252 = and i32 %251, 15
  %253 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %254 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %253, i32 0, i32 9
  store i32 %252, i32* %254, align 8
  store i32 0, i32* %4, align 4
  br label %255

255:                                              ; preds = %322, %154
  %256 = load i32, i32* %4, align 4
  %257 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %258 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = icmp ult i32 %256, %259
  br i1 %260, label %261, label %325

261:                                              ; preds = %255
  %262 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %263 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %262, i32 0, i32 6
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %4, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %6, align 4
  %269 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %270 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %269, i32 0, i32 5
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %4, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %7, align 4
  %276 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %277 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %276, i32 0, i32 12
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @HIDMA_QOS_N_OFFSET, align 8
  %280 = add nsw i64 %278, %279
  %281 = load i32, i32* %4, align 4
  %282 = mul i32 4, %281
  %283 = zext i32 %282 to i64
  %284 = add nsw i64 %280, %283
  %285 = call i8* @readl(i64 %284)
  %286 = ptrtoint i8* %285 to i32
  store i32 %286, i32* %5, align 4
  %287 = load i32, i32* @HIDMA_PRIORITY_BIT_POS, align 4
  %288 = shl i32 1, %287
  %289 = xor i32 %288, -1
  %290 = load i32, i32* %5, align 4
  %291 = and i32 %290, %289
  store i32 %291, i32* %5, align 4
  %292 = load i32, i32* %7, align 4
  %293 = and i32 %292, 1
  %294 = load i32, i32* @HIDMA_PRIORITY_BIT_POS, align 4
  %295 = shl i32 %293, %294
  %296 = load i32, i32* %5, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %5, align 4
  %298 = load i32, i32* @HIDMA_WEIGHT_MASK, align 4
  %299 = load i32, i32* @HIDMA_WRR_BIT_POS, align 4
  %300 = shl i32 %298, %299
  %301 = xor i32 %300, -1
  %302 = load i32, i32* %5, align 4
  %303 = and i32 %302, %301
  store i32 %303, i32* %5, align 4
  %304 = load i32, i32* %6, align 4
  %305 = load i32, i32* @HIDMA_WEIGHT_MASK, align 4
  %306 = and i32 %304, %305
  %307 = load i32, i32* @HIDMA_WRR_BIT_POS, align 4
  %308 = shl i32 %306, %307
  %309 = load i32, i32* %5, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %5, align 4
  %311 = load i32, i32* %5, align 4
  %312 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %313 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %312, i32 0, i32 12
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @HIDMA_QOS_N_OFFSET, align 8
  %316 = add nsw i64 %314, %315
  %317 = load i32, i32* %4, align 4
  %318 = mul i32 4, %317
  %319 = zext i32 %318 to i64
  %320 = add nsw i64 %316, %319
  %321 = call i32 @writel(i32 %311, i64 %320)
  br label %322

322:                                              ; preds = %261
  %323 = load i32, i32* %4, align 4
  %324 = add i32 %323, 1
  store i32 %324, i32* %4, align 4
  br label %255

325:                                              ; preds = %255
  %326 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %327 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %326, i32 0, i32 12
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @HIDMA_CHRESET_TIMEOUT_OFFSET, align 8
  %330 = add nsw i64 %328, %329
  %331 = call i8* @readl(i64 %330)
  %332 = ptrtoint i8* %331 to i32
  store i32 %332, i32* %5, align 4
  %333 = load i32, i32* @HIDMA_CHRESET_TIMEOUT_MASK, align 4
  %334 = xor i32 %333, -1
  %335 = load i32, i32* %5, align 4
  %336 = and i32 %335, %334
  store i32 %336, i32* %5, align 4
  %337 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %338 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %337, i32 0, i32 10
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @HIDMA_CHRESET_TIMEOUT_MASK, align 4
  %341 = and i32 %339, %340
  %342 = load i32, i32* %5, align 4
  %343 = or i32 %342, %341
  store i32 %343, i32* %5, align 4
  %344 = load i32, i32* %5, align 4
  %345 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %346 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %345, i32 0, i32 12
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @HIDMA_CHRESET_TIMEOUT_OFFSET, align 8
  %349 = add nsw i64 %347, %348
  %350 = call i32 @writel(i32 %344, i64 %349)
  %351 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %352 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %351, i32 0, i32 11
  %353 = load %struct.TYPE_2__*, %struct.TYPE_2__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 0
  %355 = call i32 @pm_runtime_mark_last_busy(i32* %354)
  %356 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %3, align 8
  %357 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %356, i32 0, i32 11
  %358 = load %struct.TYPE_2__*, %struct.TYPE_2__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 0
  %360 = call i32 @pm_runtime_put_autosuspend(i32* %359)
  store i32 0, i32* %2, align 4
  br label %361

361:                                              ; preds = %325, %125, %107, %82, %67, %50, %23
  %362 = load i32, i32* %2, align 4
  ret i32 %362
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
