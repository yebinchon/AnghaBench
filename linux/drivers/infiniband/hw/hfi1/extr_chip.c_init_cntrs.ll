; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_cntrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_init_cntrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i64 }
%struct.TYPE_3__ = type { i32, i8*, i64 }
%struct.hfi1_devdata = type { i64, i8*, i32, i64, i8*, i32, i32, i32, i32, i32, i64, i8*, i64, i8* }
%struct.hfi1_pportdata = type { i8*, i8* }

@C_MAX_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c",32\00", align 1
@update_synth_timer = common dso_local global i32 0, align 4
@DEV_CNTR_LAST = common dso_local global i32 0, align 4
@dev_cntrs = common dso_local global %struct.TYPE_4__* null, align 8
@CNTR_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"\09Skipping %s\0A\00", align 1
@CNTR_VL = common dso_local global i32 0, align 4
@C_VL_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@CNTR_32BIT = common dso_local global i32 0, align 4
@CNTR_SDMA = common dso_local global i32 0, align 4
@num_driver_cntrs = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@C_RCV_HDR_OVF_FIRST = common dso_local global i32 0, align 4
@C_RCV_HDR_OVF_LAST = common dso_local global i32 0, align 4
@port_cntrs = common dso_local global %struct.TYPE_3__* null, align 8
@PORT_CNTR_LAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"hfi1_update_cntr_%d\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@do_update_synth_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@SYNTH_CNT_TIME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*)* @init_cntrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_cntrs(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.hfi1_pportdata*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %16 = load i32, i32* @C_MAX_NAME, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %23 = call i32 @chip_sdma_engines(%struct.hfi1_devdata* %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %25 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %24, i32 0, i32 6
  %26 = load i32, i32* @update_synth_timer, align 4
  %27 = call i32 @timer_setup(i32* %25, i32 %26, i32 0)
  %28 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %29 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %28, i32 0, i32 12
  store i64 0, i64* %29, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %218, %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @DEV_CNTR_LAST, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %221

34:                                               ; preds = %30
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CNTR_DISABLED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @hfi1_dbg_early(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  br label %218

52:                                               ; preds = %34
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CNTR_VL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %52
  %63 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %64 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %63, i32 0, i32 12
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i64 %65, i64* %70, align 8
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %111, %62
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @C_VL_COUNT, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %114

75:                                               ; preds = %71
  %76 = load i32, i32* @C_MAX_NAME, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @vl_from_idx(i32 %83)
  %85 = call i32 @snprintf(i8* %19, i32 %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %82, i32 %84)
  %86 = call i32 @strlen(i8* %19)
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %7, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @CNTR_32BIT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %75
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %7, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %99, %75
  %105 = load i64, i64* %7, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %7, align 8
  %107 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %108 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %107, i32 0, i32 12
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %71

114:                                              ; preds = %71
  br label %217

115:                                              ; preds = %52
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @CNTR_SDMA, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %177

125:                                              ; preds = %115
  %126 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %127 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %126, i32 0, i32 12
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  store i64 %128, i64* %133, align 8
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %173, %125
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %176

138:                                              ; preds = %134
  %139 = load i32, i32* @C_MAX_NAME, align 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @snprintf(i8* %19, i32 %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %145, i32 %146)
  %148 = call i32 @strlen(i8* %19)
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %7, align 8
  %151 = add i64 %150, %149
  store i64 %151, i64* %7, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @CNTR_32BIT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %138
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %7, align 8
  %165 = add i64 %164, %163
  store i64 %165, i64* %7, align 8
  br label %166

166:                                              ; preds = %161, %138
  %167 = load i64, i64* %7, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %7, align 8
  %169 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %170 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %169, i32 0, i32 12
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %170, align 8
  br label %173

173:                                              ; preds = %166
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  br label %134

176:                                              ; preds = %134
  br label %216

177:                                              ; preds = %115
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @strlen(i8* %183)
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %7, align 8
  %188 = add i64 %187, %186
  store i64 %188, i64* %7, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %190 = load i32, i32* %4, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @CNTR_32BIT, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %177
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %7, align 8
  %202 = add i64 %201, %200
  store i64 %202, i64* %7, align 8
  br label %203

203:                                              ; preds = %198, %177
  %204 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %205 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %204, i32 0, i32 12
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %208 = load i32, i32* %4, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  store i64 %206, i64* %211, align 8
  %212 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %213 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %212, i32 0, i32 12
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, 1
  store i64 %215, i64* %213, align 8
  br label %216

216:                                              ; preds = %203, %176
  br label %217

217:                                              ; preds = %216, %114
  br label %218

218:                                              ; preds = %217, %44
  %219 = load i32, i32* %4, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %4, align 4
  br label %30

221:                                              ; preds = %30
  %222 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %223 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %222, i32 0, i32 12
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @num_driver_cntrs, align 8
  %226 = add nsw i64 %224, %225
  %227 = load i32, i32* @GFP_KERNEL, align 4
  %228 = call i8* @kcalloc(i64 %226, i32 4, i32 %227)
  %229 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %230 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %229, i32 0, i32 13
  store i8* %228, i8** %230, align 8
  %231 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %232 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %231, i32 0, i32 13
  %233 = load i8*, i8** %232, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %221
  br label %820

236:                                              ; preds = %221
  %237 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %238 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %237, i32 0, i32 12
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* @GFP_KERNEL, align 4
  %241 = call i8* @kcalloc(i64 %239, i32 4, i32 %240)
  %242 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %243 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %242, i32 0, i32 11
  store i8* %241, i8** %243, align 8
  %244 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %245 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %244, i32 0, i32 11
  %246 = load i8*, i8** %245, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %249, label %248

248:                                              ; preds = %236
  br label %820

249:                                              ; preds = %236
  %250 = load i64, i64* %7, align 8
  %251 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %252 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %251, i32 0, i32 0
  store i64 %250, i64* %252, align 8
  %253 = load i64, i64* %7, align 8
  %254 = load i32, i32* @GFP_KERNEL, align 4
  %255 = call i8* @kmalloc(i64 %253, i32 %254)
  %256 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %257 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %256, i32 0, i32 1
  store i8* %255, i8** %257, align 8
  %258 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %259 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %263, label %262

262:                                              ; preds = %249
  br label %820

263:                                              ; preds = %249
  %264 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %265 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  store i8* %266, i8** %8, align 8
  store i32 0, i32* %4, align 4
  br label %267

267:                                              ; preds = %447, %263
  %268 = load i32, i32* %4, align 4
  %269 = load i32, i32* @DEV_CNTR_LAST, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %450

271:                                              ; preds = %267
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %273 = load i32, i32* %4, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @CNTR_DISABLED, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %271
  br label %446

282:                                              ; preds = %271
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %284 = load i32, i32* %4, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @CNTR_VL, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %340

292:                                              ; preds = %282
  store i32 0, i32* %6, align 4
  br label %293

293:                                              ; preds = %336, %292
  %294 = load i32, i32* %6, align 4
  %295 = load i32, i32* @C_VL_COUNT, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %339

297:                                              ; preds = %293
  %298 = load i32, i32* @C_MAX_NAME, align 4
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %300 = load i32, i32* %4, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 1
  %304 = load i8*, i8** %303, align 8
  %305 = load i32, i32* %6, align 4
  %306 = call i32 @vl_from_idx(i32 %305)
  %307 = call i32 @snprintf(i8* %19, i32 %298, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %304, i32 %306)
  %308 = load i8*, i8** %8, align 8
  %309 = call i32 @strlen(i8* %19)
  %310 = call i32 @memcpy(i8* %308, i8* %19, i32 %309)
  %311 = call i32 @strlen(i8* %19)
  %312 = load i8*, i8** %8, align 8
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds i8, i8* %312, i64 %313
  store i8* %314, i8** %8, align 8
  %315 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %316 = load i32, i32* %4, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @CNTR_32BIT, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %333

324:                                              ; preds = %297
  %325 = load i8*, i8** %8, align 8
  %326 = load i8*, i8** %12, align 8
  %327 = load i32, i32* %13, align 4
  %328 = call i32 @memcpy(i8* %325, i8* %326, i32 %327)
  %329 = load i32, i32* %13, align 4
  %330 = load i8*, i8** %8, align 8
  %331 = sext i32 %329 to i64
  %332 = getelementptr inbounds i8, i8* %330, i64 %331
  store i8* %332, i8** %8, align 8
  br label %333

333:                                              ; preds = %324, %297
  %334 = load i8*, i8** %8, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %8, align 8
  store i8 10, i8* %334, align 1
  br label %336

336:                                              ; preds = %333
  %337 = load i32, i32* %6, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %6, align 4
  br label %293

339:                                              ; preds = %293
  br label %445

340:                                              ; preds = %282
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %342 = load i32, i32* %4, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @CNTR_SDMA, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %397

350:                                              ; preds = %340
  store i32 0, i32* %6, align 4
  br label %351

351:                                              ; preds = %393, %350
  %352 = load i32, i32* %6, align 4
  %353 = load i32, i32* %14, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %355, label %396

355:                                              ; preds = %351
  %356 = load i32, i32* @C_MAX_NAME, align 4
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %358 = load i32, i32* %4, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 1
  %362 = load i8*, i8** %361, align 8
  %363 = load i32, i32* %6, align 4
  %364 = call i32 @snprintf(i8* %19, i32 %356, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %362, i32 %363)
  %365 = load i8*, i8** %8, align 8
  %366 = call i32 @strlen(i8* %19)
  %367 = call i32 @memcpy(i8* %365, i8* %19, i32 %366)
  %368 = call i32 @strlen(i8* %19)
  %369 = load i8*, i8** %8, align 8
  %370 = sext i32 %368 to i64
  %371 = getelementptr inbounds i8, i8* %369, i64 %370
  store i8* %371, i8** %8, align 8
  %372 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %373 = load i32, i32* %4, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @CNTR_32BIT, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %390

381:                                              ; preds = %355
  %382 = load i8*, i8** %8, align 8
  %383 = load i8*, i8** %12, align 8
  %384 = load i32, i32* %13, align 4
  %385 = call i32 @memcpy(i8* %382, i8* %383, i32 %384)
  %386 = load i32, i32* %13, align 4
  %387 = load i8*, i8** %8, align 8
  %388 = sext i32 %386 to i64
  %389 = getelementptr inbounds i8, i8* %387, i64 %388
  store i8* %389, i8** %8, align 8
  br label %390

390:                                              ; preds = %381, %355
  %391 = load i8*, i8** %8, align 8
  %392 = getelementptr inbounds i8, i8* %391, i32 1
  store i8* %392, i8** %8, align 8
  store i8 10, i8* %391, align 1
  br label %393

393:                                              ; preds = %390
  %394 = load i32, i32* %6, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %6, align 4
  br label %351

396:                                              ; preds = %351
  br label %444

397:                                              ; preds = %340
  %398 = load i8*, i8** %8, align 8
  %399 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %400 = load i32, i32* %4, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i64 %401
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %402, i32 0, i32 1
  %404 = load i8*, i8** %403, align 8
  %405 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %406 = load i32, i32* %4, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 1
  %410 = load i8*, i8** %409, align 8
  %411 = call i32 @strlen(i8* %410)
  %412 = call i32 @memcpy(i8* %398, i8* %404, i32 %411)
  %413 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %414 = load i32, i32* %4, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 1
  %418 = load i8*, i8** %417, align 8
  %419 = call i32 @strlen(i8* %418)
  %420 = load i8*, i8** %8, align 8
  %421 = sext i32 %419 to i64
  %422 = getelementptr inbounds i8, i8* %420, i64 %421
  store i8* %422, i8** %8, align 8
  %423 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dev_cntrs, align 8
  %424 = load i32, i32* %4, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* @CNTR_32BIT, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %441

432:                                              ; preds = %397
  %433 = load i8*, i8** %8, align 8
  %434 = load i8*, i8** %12, align 8
  %435 = load i32, i32* %13, align 4
  %436 = call i32 @memcpy(i8* %433, i8* %434, i32 %435)
  %437 = load i32, i32* %13, align 4
  %438 = load i8*, i8** %8, align 8
  %439 = sext i32 %437 to i64
  %440 = getelementptr inbounds i8, i8* %438, i64 %439
  store i8* %440, i8** %8, align 8
  br label %441

441:                                              ; preds = %432, %397
  %442 = load i8*, i8** %8, align 8
  %443 = getelementptr inbounds i8, i8* %442, i32 1
  store i8* %443, i8** %8, align 8
  store i8 10, i8* %442, align 1
  br label %444

444:                                              ; preds = %441, %396
  br label %445

445:                                              ; preds = %444, %339
  br label %446

446:                                              ; preds = %445, %281
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %4, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %4, align 4
  br label %267

450:                                              ; preds = %267
  %451 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %452 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 8
  store i32 %453, i32* %5, align 4
  %454 = load i32, i32* @C_RCV_HDR_OVF_FIRST, align 4
  %455 = load i32, i32* %5, align 4
  %456 = add nsw i32 %454, %455
  store i32 %456, i32* %4, align 4
  br label %457

457:                                              ; preds = %470, %450
  %458 = load i32, i32* %4, align 4
  %459 = load i32, i32* @C_RCV_HDR_OVF_LAST, align 4
  %460 = icmp sle i32 %458, %459
  br i1 %460, label %461, label %473

461:                                              ; preds = %457
  %462 = load i32, i32* @CNTR_DISABLED, align 4
  %463 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %464 = load i32, i32* %4, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %463, i64 %465
  %467 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = or i32 %468, %462
  store i32 %469, i32* %467, align 8
  br label %470

470:                                              ; preds = %461
  %471 = load i32, i32* %4, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %4, align 4
  br label %457

473:                                              ; preds = %457
  store i64 0, i64* %7, align 8
  %474 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %475 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %474, i32 0, i32 10
  store i64 0, i64* %475, align 8
  store i32 0, i32* %4, align 4
  br label %476

476:                                              ; preds = %601, %473
  %477 = load i32, i32* %4, align 4
  %478 = load i32, i32* @PORT_CNTR_LAST, align 4
  %479 = icmp slt i32 %477, %478
  br i1 %479, label %480, label %604

480:                                              ; preds = %476
  %481 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %482 = load i32, i32* %4, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %481, i64 %483
  %485 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = load i32, i32* @CNTR_DISABLED, align 4
  %488 = and i32 %486, %487
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %498

490:                                              ; preds = %480
  %491 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %492 = load i32, i32* %4, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %491, i64 %493
  %495 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %494, i32 0, i32 1
  %496 = load i8*, i8** %495, align 8
  %497 = call i32 @hfi1_dbg_early(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %496)
  br label %601

498:                                              ; preds = %480
  %499 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %500 = load i32, i32* %4, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %499, i64 %501
  %503 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = load i32, i32* @CNTR_VL, align 4
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %561

508:                                              ; preds = %498
  %509 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %510 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %509, i32 0, i32 10
  %511 = load i64, i64* %510, align 8
  %512 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %513 = load i32, i32* %4, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %512, i64 %514
  %516 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %515, i32 0, i32 2
  store i64 %511, i64* %516, align 8
  store i32 0, i32* %6, align 4
  br label %517

517:                                              ; preds = %557, %508
  %518 = load i32, i32* %6, align 4
  %519 = load i32, i32* @C_VL_COUNT, align 4
  %520 = icmp slt i32 %518, %519
  br i1 %520, label %521, label %560

521:                                              ; preds = %517
  %522 = load i32, i32* @C_MAX_NAME, align 4
  %523 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %524 = load i32, i32* %4, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %523, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %526, i32 0, i32 1
  %528 = load i8*, i8** %527, align 8
  %529 = load i32, i32* %6, align 4
  %530 = call i32 @vl_from_idx(i32 %529)
  %531 = call i32 @snprintf(i8* %19, i32 %522, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %528, i32 %530)
  %532 = call i32 @strlen(i8* %19)
  %533 = sext i32 %532 to i64
  %534 = load i64, i64* %7, align 8
  %535 = add i64 %534, %533
  store i64 %535, i64* %7, align 8
  %536 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %537 = load i32, i32* %4, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %536, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = load i32, i32* @CNTR_32BIT, align 4
  %543 = and i32 %541, %542
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %550

545:                                              ; preds = %521
  %546 = load i32, i32* %13, align 4
  %547 = sext i32 %546 to i64
  %548 = load i64, i64* %7, align 8
  %549 = add i64 %548, %547
  store i64 %549, i64* %7, align 8
  br label %550

550:                                              ; preds = %545, %521
  %551 = load i64, i64* %7, align 8
  %552 = add i64 %551, 1
  store i64 %552, i64* %7, align 8
  %553 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %554 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %553, i32 0, i32 10
  %555 = load i64, i64* %554, align 8
  %556 = add nsw i64 %555, 1
  store i64 %556, i64* %554, align 8
  br label %557

557:                                              ; preds = %550
  %558 = load i32, i32* %6, align 4
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %6, align 4
  br label %517

560:                                              ; preds = %517
  br label %600

561:                                              ; preds = %498
  %562 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %563 = load i32, i32* %4, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %562, i64 %564
  %566 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %565, i32 0, i32 1
  %567 = load i8*, i8** %566, align 8
  %568 = call i32 @strlen(i8* %567)
  %569 = add nsw i32 %568, 1
  %570 = sext i32 %569 to i64
  %571 = load i64, i64* %7, align 8
  %572 = add i64 %571, %570
  store i64 %572, i64* %7, align 8
  %573 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %574 = load i32, i32* %4, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %573, i64 %575
  %577 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 8
  %579 = load i32, i32* @CNTR_32BIT, align 4
  %580 = and i32 %578, %579
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %587

582:                                              ; preds = %561
  %583 = load i32, i32* %13, align 4
  %584 = sext i32 %583 to i64
  %585 = load i64, i64* %7, align 8
  %586 = add i64 %585, %584
  store i64 %586, i64* %7, align 8
  br label %587

587:                                              ; preds = %582, %561
  %588 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %589 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %588, i32 0, i32 10
  %590 = load i64, i64* %589, align 8
  %591 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %592 = load i32, i32* %4, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %591, i64 %593
  %595 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %594, i32 0, i32 2
  store i64 %590, i64* %595, align 8
  %596 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %597 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %596, i32 0, i32 10
  %598 = load i64, i64* %597, align 8
  %599 = add nsw i64 %598, 1
  store i64 %599, i64* %597, align 8
  br label %600

600:                                              ; preds = %587, %560
  br label %601

601:                                              ; preds = %600, %490
  %602 = load i32, i32* %4, align 4
  %603 = add nsw i32 %602, 1
  store i32 %603, i32* %4, align 4
  br label %476

604:                                              ; preds = %476
  %605 = load i64, i64* %7, align 8
  %606 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %607 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %606, i32 0, i32 3
  store i64 %605, i64* %607, align 8
  %608 = load i64, i64* %7, align 8
  %609 = load i32, i32* @GFP_KERNEL, align 4
  %610 = call i8* @kmalloc(i64 %608, i32 %609)
  %611 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %612 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %611, i32 0, i32 4
  store i8* %610, i8** %612, align 8
  %613 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %614 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %613, i32 0, i32 4
  %615 = load i8*, i8** %614, align 8
  %616 = icmp ne i8* %615, null
  br i1 %616, label %618, label %617

617:                                              ; preds = %604
  br label %820

618:                                              ; preds = %604
  %619 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %620 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %619, i32 0, i32 4
  %621 = load i8*, i8** %620, align 8
  store i8* %621, i8** %8, align 8
  store i32 0, i32* %4, align 4
  br label %622

622:                                              ; preds = %743, %618
  %623 = load i32, i32* %4, align 4
  %624 = load i32, i32* @PORT_CNTR_LAST, align 4
  %625 = icmp slt i32 %623, %624
  br i1 %625, label %626, label %746

626:                                              ; preds = %622
  %627 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %628 = load i32, i32* %4, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %627, i64 %629
  %631 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %630, i32 0, i32 0
  %632 = load i32, i32* %631, align 8
  %633 = load i32, i32* @CNTR_DISABLED, align 4
  %634 = and i32 %632, %633
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %636, label %637

636:                                              ; preds = %626
  br label %743

637:                                              ; preds = %626
  %638 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %639 = load i32, i32* %4, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %638, i64 %640
  %642 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %641, i32 0, i32 0
  %643 = load i32, i32* %642, align 8
  %644 = load i32, i32* @CNTR_VL, align 4
  %645 = and i32 %643, %644
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %695

647:                                              ; preds = %637
  store i32 0, i32* %6, align 4
  br label %648

648:                                              ; preds = %691, %647
  %649 = load i32, i32* %6, align 4
  %650 = load i32, i32* @C_VL_COUNT, align 4
  %651 = icmp slt i32 %649, %650
  br i1 %651, label %652, label %694

652:                                              ; preds = %648
  %653 = load i32, i32* @C_MAX_NAME, align 4
  %654 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %655 = load i32, i32* %4, align 4
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %654, i64 %656
  %658 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %657, i32 0, i32 1
  %659 = load i8*, i8** %658, align 8
  %660 = load i32, i32* %6, align 4
  %661 = call i32 @vl_from_idx(i32 %660)
  %662 = call i32 @snprintf(i8* %19, i32 %653, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %659, i32 %661)
  %663 = load i8*, i8** %8, align 8
  %664 = call i32 @strlen(i8* %19)
  %665 = call i32 @memcpy(i8* %663, i8* %19, i32 %664)
  %666 = call i32 @strlen(i8* %19)
  %667 = load i8*, i8** %8, align 8
  %668 = sext i32 %666 to i64
  %669 = getelementptr inbounds i8, i8* %667, i64 %668
  store i8* %669, i8** %8, align 8
  %670 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %671 = load i32, i32* %4, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %670, i64 %672
  %674 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 8
  %676 = load i32, i32* @CNTR_32BIT, align 4
  %677 = and i32 %675, %676
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %688

679:                                              ; preds = %652
  %680 = load i8*, i8** %8, align 8
  %681 = load i8*, i8** %12, align 8
  %682 = load i32, i32* %13, align 4
  %683 = call i32 @memcpy(i8* %680, i8* %681, i32 %682)
  %684 = load i32, i32* %13, align 4
  %685 = load i8*, i8** %8, align 8
  %686 = sext i32 %684 to i64
  %687 = getelementptr inbounds i8, i8* %685, i64 %686
  store i8* %687, i8** %8, align 8
  br label %688

688:                                              ; preds = %679, %652
  %689 = load i8*, i8** %8, align 8
  %690 = getelementptr inbounds i8, i8* %689, i32 1
  store i8* %690, i8** %8, align 8
  store i8 10, i8* %689, align 1
  br label %691

691:                                              ; preds = %688
  %692 = load i32, i32* %6, align 4
  %693 = add nsw i32 %692, 1
  store i32 %693, i32* %6, align 4
  br label %648

694:                                              ; preds = %648
  br label %742

695:                                              ; preds = %637
  %696 = load i8*, i8** %8, align 8
  %697 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %698 = load i32, i32* %4, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %697, i64 %699
  %701 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %700, i32 0, i32 1
  %702 = load i8*, i8** %701, align 8
  %703 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %704 = load i32, i32* %4, align 4
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %703, i64 %705
  %707 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %706, i32 0, i32 1
  %708 = load i8*, i8** %707, align 8
  %709 = call i32 @strlen(i8* %708)
  %710 = call i32 @memcpy(i8* %696, i8* %702, i32 %709)
  %711 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %712 = load i32, i32* %4, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %711, i64 %713
  %715 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %714, i32 0, i32 1
  %716 = load i8*, i8** %715, align 8
  %717 = call i32 @strlen(i8* %716)
  %718 = load i8*, i8** %8, align 8
  %719 = sext i32 %717 to i64
  %720 = getelementptr inbounds i8, i8* %718, i64 %719
  store i8* %720, i8** %8, align 8
  %721 = load %struct.TYPE_3__*, %struct.TYPE_3__** @port_cntrs, align 8
  %722 = load i32, i32* %4, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %721, i64 %723
  %725 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %724, i32 0, i32 0
  %726 = load i32, i32* %725, align 8
  %727 = load i32, i32* @CNTR_32BIT, align 4
  %728 = and i32 %726, %727
  %729 = icmp ne i32 %728, 0
  br i1 %729, label %730, label %739

730:                                              ; preds = %695
  %731 = load i8*, i8** %8, align 8
  %732 = load i8*, i8** %12, align 8
  %733 = load i32, i32* %13, align 4
  %734 = call i32 @memcpy(i8* %731, i8* %732, i32 %733)
  %735 = load i32, i32* %13, align 4
  %736 = load i8*, i8** %8, align 8
  %737 = sext i32 %735 to i64
  %738 = getelementptr inbounds i8, i8* %736, i64 %737
  store i8* %738, i8** %8, align 8
  br label %739

739:                                              ; preds = %730, %695
  %740 = load i8*, i8** %8, align 8
  %741 = getelementptr inbounds i8, i8* %740, i32 1
  store i8* %741, i8** %8, align 8
  store i8 10, i8* %740, align 1
  br label %742

742:                                              ; preds = %739, %694
  br label %743

743:                                              ; preds = %742, %636
  %744 = load i32, i32* %4, align 4
  %745 = add nsw i32 %744, 1
  store i32 %745, i32* %4, align 4
  br label %622

746:                                              ; preds = %622
  %747 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %748 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %747, i64 1
  %749 = bitcast %struct.hfi1_devdata* %748 to %struct.hfi1_pportdata*
  store %struct.hfi1_pportdata* %749, %struct.hfi1_pportdata** %11, align 8
  store i32 0, i32* %4, align 4
  br label %750

750:                                              ; preds = %783, %746
  %751 = load i32, i32* %4, align 4
  %752 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %753 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %752, i32 0, i32 5
  %754 = load i32, i32* %753, align 8
  %755 = icmp slt i32 %751, %754
  br i1 %755, label %756, label %788

756:                                              ; preds = %750
  %757 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %758 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %757, i32 0, i32 10
  %759 = load i64, i64* %758, align 8
  %760 = load i32, i32* @GFP_KERNEL, align 4
  %761 = call i8* @kcalloc(i64 %759, i32 4, i32 %760)
  %762 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %763 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %762, i32 0, i32 1
  store i8* %761, i8** %763, align 8
  %764 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %765 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %764, i32 0, i32 1
  %766 = load i8*, i8** %765, align 8
  %767 = icmp ne i8* %766, null
  br i1 %767, label %769, label %768

768:                                              ; preds = %756
  br label %820

769:                                              ; preds = %756
  %770 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %771 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %770, i32 0, i32 10
  %772 = load i64, i64* %771, align 8
  %773 = load i32, i32* @GFP_KERNEL, align 4
  %774 = call i8* @kcalloc(i64 %772, i32 4, i32 %773)
  %775 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %776 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %775, i32 0, i32 0
  store i8* %774, i8** %776, align 8
  %777 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %778 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %777, i32 0, i32 0
  %779 = load i8*, i8** %778, align 8
  %780 = icmp ne i8* %779, null
  br i1 %780, label %782, label %781

781:                                              ; preds = %769
  br label %820

782:                                              ; preds = %769
  br label %783

783:                                              ; preds = %782
  %784 = load i32, i32* %4, align 4
  %785 = add nsw i32 %784, 1
  store i32 %785, i32* %4, align 4
  %786 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %787 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %786, i32 1
  store %struct.hfi1_pportdata* %787, %struct.hfi1_pportdata** %11, align 8
  br label %750

788:                                              ; preds = %750
  %789 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %790 = call i64 @init_cpu_counters(%struct.hfi1_devdata* %789)
  %791 = icmp ne i64 %790, 0
  br i1 %791, label %792, label %793

792:                                              ; preds = %788
  br label %820

793:                                              ; preds = %788
  %794 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %795 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %796 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %795, i32 0, i32 9
  %797 = load i32, i32* %796, align 8
  %798 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %794, i32 %797)
  %799 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %800 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %799, i32 0, i32 8
  store i32 %798, i32* %800, align 4
  %801 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %802 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %801, i32 0, i32 8
  %803 = load i32, i32* %802, align 4
  %804 = icmp ne i32 %803, 0
  br i1 %804, label %806, label %805

805:                                              ; preds = %793
  br label %820

806:                                              ; preds = %793
  %807 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %808 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %807, i32 0, i32 7
  %809 = load i32, i32* @do_update_synth_timer, align 4
  %810 = call i32 @INIT_WORK(i32* %808, i32 %809)
  %811 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %812 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %811, i32 0, i32 6
  %813 = load i64, i64* @jiffies, align 8
  %814 = load i32, i32* @HZ, align 4
  %815 = load i32, i32* @SYNTH_CNT_TIME, align 4
  %816 = mul nsw i32 %814, %815
  %817 = sext i32 %816 to i64
  %818 = add nsw i64 %813, %817
  %819 = call i32 @mod_timer(i32* %812, i64 %818)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %825

820:                                              ; preds = %805, %792, %781, %768, %617, %262, %248, %235
  %821 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %822 = call i32 @free_cntrs(%struct.hfi1_devdata* %821)
  %823 = load i32, i32* @ENOMEM, align 4
  %824 = sub nsw i32 0, %823
  store i32 %824, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %825

825:                                              ; preds = %820, %806
  %826 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %826)
  %827 = load i32, i32* %2, align 4
  ret i32 %827
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @chip_sdma_engines(%struct.hfi1_devdata*) #2

declare dso_local i32 @timer_setup(i32*, i32, i32) #2

declare dso_local i32 @hfi1_dbg_early(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @vl_from_idx(i32) #2

declare dso_local i8* @kcalloc(i64, i32, i32) #2

declare dso_local i8* @kmalloc(i64, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @init_cpu_counters(%struct.hfi1_devdata*) #2

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32, i32) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @mod_timer(i32*, i64) #2

declare dso_local i32 @free_cntrs(%struct.hfi1_devdata*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
