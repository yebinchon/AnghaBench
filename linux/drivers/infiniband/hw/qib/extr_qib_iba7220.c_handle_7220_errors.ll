; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_handle_7220_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_handle_7220_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.qib_devdata = type { %struct.qib_pportdata*, i32*, i32, %struct.TYPE_3__* }
%struct.qib_pportdata = type { i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32, i8* }

@HardwareErr = common dso_local global i32 0, align 4
@QLOGIC_IB_E_SDMAERRS = common dso_local global i32 0, align 4
@IB_E_BITSEXTANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"error interrupt with unknown errors %llx set\0A\00", align 1
@E_SUM_ERRS = common dso_local global i32 0, align 4
@E_SUM_LINK_PKTERRS = common dso_local global i32 0, align 4
@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@kr_errclear = common dso_local global i32 0, align 4
@IBStatusChanged = common dso_local global i32 0, align 4
@RcvEgrFullErr = common dso_local global i32 0, align 4
@RcvHdrFullErr = common dso_local global i32 0, align 4
@SDmaDisabledErr = common dso_local global i32 0, align 4
@E_SUM_PKTERRS = common dso_local global i32 0, align 4
@qib_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@QLOGIC_IB_E_PKTERRS = common dso_local global i32 0, align 4
@kr_ibcstatus = common dso_local global i32 0, align 4
@QIBL_IB_AUTONEG_INPROG = common dso_local global i32 0, align 4
@IBA7220_LINKWIDTH_SHIFT = common dso_local global i32 0, align 4
@IB_WIDTH_4X = common dso_local global i32 0, align 4
@IB_WIDTH_1X = common dso_local global i32 0, align 4
@IBA7220_LINKSPEED_SHIFT = common dso_local global i32 0, align 4
@QIB_IB_DDR = common dso_local global i32 0, align 4
@QIB_IB_SDR = common dso_local global i32 0, align 4
@IB_PHYSPORTSTATE_LINK_ERR_RECOVER = common dso_local global i64 0, align 8
@ResetNegated = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Got reset, requires re-init (unload and reload driver)\0A\00", align 1
@QIB_INITTED = common dso_local global i32 0, align 4
@QIB_STATUS_HWERROR = common dso_local global i32 0, align 4
@QIB_STATUS_IB_CONF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%s error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*, i32)* @handle_7220_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_7220_errors(%struct.qib_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_pportdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %12 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %11, i32 0, i32 0
  %13 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  store %struct.qib_pportdata* %13, %struct.qib_pportdata** %8, align 8
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @HardwareErr, align 4
  %28 = call i32 @ERR_MASK(i32 %27)
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @qib_7220_handle_hwerrors(%struct.qib_devdata* %32, i8* %33, i32 8)
  br label %35

35:                                               ; preds = %31, %2
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @QLOGIC_IB_E_SDMAERRS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @sdma_7220_errors(%struct.qib_pportdata* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @IB_E_BITSEXTANT, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @IB_E_BITSEXTANT, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = sext i32 %55 to i64
  %57 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %50, %44
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @E_SUM_ERRS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %65 = call i32 @qib_disarm_7220_senderrbufs(%struct.qib_pportdata* %64)
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @E_SUM_LINK_PKTERRS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %72 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @E_SUM_LINK_PKTERRS, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %70, %63
  br label %99

82:                                               ; preds = %58
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @E_SUM_LINK_PKTERRS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %89 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @E_SUM_LINK_PKTERRS, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %94, %87, %82
  br label %99

99:                                               ; preds = %98, %81
  %100 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %101 = load i32, i32* @kr_errclear, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @qib_write_kreg(%struct.qib_devdata* %100, i32 %101, i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %4, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %99
  br label %296

111:                                              ; preds = %99
  %112 = load i32, i32* @IBStatusChanged, align 4
  %113 = call i32 @ERR_MASK(i32 %112)
  %114 = load i32, i32* @RcvEgrFullErr, align 4
  %115 = call i32 @ERR_MASK(i32 %114)
  %116 = or i32 %113, %115
  %117 = load i32, i32* @RcvHdrFullErr, align 4
  %118 = call i32 @ERR_MASK(i32 %117)
  %119 = or i32 %116, %118
  %120 = load i32, i32* @HardwareErr, align 4
  %121 = call i32 @ERR_MASK(i32 %120)
  %122 = or i32 %119, %121
  %123 = load i32, i32* @SDmaDisabledErr, align 4
  %124 = call i32 @ERR_MASK(i32 %123)
  %125 = or i32 %122, %124
  store i32 %125, i32* %9, align 4
  %126 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* %9, align 4
  %130 = xor i32 %129, -1
  %131 = and i32 %128, %130
  %132 = call i32 @qib_decode_7220_err(%struct.qib_devdata* %126, i8* %127, i32 8, i32 %131)
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @E_SUM_PKTERRS, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %111
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qib_stats, i32 0, i32 3), align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qib_stats, i32 0, i32 3), align 4
  br label %140

140:                                              ; preds = %137, %111
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @E_SUM_ERRS, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qib_stats, i32 0, i32 2), align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qib_stats, i32 0, i32 2), align 4
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @E_SUM_PKTERRS, align 4
  %151 = load i32, i32* @QLOGIC_IB_E_PKTERRS, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @SDmaDisabledErr, align 4
  %154 = call i32 @ERR_MASK(i32 %153)
  %155 = or i32 %152, %154
  %156 = xor i32 %155, -1
  %157 = and i32 %149, %156
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @IBStatusChanged, align 4
  %160 = call i32 @ERR_MASK(i32 %159)
  %161 = and i32 %158, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %213

163:                                              ; preds = %148
  %164 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %165 = load i32, i32* @kr_ibcstatus, align 4
  %166 = call i32 @qib_read_kreg64(%struct.qib_devdata* %164, i32 %165)
  store i32 %166, i32* %10, align 4
  %167 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %168 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @QIBL_IB_AUTONEG_INPROG, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %163
  %174 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @handle_7220_chase(%struct.qib_pportdata* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %163
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @IBA7220_LINKWIDTH_SHIFT, align 4
  %180 = ashr i32 %178, %179
  %181 = and i32 %180, 1
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32, i32* @IB_WIDTH_4X, align 4
  br label %187

185:                                              ; preds = %177
  %186 = load i32, i32* @IB_WIDTH_1X, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %190 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* @IBA7220_LINKSPEED_SHIFT, align 4
  %193 = ashr i32 %191, %192
  %194 = and i32 %193, 1
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %187
  %197 = load i32, i32* @QIB_IB_DDR, align 4
  br label %200

198:                                              ; preds = %187
  %199 = load i32, i32* @QIB_IB_SDR, align 4
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i32 [ %197, %196 ], [ %199, %198 ]
  %202 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %203 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %202, i32 0, i32 5
  store i32 %201, i32* %203, align 8
  %204 = load i32, i32* %10, align 4
  %205 = call i64 @qib_7220_phys_portstate(i32 %204)
  %206 = load i64, i64* @IB_PHYSPORTSTATE_LINK_ERR_RECOVER, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %200
  %209 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %210 = load i32, i32* %10, align 4
  %211 = call i32 @qib_handle_e_ibstatuschanged(%struct.qib_pportdata* %209, i32 %210)
  br label %212

212:                                              ; preds = %208, %200
  br label %213

213:                                              ; preds = %212, %148
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @ResetNegated, align 4
  %216 = call i32 @ERR_MASK(i32 %215)
  %217 = and i32 %214, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %243

219:                                              ; preds = %213
  %220 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %221 = call i32 (%struct.qib_devdata*, i8*, ...) @qib_dev_err(%struct.qib_devdata* %220, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %222 = load i32, i32* @QIB_INITTED, align 4
  %223 = xor i32 %222, -1
  %224 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %225 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = and i32 %226, %223
  store i32 %227, i32* %225, align 8
  %228 = load i32, i32* @QIB_STATUS_HWERROR, align 4
  %229 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %230 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %228
  store i32 %233, i32* %231, align 4
  %234 = load i32, i32* @QIB_STATUS_IB_CONF, align 4
  %235 = xor i32 %234, -1
  %236 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %237 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %236, i32 0, i32 0
  %238 = load %struct.qib_pportdata*, %struct.qib_pportdata** %237, align 8
  %239 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, %235
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %219, %213
  %244 = load i8*, i8** %5, align 8
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %258

248:                                              ; preds = %243
  %249 = load i32, i32* %7, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  %252 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %253 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %254 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = load i8*, i8** %5, align 8
  %257 = call i32 @qib_dev_porterr(%struct.qib_devdata* %252, i32 %255, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %256)
  br label %258

258:                                              ; preds = %251, %248, %243
  %259 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %260 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %263 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %261, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %258
  %268 = load %struct.qib_pportdata*, %struct.qib_pportdata** %8, align 8
  %269 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %268, i32 0, i32 2
  %270 = call i32 @wake_up_interruptible(i32* %269)
  br label %271

271:                                              ; preds = %267, %258
  %272 = load i32, i32* %4, align 4
  %273 = load i32, i32* @RcvEgrFullErr, align 4
  %274 = call i32 @ERR_MASK(i32 %273)
  %275 = load i32, i32* @RcvHdrFullErr, align 4
  %276 = call i32 @ERR_MASK(i32 %275)
  %277 = or i32 %274, %276
  %278 = and i32 %272, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %295

280:                                              ; preds = %271
  %281 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %282 = call i32 @qib_handle_urcv(%struct.qib_devdata* %281, i32 -1)
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* @RcvEgrFullErr, align 4
  %285 = call i32 @ERR_MASK(i32 %284)
  %286 = and i32 %283, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %280
  %289 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qib_stats, i32 0, i32 1), align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qib_stats, i32 0, i32 1), align 4
  br label %294

291:                                              ; preds = %280
  %292 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qib_stats, i32 0, i32 0), align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qib_stats, i32 0, i32 0), align 4
  br label %294

294:                                              ; preds = %291, %288
  br label %295

295:                                              ; preds = %294, %271
  br label %296

296:                                              ; preds = %295, %110
  ret void
}

declare dso_local i32 @ERR_MASK(i32) #1

declare dso_local i32 @qib_7220_handle_hwerrors(%struct.qib_devdata*, i8*, i32) #1

declare dso_local i32 @sdma_7220_errors(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, ...) #1

declare dso_local i32 @qib_disarm_7220_senderrbufs(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_decode_7220_err(%struct.qib_devdata*, i8*, i32, i32) #1

declare dso_local i32 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @handle_7220_chase(%struct.qib_pportdata*, i32) #1

declare dso_local i64 @qib_7220_phys_portstate(i32) #1

declare dso_local i32 @qib_handle_e_ibstatuschanged(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @qib_dev_porterr(%struct.qib_devdata*, i32, i8*, i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @qib_handle_urcv(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
