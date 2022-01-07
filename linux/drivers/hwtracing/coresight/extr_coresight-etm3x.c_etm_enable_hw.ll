; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_enable_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x.c_etm_enable_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etm_drvdata = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.etm_config }
%struct.TYPE_2__ = type { i32 }
%struct.etm_config = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }

@ETMCR = common dso_local global i32 0, align 4
@ETM3X_SUPPORTED_OPTIONS = common dso_local global i32 0, align 4
@ETMCR_ETM_EN = common dso_local global i32 0, align 4
@ETMTRIGGER = common dso_local global i32 0, align 4
@ETMTSSCR = common dso_local global i32 0, align 4
@ETMTEEVR = common dso_local global i32 0, align 4
@ETMTECR1 = common dso_local global i32 0, align 4
@ETMFFLR = common dso_local global i32 0, align 4
@ETMSQ12EVR = common dso_local global i32 0, align 4
@ETMSQ21EVR = common dso_local global i32 0, align 4
@ETMSQ23EVR = common dso_local global i32 0, align 4
@ETMSQ31EVR = common dso_local global i32 0, align 4
@ETMSQ32EVR = common dso_local global i32 0, align 4
@ETMSQ13EVR = common dso_local global i32 0, align 4
@ETMSQR = common dso_local global i32 0, align 4
@ETM_DEFAULT_EVENT_VAL = common dso_local global i32 0, align 4
@ETMCIDCMR = common dso_local global i32 0, align 4
@ETMSYNCFR = common dso_local global i32 0, align 4
@ETMEXTINSELR = common dso_local global i32 0, align 4
@ETMTSEVR = common dso_local global i32 0, align 4
@ETMAUXCR = common dso_local global i32 0, align 4
@ETMTRACEIDR = common dso_local global i32 0, align 4
@ETMVMIDCVR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cpu: %d enable smp call done: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etm_drvdata*)* @etm_enable_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etm_enable_hw(%struct.etm_drvdata* %0) #0 {
  %2 = alloca %struct.etm_drvdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.etm_config*, align 8
  store %struct.etm_drvdata* %0, %struct.etm_drvdata** %2, align 8
  %7 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %8 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %7, i32 0, i32 9
  store %struct.etm_config* %8, %struct.etm_config** %6, align 8
  %9 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %10 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @CS_UNLOCK(i32 %11)
  %13 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %14 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @coresight_claim_device_unlocked(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %285

20:                                               ; preds = %1
  %21 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %22 = call i32 @etm_clr_pwrdwn(%struct.etm_drvdata* %21)
  %23 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %24 = call i32 @etm_set_pwrup(%struct.etm_drvdata* %23)
  %25 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %26 = call i32 @etm_os_unlock(%struct.etm_drvdata* %25)
  %27 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %28 = call i32 @etm_set_prog(%struct.etm_drvdata* %27)
  %29 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %30 = load i32, i32* @ETMCR, align 4
  %31 = call i32 @etm_readl(%struct.etm_drvdata* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @ETM3X_SUPPORTED_OPTIONS, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %37 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @ETMCR_ETM_EN, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %45 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %46 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @ETMCR, align 4
  %51 = call i32 @etm_writel(%struct.etm_drvdata* %44, i32 %49, i32 %50)
  %52 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %53 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %54 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ETMTRIGGER, align 4
  %57 = call i32 @etm_writel(%struct.etm_drvdata* %52, i32 %55, i32 %56)
  %58 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %59 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %60 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ETMTSSCR, align 4
  %63 = call i32 @etm_writel(%struct.etm_drvdata* %58, i32 %61, i32 %62)
  %64 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %65 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %66 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ETMTEEVR, align 4
  %69 = call i32 @etm_writel(%struct.etm_drvdata* %64, i32 %67, i32 %68)
  %70 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %71 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %72 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ETMTECR1, align 4
  %75 = call i32 @etm_writel(%struct.etm_drvdata* %70, i32 %73, i32 %74)
  %76 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %77 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %78 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ETMFFLR, align 4
  %81 = call i32 @etm_writel(%struct.etm_drvdata* %76, i32 %79, i32 %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %111, %20
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %85 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %82
  %89 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %90 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %91 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @ETMACVRn(i32 %97)
  %99 = call i32 @etm_writel(%struct.etm_drvdata* %89, i32 %96, i32 %98)
  %100 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %101 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %102 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %101, i32 0, i32 7
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @ETMACTRn(i32 %108)
  %110 = call i32 @etm_writel(%struct.etm_drvdata* %100, i32 %107, i32 %109)
  br label %111

111:                                              ; preds = %88
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %3, align 4
  br label %82

114:                                              ; preds = %82
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %166, %114
  %116 = load i32, i32* %3, align 4
  %117 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %118 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %169

121:                                              ; preds = %115
  %122 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %123 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %124 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %123, i32 0, i32 8
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @ETMCNTRLDVRn(i32 %130)
  %132 = call i32 @etm_writel(%struct.etm_drvdata* %122, i32 %129, i32 %131)
  %133 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %134 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %135 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %134, i32 0, i32 9
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @ETMCNTENRn(i32 %141)
  %143 = call i32 @etm_writel(%struct.etm_drvdata* %133, i32 %140, i32 %142)
  %144 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %145 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %146 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %145, i32 0, i32 10
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @ETMCNTRLDEVRn(i32 %152)
  %154 = call i32 @etm_writel(%struct.etm_drvdata* %144, i32 %151, i32 %153)
  %155 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %156 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %157 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %156, i32 0, i32 11
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @ETMCNTVRn(i32 %163)
  %165 = call i32 @etm_writel(%struct.etm_drvdata* %155, i32 %162, i32 %164)
  br label %166

166:                                              ; preds = %121
  %167 = load i32, i32* %3, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %3, align 4
  br label %115

169:                                              ; preds = %115
  %170 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %171 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %172 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %171, i32 0, i32 12
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @ETMSQ12EVR, align 4
  %175 = call i32 @etm_writel(%struct.etm_drvdata* %170, i32 %173, i32 %174)
  %176 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %177 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %178 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %177, i32 0, i32 13
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @ETMSQ21EVR, align 4
  %181 = call i32 @etm_writel(%struct.etm_drvdata* %176, i32 %179, i32 %180)
  %182 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %183 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %184 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %183, i32 0, i32 14
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @ETMSQ23EVR, align 4
  %187 = call i32 @etm_writel(%struct.etm_drvdata* %182, i32 %185, i32 %186)
  %188 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %189 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %190 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %189, i32 0, i32 15
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @ETMSQ31EVR, align 4
  %193 = call i32 @etm_writel(%struct.etm_drvdata* %188, i32 %191, i32 %192)
  %194 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %195 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %196 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %195, i32 0, i32 16
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @ETMSQ32EVR, align 4
  %199 = call i32 @etm_writel(%struct.etm_drvdata* %194, i32 %197, i32 %198)
  %200 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %201 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %202 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %201, i32 0, i32 17
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @ETMSQ13EVR, align 4
  %205 = call i32 @etm_writel(%struct.etm_drvdata* %200, i32 %203, i32 %204)
  %206 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %207 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %208 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %207, i32 0, i32 18
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @ETMSQR, align 4
  %211 = call i32 @etm_writel(%struct.etm_drvdata* %206, i32 %209, i32 %210)
  store i32 0, i32* %3, align 4
  br label %212

212:                                              ; preds = %224, %169
  %213 = load i32, i32* %3, align 4
  %214 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %215 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %227

218:                                              ; preds = %212
  %219 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %220 = load i32, i32* @ETM_DEFAULT_EVENT_VAL, align 4
  %221 = load i32, i32* %3, align 4
  %222 = call i32 @ETMEXTOUTEVRn(i32 %221)
  %223 = call i32 @etm_writel(%struct.etm_drvdata* %219, i32 %220, i32 %222)
  br label %224

224:                                              ; preds = %218
  %225 = load i32, i32* %3, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %3, align 4
  br label %212

227:                                              ; preds = %212
  store i32 0, i32* %3, align 4
  br label %228

228:                                              ; preds = %246, %227
  %229 = load i32, i32* %3, align 4
  %230 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %231 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %249

234:                                              ; preds = %228
  %235 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %236 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %237 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %236, i32 0, i32 19
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %3, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %3, align 4
  %244 = call i32 @ETMCIDCVRn(i32 %243)
  %245 = call i32 @etm_writel(%struct.etm_drvdata* %235, i32 %242, i32 %244)
  br label %246

246:                                              ; preds = %234
  %247 = load i32, i32* %3, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %3, align 4
  br label %228

249:                                              ; preds = %228
  %250 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %251 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %252 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %251, i32 0, i32 20
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @ETMCIDCMR, align 4
  %255 = call i32 @etm_writel(%struct.etm_drvdata* %250, i32 %253, i32 %254)
  %256 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %257 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %258 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %257, i32 0, i32 21
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @ETMSYNCFR, align 4
  %261 = call i32 @etm_writel(%struct.etm_drvdata* %256, i32 %259, i32 %260)
  %262 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %263 = load i32, i32* @ETMEXTINSELR, align 4
  %264 = call i32 @etm_writel(%struct.etm_drvdata* %262, i32 0, i32 %263)
  %265 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %266 = load %struct.etm_config*, %struct.etm_config** %6, align 8
  %267 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %266, i32 0, i32 22
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @ETMTSEVR, align 4
  %270 = call i32 @etm_writel(%struct.etm_drvdata* %265, i32 %268, i32 %269)
  %271 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %272 = load i32, i32* @ETMAUXCR, align 4
  %273 = call i32 @etm_writel(%struct.etm_drvdata* %271, i32 0, i32 %272)
  %274 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %275 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %276 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @ETMTRACEIDR, align 4
  %279 = call i32 @etm_writel(%struct.etm_drvdata* %274, i32 %277, i32 %278)
  %280 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %281 = load i32, i32* @ETMVMIDCVR, align 4
  %282 = call i32 @etm_writel(%struct.etm_drvdata* %280, i32 0, i32 %281)
  %283 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %284 = call i32 @etm_clr_prog(%struct.etm_drvdata* %283)
  br label %285

285:                                              ; preds = %249, %19
  %286 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %287 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %286, i32 0, i32 8
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @CS_LOCK(i32 %288)
  %290 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %291 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %290, i32 0, i32 7
  %292 = load %struct.TYPE_2__*, %struct.TYPE_2__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 0
  %294 = load %struct.etm_drvdata*, %struct.etm_drvdata** %2, align 8
  %295 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %294, i32 0, i32 6
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* %4, align 4
  %298 = call i32 @dev_dbg(i32* %293, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %296, i32 %297)
  %299 = load i32, i32* %4, align 4
  ret i32 %299
}

declare dso_local i32 @CS_UNLOCK(i32) #1

declare dso_local i32 @coresight_claim_device_unlocked(i32) #1

declare dso_local i32 @etm_clr_pwrdwn(%struct.etm_drvdata*) #1

declare dso_local i32 @etm_set_pwrup(%struct.etm_drvdata*) #1

declare dso_local i32 @etm_os_unlock(%struct.etm_drvdata*) #1

declare dso_local i32 @etm_set_prog(%struct.etm_drvdata*) #1

declare dso_local i32 @etm_readl(%struct.etm_drvdata*, i32) #1

declare dso_local i32 @etm_writel(%struct.etm_drvdata*, i32, i32) #1

declare dso_local i32 @ETMACVRn(i32) #1

declare dso_local i32 @ETMACTRn(i32) #1

declare dso_local i32 @ETMCNTRLDVRn(i32) #1

declare dso_local i32 @ETMCNTENRn(i32) #1

declare dso_local i32 @ETMCNTRLDEVRn(i32) #1

declare dso_local i32 @ETMCNTVRn(i32) #1

declare dso_local i32 @ETMEXTOUTEVRn(i32) #1

declare dso_local i32 @ETMCIDCVRn(i32) #1

declare dso_local i32 @etm_clr_prog(%struct.etm_drvdata*) #1

declare dso_local i32 @CS_LOCK(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
