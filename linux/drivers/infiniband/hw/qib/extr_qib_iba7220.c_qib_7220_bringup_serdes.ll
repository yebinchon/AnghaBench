; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_bringup_serdes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_bringup_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.qib_devdata* }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8* }
%struct.qib_devdata = type { i32, i32 }

@QLOGIC_IB_C_LINKENABLE = common dso_local global i32 0, align 4
@kr_control = common dso_local global i32 0, align 4
@qib_compat_ddr_negotiate = common dso_local global i64 0, align 8
@cr_ibsymbolerr = common dso_local global i32 0, align 4
@cr_iblinkerrrecov = common dso_local global i32 0, align 4
@IBCCtrl = common dso_local global i32 0, align 4
@FlowCtrlWaterMark = common dso_local global i32 0, align 4
@FlowCtrlPeriod = common dso_local global i32 0, align 4
@PhyerrThreshold = common dso_local global i32 0, align 4
@CreditScale = common dso_local global i32 0, align 4
@OverrunThreshold = common dso_local global i32 0, align 4
@MaxPktLen = common dso_local global i32 0, align 4
@QLOGIC_IB_IBCC_LINKINITCMD_DISABLE = common dso_local global i32 0, align 4
@QLOGIC_IB_IBCC_LINKINITCMD_SHIFT = common dso_local global i32 0, align 4
@kr_ibcctrl = common dso_local global i32 0, align 4
@kr_ibcddrctrl = common dso_local global i32 0, align 4
@QIB_IB_SDR = common dso_local global i32 0, align 4
@QIB_IB_DDR = common dso_local global i32 0, align 4
@IBA7220_IBC_SPEED_AUTONEG_MASK = common dso_local global i32 0, align 4
@IBA7220_IBC_IBTA_1_2_MASK = common dso_local global i32 0, align 4
@IBA7220_IBC_SPEED_DDR = common dso_local global i32 0, align 4
@IBA7220_IBC_SPEED_SDR = common dso_local global i32 0, align 4
@IB_WIDTH_1X = common dso_local global i32 0, align 4
@IB_WIDTH_4X = common dso_local global i32 0, align 4
@IBA7220_IBC_WIDTH_AUTONEG = common dso_local global i32 0, align 4
@IBA7220_IBC_WIDTH_4X_ONLY = common dso_local global i32 0, align 4
@IBA7220_IBC_WIDTH_1X_ONLY = common dso_local global i32 0, align 4
@IBA7220_IBC_RXPOL_MASK = common dso_local global i32 0, align 4
@IBA7220_IBC_RXPOL_SHIFT = common dso_local global i32 0, align 4
@IBA7220_IBC_HRTBT_MASK = common dso_local global i32 0, align 4
@IBA7220_IBC_HRTBT_SHIFT = common dso_local global i32 0, align 4
@IBA7220_IBC_LANE_REV_SUPPORTED = common dso_local global i32 0, align 4
@kr_scratch = common dso_local global i32 0, align 4
@kr_ncmodectrl = common dso_local global i32 0, align 4
@kr_xgxs_cfg = common dso_local global i32 0, align 4
@QLOGIC_IB_XGXS_FC_SAFE = common dso_local global i32 0, align 4
@QLOGIC_IB_XGXS_RESET = common dso_local global i32 0, align 4
@kr_hrtbt_guid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*)* @qib_7220_bringup_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7220_bringup_serdes(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %9 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %10 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %9, i32 0, i32 5
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  store %struct.qib_devdata* %11, %struct.qib_devdata** %3, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @QLOGIC_IB_C_LINKENABLE, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %19 = load i32, i32* @kr_control, align 4
  %20 = call i32 @qib_write_kreg(%struct.qib_devdata* %18, i32 %19, i32 0)
  %21 = load i64, i64* @qib_compat_ddr_negotiate, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %1
  %24 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %25 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %29 = load i32, i32* @cr_ibsymbolerr, align 4
  %30 = call i8* @read_7220_creg32(%struct.qib_devdata* %28, i32 %29)
  %31 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %32 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %31, i32 0, i32 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  store i8* %30, i8** %34, align 8
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %36 = load i32, i32* @cr_iblinkerrrecov, align 4
  %37 = call i8* @read_7220_creg32(%struct.qib_devdata* %35, i32 %36)
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %39 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i8* %37, i8** %41, align 8
  br label %42

42:                                               ; preds = %23, %1
  %43 = load i32, i32* @IBCCtrl, align 4
  %44 = load i32, i32* @FlowCtrlWaterMark, align 4
  %45 = call i32 @SYM_LSB(i32 %43, i32 %44)
  %46 = zext i32 %45 to i64
  %47 = shl i64 5, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @IBCCtrl, align 4
  %50 = load i32, i32* @FlowCtrlPeriod, align 4
  %51 = call i32 @SYM_LSB(i32 %49, i32 %50)
  %52 = zext i32 %51 to i64
  %53 = shl i64 3, %52
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = or i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @IBCCtrl, align 4
  %59 = load i32, i32* @PhyerrThreshold, align 4
  %60 = call i32 @SYM_LSB(i32 %58, i32 %59)
  %61 = zext i32 %60 to i64
  %62 = shl i64 15, %61
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = or i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @IBCCtrl, align 4
  %68 = load i32, i32* @CreditScale, align 4
  %69 = call i32 @SYM_LSB(i32 %67, i32 %68)
  %70 = zext i32 %69 to i64
  %71 = shl i64 4, %70
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = or i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* @IBCCtrl, align 4
  %77 = load i32, i32* @OverrunThreshold, align 4
  %78 = call i32 @SYM_LSB(i32 %76, i32 %77)
  %79 = zext i32 %78 to i64
  %80 = shl i64 15, %79
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = or i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %7, align 4
  %85 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %86 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = ashr i32 %87, 2
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* @IBCCtrl, align 4
  %91 = load i32, i32* @MaxPktLen, align 4
  %92 = call i32 @SYM_LSB(i32 %90, i32 %91)
  %93 = shl i32 %89, %92
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %98 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %97, i32 0, i32 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 4
  %101 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %102 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %101, i32 0, i32 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @QLOGIC_IB_IBCC_LINKINITCMD_DISABLE, align 4
  %107 = load i32, i32* @QLOGIC_IB_IBCC_LINKINITCMD_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = or i32 %105, %108
  store i32 %109, i32* %4, align 4
  %110 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %111 = load i32, i32* @kr_ibcctrl, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @qib_write_kreg(%struct.qib_devdata* %110, i32 %111, i32 %112)
  %114 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %115 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %114, i32 0, i32 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %228, label %120

120:                                              ; preds = %42
  %121 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %122 = load i32, i32* @kr_ibcddrctrl, align 4
  %123 = call i8* @qib_read_kreg64(%struct.qib_devdata* %121, i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %126 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %125, i32 0, i32 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  store i32 %124, i32* %128, align 8
  %129 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %130 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @QIB_IB_SDR, align 4
  %133 = load i32, i32* @QIB_IB_DDR, align 4
  %134 = or i32 %132, %133
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %120
  %137 = load i32, i32* @IBA7220_IBC_SPEED_AUTONEG_MASK, align 4
  %138 = load i32, i32* @IBA7220_IBC_IBTA_1_2_MASK, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %141 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %140, i32 0, i32 4
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %139
  store i32 %145, i32* %143, align 8
  br label %164

146:                                              ; preds = %120
  %147 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %148 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @QIB_IB_DDR, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* @IBA7220_IBC_SPEED_DDR, align 4
  br label %156

154:                                              ; preds = %146
  %155 = load i32, i32* @IBA7220_IBC_SPEED_SDR, align 4
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i32 [ %153, %152 ], [ %155, %154 ]
  %158 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %159 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %158, i32 0, i32 4
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %157
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %156, %136
  %165 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %166 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @IB_WIDTH_1X, align 4
  %169 = load i32, i32* @IB_WIDTH_4X, align 4
  %170 = or i32 %168, %169
  %171 = and i32 %167, %170
  %172 = load i32, i32* @IB_WIDTH_1X, align 4
  %173 = load i32, i32* @IB_WIDTH_4X, align 4
  %174 = or i32 %172, %173
  %175 = icmp eq i32 %171, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %164
  %177 = load i32, i32* @IBA7220_IBC_WIDTH_AUTONEG, align 4
  %178 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %179 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %178, i32 0, i32 4
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = or i32 %182, %177
  store i32 %183, i32* %181, align 8
  br label %202

184:                                              ; preds = %164
  %185 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %186 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @IB_WIDTH_4X, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = load i32, i32* @IBA7220_IBC_WIDTH_4X_ONLY, align 4
  br label %194

192:                                              ; preds = %184
  %193 = load i32, i32* @IBA7220_IBC_WIDTH_1X_ONLY, align 4
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i32 [ %191, %190 ], [ %193, %192 ]
  %196 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %197 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %196, i32 0, i32 4
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %195
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %194, %176
  %203 = load i32, i32* @IBA7220_IBC_RXPOL_MASK, align 4
  %204 = load i32, i32* @IBA7220_IBC_RXPOL_SHIFT, align 4
  %205 = shl i32 %203, %204
  %206 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %207 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %206, i32 0, i32 4
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %205
  store i32 %211, i32* %209, align 8
  %212 = load i32, i32* @IBA7220_IBC_HRTBT_MASK, align 4
  %213 = load i32, i32* @IBA7220_IBC_HRTBT_SHIFT, align 4
  %214 = shl i32 %212, %213
  %215 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %216 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %215, i32 0, i32 4
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %214
  store i32 %220, i32* %218, align 8
  %221 = load i32, i32* @IBA7220_IBC_LANE_REV_SUPPORTED, align 4
  %222 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %223 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %222, i32 0, i32 4
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %221
  store i32 %227, i32* %225, align 8
  br label %232

228:                                              ; preds = %42
  %229 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %230 = load i32, i32* @kr_scratch, align 4
  %231 = call i32 @qib_write_kreg(%struct.qib_devdata* %229, i32 %230, i32 0)
  br label %232

232:                                              ; preds = %228, %202
  %233 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %234 = load i32, i32* @kr_ibcddrctrl, align 4
  %235 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %236 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %235, i32 0, i32 4
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @qib_write_kreg(%struct.qib_devdata* %233, i32 %234, i32 %239)
  %241 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %242 = load i32, i32* @kr_scratch, align 4
  %243 = call i32 @qib_write_kreg(%struct.qib_devdata* %241, i32 %242, i32 0)
  %244 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %245 = load i32, i32* @kr_ncmodectrl, align 4
  %246 = call i32 @qib_write_kreg(%struct.qib_devdata* %244, i32 %245, i32 0)
  %247 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %248 = load i32, i32* @kr_scratch, align 4
  %249 = call i32 @qib_write_kreg(%struct.qib_devdata* %247, i32 %248, i32 0)
  %250 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %251 = call i32 @qib_sd7220_init(%struct.qib_devdata* %250)
  store i32 %251, i32* %8, align 4
  %252 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %253 = load i32, i32* @kr_xgxs_cfg, align 4
  %254 = call i8* @qib_read_kreg64(%struct.qib_devdata* %252, i32 %253)
  %255 = ptrtoint i8* %254 to i32
  store i32 %255, i32* %4, align 4
  %256 = load i32, i32* %4, align 4
  store i32 %256, i32* %5, align 4
  %257 = load i32, i32* @QLOGIC_IB_XGXS_FC_SAFE, align 4
  %258 = load i32, i32* %4, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %4, align 4
  %260 = load i32, i32* %4, align 4
  %261 = load i32, i32* %5, align 4
  %262 = icmp ne i32 %260, %261
  br i1 %262, label %263, label %271

263:                                              ; preds = %232
  %264 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %265 = load i32, i32* @kr_xgxs_cfg, align 4
  %266 = load i32, i32* %4, align 4
  %267 = call i32 @qib_write_kreg(%struct.qib_devdata* %264, i32 %265, i32 %266)
  %268 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %269 = load i32, i32* @kr_scratch, align 4
  %270 = call i32 @qib_read_kreg32(%struct.qib_devdata* %268, i32 %269)
  br label %271

271:                                              ; preds = %263, %232
  %272 = load i32, i32* %4, align 4
  %273 = load i32, i32* @QLOGIC_IB_XGXS_RESET, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %271
  %277 = load i32, i32* @QLOGIC_IB_XGXS_RESET, align 4
  %278 = xor i32 %277, -1
  %279 = load i32, i32* %4, align 4
  %280 = and i32 %279, %278
  store i32 %280, i32* %4, align 4
  br label %281

281:                                              ; preds = %276, %271
  %282 = load i32, i32* %4, align 4
  %283 = load i32, i32* %5, align 4
  %284 = icmp ne i32 %282, %283
  br i1 %284, label %285, label %290

285:                                              ; preds = %281
  %286 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %287 = load i32, i32* @kr_xgxs_cfg, align 4
  %288 = load i32, i32* %4, align 4
  %289 = call i32 @qib_write_kreg(%struct.qib_devdata* %286, i32 %287, i32 %288)
  br label %290

290:                                              ; preds = %285, %281
  %291 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %292 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %301, label %295

295:                                              ; preds = %290
  %296 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %297 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %300 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %299, i32 0, i32 3
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %295, %290
  %302 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %303 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @be64_to_cpu(i32 %304)
  store i32 %305, i32* %6, align 4
  %306 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %307 = load i32, i32* @kr_hrtbt_guid, align 4
  %308 = load i32, i32* %6, align 4
  %309 = call i32 @qib_write_kreg(%struct.qib_devdata* %306, i32 %307, i32 %308)
  %310 = load i32, i32* %8, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %324, label %312

312:                                              ; preds = %301
  %313 = load i32, i32* @QLOGIC_IB_C_LINKENABLE, align 4
  %314 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %315 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 4
  %318 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %319 = load i32, i32* @kr_control, align 4
  %320 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %321 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @qib_write_kreg(%struct.qib_devdata* %318, i32 %319, i32 %322)
  br label %328

324:                                              ; preds = %301
  %325 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %326 = load i32, i32* @kr_scratch, align 4
  %327 = call i32 @qib_write_kreg(%struct.qib_devdata* %325, i32 %326, i32 0)
  br label %328

328:                                              ; preds = %324, %312
  %329 = load i32, i32* %8, align 4
  ret i32 %329
}

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i8* @read_7220_creg32(%struct.qib_devdata*, i32) #1

declare dso_local i32 @SYM_LSB(i32, i32) #1

declare dso_local i8* @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_sd7220_init(%struct.qib_devdata*) #1

declare dso_local i32 @qib_read_kreg32(%struct.qib_devdata*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
