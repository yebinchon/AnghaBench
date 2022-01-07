; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ohci_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ohci_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32, i32 }
%struct.fw_ohci = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i64*, i64, i64* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"failed to reset ohci card\0A\00", align 1
@OHCI1394_HCControlSet = common dso_local global i32 0, align 4
@OHCI1394_HCControl_LPS = common dso_local global i32 0, align 4
@OHCI1394_HCControl_postedWriteEnable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to set Link Power Status\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@QUIRK_TI_SLLZ059 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"local TSB41BA3D phy\0A\00", align 1
@OHCI1394_HCControlClear = common dso_local global i32 0, align 4
@OHCI1394_HCControl_noByteSwapData = common dso_local global i32 0, align 4
@OHCI1394_SelfIDBuffer = common dso_local global i32 0, align 4
@OHCI1394_LinkControlSet = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_cycleTimerEnable = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_cycleMaster = common dso_local global i32 0, align 4
@OHCI1394_ATRetries = common dso_local global i32 0, align 4
@OHCI1394_MAX_AT_REQ_RETRIES = common dso_local global i32 0, align 4
@OHCI1394_MAX_AT_RESP_RETRIES = common dso_local global i32 0, align 4
@OHCI1394_MAX_PHYS_RESP_RETRIES = common dso_local global i32 0, align 4
@IR_CONTEXT_MULTI_CHANNEL_MODE = common dso_local global i32 0, align 4
@OHCI1394_Version = common dso_local global i32 0, align 4
@OHCI_VERSION_1_1 = common dso_local global i32 0, align 4
@OHCI1394_InitialChannelsAvailableHi = common dso_local global i32 0, align 4
@OHCI1394_FairnessControl = common dso_local global i32 0, align 4
@OHCI1394_PhyUpperBound = common dso_local global i32 0, align 4
@FW_MAX_PHYSICAL_RANGE = common dso_local global i32 0, align 4
@OHCI1394_IntEventClear = common dso_local global i32 0, align 4
@OHCI1394_IntMaskClear = common dso_local global i32 0, align 4
@PHY_LINK_ACTIVE = common dso_local global i32 0, align 4
@PHY_CONTENDER = common dso_local global i32 0, align 4
@CONFIG_ROM_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OHCI1394_ConfigROMhdr = common dso_local global i32 0, align 4
@OHCI1394_BusOptions = common dso_local global i32 0, align 4
@OHCI1394_ConfigROMmap = common dso_local global i32 0, align 4
@OHCI1394_AsReqFilterHiSet = common dso_local global i32 0, align 4
@OHCI1394_reqTxComplete = common dso_local global i32 0, align 4
@OHCI1394_respTxComplete = common dso_local global i32 0, align 4
@OHCI1394_RQPkt = common dso_local global i32 0, align 4
@OHCI1394_RSPkt = common dso_local global i32 0, align 4
@OHCI1394_isochTx = common dso_local global i32 0, align 4
@OHCI1394_isochRx = common dso_local global i32 0, align 4
@OHCI1394_postedWriteErr = common dso_local global i32 0, align 4
@OHCI1394_selfIDComplete = common dso_local global i32 0, align 4
@OHCI1394_regAccessFail = common dso_local global i32 0, align 4
@OHCI1394_cycleInconsistent = common dso_local global i32 0, align 4
@OHCI1394_unrecoverableError = common dso_local global i32 0, align 4
@OHCI1394_cycleTooLong = common dso_local global i32 0, align 4
@OHCI1394_masterIntEnable = common dso_local global i32 0, align 4
@param_debug = common dso_local global i32 0, align 4
@OHCI_PARAM_DEBUG_BUSRESETS = common dso_local global i32 0, align 4
@OHCI1394_busReset = common dso_local global i32 0, align 4
@OHCI1394_IntMaskSet = common dso_local global i32 0, align 4
@OHCI1394_HCControl_linkEnable = common dso_local global i32 0, align 4
@OHCI1394_HCControl_BIBimageValid = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_rcvSelfID = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_rcvPhyPkt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, i32*, i64)* @ohci_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_enable(%struct.fw_card* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_card*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fw_ohci*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %15 = call %struct.fw_ohci* @fw_ohci(%struct.fw_card* %14)
  store %struct.fw_ohci* %15, %struct.fw_ohci** %8, align 8
  %16 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %17 = call i32 @software_reset(%struct.fw_ohci* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %22 = call i32 @ohci_err(%struct.fw_ohci* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %4, align 4
  br label %333

24:                                               ; preds = %3
  %25 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %26 = load i32, i32* @OHCI1394_HCControlSet, align 4
  %27 = load i32, i32* @OHCI1394_HCControl_LPS, align 4
  %28 = load i32, i32* @OHCI1394_HCControl_postedWriteEnable, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @reg_write(%struct.fw_ohci* %25, i32 %26, i32 %29)
  %31 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %32 = call i32 @flush_writes(%struct.fw_ohci* %31)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %48, %24
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 3
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i1 [ false, %33 ], [ %38, %36 ]
  br i1 %40, label %41, label %51

41:                                               ; preds = %39
  %42 = call i32 @msleep(i32 50)
  %43 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %44 = load i32, i32* @OHCI1394_HCControlSet, align 4
  %45 = call i32 @reg_read(%struct.fw_ohci* %43, i32 %44)
  %46 = load i32, i32* @OHCI1394_HCControl_LPS, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %33

51:                                               ; preds = %39
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %56 = call i32 @ohci_err(%struct.fw_ohci* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %333

59:                                               ; preds = %51
  %60 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %61 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @QUIRK_TI_SLLZ059, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %59
  %67 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %68 = call i32 @probe_tsb41ba3d(%struct.fw_ohci* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %4, align 4
  br label %333

73:                                               ; preds = %66
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %78 = call i32 @ohci_notice(%struct.fw_ohci* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %86

79:                                               ; preds = %73
  %80 = load i32, i32* @QUIRK_TI_SLLZ059, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %83 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %79, %76
  br label %87

87:                                               ; preds = %86, %59
  %88 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %89 = load i32, i32* @OHCI1394_HCControlClear, align 4
  %90 = load i32, i32* @OHCI1394_HCControl_noByteSwapData, align 4
  %91 = call i32 @reg_write(%struct.fw_ohci* %88, i32 %89, i32 %90)
  %92 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %93 = load i32, i32* @OHCI1394_SelfIDBuffer, align 4
  %94 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %95 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @reg_write(%struct.fw_ohci* %92, i32 %93, i32 %96)
  %98 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %99 = load i32, i32* @OHCI1394_LinkControlSet, align 4
  %100 = load i32, i32* @OHCI1394_LinkControl_cycleTimerEnable, align 4
  %101 = load i32, i32* @OHCI1394_LinkControl_cycleMaster, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @reg_write(%struct.fw_ohci* %98, i32 %99, i32 %102)
  %104 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %105 = load i32, i32* @OHCI1394_ATRetries, align 4
  %106 = load i32, i32* @OHCI1394_MAX_AT_REQ_RETRIES, align 4
  %107 = load i32, i32* @OHCI1394_MAX_AT_RESP_RETRIES, align 4
  %108 = shl i32 %107, 4
  %109 = or i32 %106, %108
  %110 = load i32, i32* @OHCI1394_MAX_PHYS_RESP_RETRIES, align 4
  %111 = shl i32 %110, 8
  %112 = or i32 %109, %111
  %113 = or i32 %112, 13107200
  %114 = call i32 @reg_write(%struct.fw_ohci* %104, i32 %105, i32 %113)
  %115 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %116 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %115, i32 0, i32 2
  store i32 0, i32* %116, align 8
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %135, %87
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %118, 32
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %122 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %12, align 4
  %125 = shl i32 1, %124
  %126 = and i32 %123, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @OHCI1394_IsoRcvContextControlClear(i32 %130)
  %132 = load i32, i32* @IR_CONTEXT_MULTI_CHANNEL_MODE, align 4
  %133 = call i32 @reg_write(%struct.fw_ohci* %129, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %128, %120
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %117

138:                                              ; preds = %117
  %139 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %140 = load i32, i32* @OHCI1394_Version, align 4
  %141 = call i32 @reg_read(%struct.fw_ohci* %139, i32 %140)
  %142 = and i32 %141, 16711935
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @OHCI_VERSION_1_1, align 4
  %145 = icmp sge i32 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %148 = load i32, i32* @OHCI1394_InitialChannelsAvailableHi, align 4
  %149 = call i32 @reg_write(%struct.fw_ohci* %147, i32 %148, i32 -2)
  %150 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %151 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %150, i32 0, i32 0
  store i32 1, i32* %151, align 4
  br label %152

152:                                              ; preds = %146, %138
  %153 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %154 = load i32, i32* @OHCI1394_FairnessControl, align 4
  %155 = call i32 @reg_write(%struct.fw_ohci* %153, i32 %154, i32 63)
  %156 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %157 = load i32, i32* @OHCI1394_FairnessControl, align 4
  %158 = call i32 @reg_read(%struct.fw_ohci* %156, i32 %157)
  %159 = and i32 %158, 63
  %160 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %161 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  %162 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %163 = load i32, i32* @OHCI1394_FairnessControl, align 4
  %164 = call i32 @reg_write(%struct.fw_ohci* %162, i32 %163, i32 0)
  %165 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %166 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %171 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %173 = load i32, i32* @OHCI1394_PhyUpperBound, align 4
  %174 = load i32, i32* @FW_MAX_PHYSICAL_RANGE, align 4
  %175 = ashr i32 %174, 16
  %176 = call i32 @reg_write(%struct.fw_ohci* %172, i32 %173, i32 %175)
  %177 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %178 = load i32, i32* @OHCI1394_IntEventClear, align 4
  %179 = call i32 @reg_write(%struct.fw_ohci* %177, i32 %178, i32 -1)
  %180 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %181 = load i32, i32* @OHCI1394_IntMaskClear, align 4
  %182 = call i32 @reg_write(%struct.fw_ohci* %180, i32 %181, i32 -1)
  %183 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %184 = call i32 @configure_1394a_enhancements(%struct.fw_ohci* %183)
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %152
  %188 = load i32, i32* %13, align 4
  store i32 %188, i32* %4, align 4
  br label %333

189:                                              ; preds = %152
  %190 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %191 = load i32, i32* @PHY_LINK_ACTIVE, align 4
  %192 = load i32, i32* @PHY_CONTENDER, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @ohci_update_phy_reg(%struct.fw_card* %190, i32 4, i32 0, i32 %193)
  store i32 %194, i32* %13, align 4
  %195 = load i32, i32* %13, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %4, align 4
  br label %333

199:                                              ; preds = %189
  %200 = load i32*, i32** %6, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %228

202:                                              ; preds = %199
  %203 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %204 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %203, i32 0, i32 7
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @CONFIG_ROM_SIZE, align 4
  %208 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %209 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %208, i32 0, i32 5
  %210 = load i32, i32* @GFP_KERNEL, align 4
  %211 = call i64* @dma_alloc_coherent(i32 %206, i32 %207, i32* %209, i32 %210)
  %212 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %213 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %212, i32 0, i32 10
  store i64* %211, i64** %213, align 8
  %214 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %215 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %214, i32 0, i32 10
  %216 = load i64*, i64** %215, align 8
  %217 = icmp eq i64* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %202
  %219 = load i32, i32* @ENOMEM, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %4, align 4
  br label %333

221:                                              ; preds = %202
  %222 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %223 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %222, i32 0, i32 10
  %224 = load i64*, i64** %223, align 8
  %225 = load i32*, i32** %6, align 8
  %226 = load i64, i64* %7, align 8
  %227 = call i32 @copy_config_rom(i64* %224, i32* %225, i64 %226)
  br label %239

228:                                              ; preds = %199
  %229 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %230 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %229, i32 0, i32 12
  %231 = load i64*, i64** %230, align 8
  %232 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %233 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %232, i32 0, i32 10
  store i64* %231, i64** %233, align 8
  %234 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %235 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %238 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %237, i32 0, i32 5
  store i32 %236, i32* %238, align 4
  br label %239

239:                                              ; preds = %228, %221
  %240 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %241 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %240, i32 0, i32 10
  %242 = load i64*, i64** %241, align 8
  %243 = getelementptr inbounds i64, i64* %242, i64 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %246 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %245, i32 0, i32 11
  store i64 %244, i64* %246, align 8
  %247 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %248 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %247, i32 0, i32 10
  %249 = load i64*, i64** %248, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 0
  store i64 0, i64* %250, align 8
  %251 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %252 = load i32, i32* @OHCI1394_ConfigROMhdr, align 4
  %253 = call i32 @reg_write(%struct.fw_ohci* %251, i32 %252, i32 0)
  %254 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %255 = load i32, i32* @OHCI1394_BusOptions, align 4
  %256 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %257 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %256, i32 0, i32 10
  %258 = load i64*, i64** %257, align 8
  %259 = getelementptr inbounds i64, i64* %258, i64 2
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @be32_to_cpu(i64 %260)
  %262 = call i32 @reg_write(%struct.fw_ohci* %254, i32 %255, i32 %261)
  %263 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %264 = load i32, i32* @OHCI1394_ConfigROMmap, align 4
  %265 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %266 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @reg_write(%struct.fw_ohci* %263, i32 %264, i32 %267)
  %269 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %270 = load i32, i32* @OHCI1394_AsReqFilterHiSet, align 4
  %271 = call i32 @reg_write(%struct.fw_ohci* %269, i32 %270, i32 -2147483648)
  %272 = load i32, i32* @OHCI1394_reqTxComplete, align 4
  %273 = load i32, i32* @OHCI1394_respTxComplete, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* @OHCI1394_RQPkt, align 4
  %276 = or i32 %274, %275
  %277 = load i32, i32* @OHCI1394_RSPkt, align 4
  %278 = or i32 %276, %277
  %279 = load i32, i32* @OHCI1394_isochTx, align 4
  %280 = or i32 %278, %279
  %281 = load i32, i32* @OHCI1394_isochRx, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @OHCI1394_postedWriteErr, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @OHCI1394_selfIDComplete, align 4
  %286 = or i32 %284, %285
  %287 = load i32, i32* @OHCI1394_regAccessFail, align 4
  %288 = or i32 %286, %287
  %289 = load i32, i32* @OHCI1394_cycleInconsistent, align 4
  %290 = or i32 %288, %289
  %291 = load i32, i32* @OHCI1394_unrecoverableError, align 4
  %292 = or i32 %290, %291
  %293 = load i32, i32* @OHCI1394_cycleTooLong, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* @OHCI1394_masterIntEnable, align 4
  %296 = or i32 %294, %295
  store i32 %296, i32* %11, align 4
  %297 = load i32, i32* @param_debug, align 4
  %298 = load i32, i32* @OHCI_PARAM_DEBUG_BUSRESETS, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %239
  %302 = load i32, i32* @OHCI1394_busReset, align 4
  %303 = load i32, i32* %11, align 4
  %304 = or i32 %303, %302
  store i32 %304, i32* %11, align 4
  br label %305

305:                                              ; preds = %301, %239
  %306 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %307 = load i32, i32* @OHCI1394_IntMaskSet, align 4
  %308 = load i32, i32* %11, align 4
  %309 = call i32 @reg_write(%struct.fw_ohci* %306, i32 %307, i32 %308)
  %310 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %311 = load i32, i32* @OHCI1394_HCControlSet, align 4
  %312 = load i32, i32* @OHCI1394_HCControl_linkEnable, align 4
  %313 = load i32, i32* @OHCI1394_HCControl_BIBimageValid, align 4
  %314 = or i32 %312, %313
  %315 = call i32 @reg_write(%struct.fw_ohci* %310, i32 %311, i32 %314)
  %316 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %317 = load i32, i32* @OHCI1394_LinkControlSet, align 4
  %318 = load i32, i32* @OHCI1394_LinkControl_rcvSelfID, align 4
  %319 = load i32, i32* @OHCI1394_LinkControl_rcvPhyPkt, align 4
  %320 = or i32 %318, %319
  %321 = call i32 @reg_write(%struct.fw_ohci* %316, i32 %317, i32 %320)
  %322 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %323 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %322, i32 0, i32 9
  %324 = call i32 @ar_context_run(i32* %323)
  %325 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %326 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %325, i32 0, i32 8
  %327 = call i32 @ar_context_run(i32* %326)
  %328 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %329 = call i32 @flush_writes(%struct.fw_ohci* %328)
  %330 = load %struct.fw_ohci*, %struct.fw_ohci** %8, align 8
  %331 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %330, i32 0, i32 7
  %332 = call i32 @fw_schedule_bus_reset(%struct.TYPE_2__* %331, i32 0, i32 1)
  store i32 0, i32* %4, align 4
  br label %333

333:                                              ; preds = %305, %218, %197, %187, %71, %54, %20
  %334 = load i32, i32* %4, align 4
  ret i32 %334
}

declare dso_local %struct.fw_ohci* @fw_ohci(%struct.fw_card*) #1

declare dso_local i32 @software_reset(%struct.fw_ohci*) #1

declare dso_local i32 @ohci_err(%struct.fw_ohci*, i8*) #1

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @flush_writes(%struct.fw_ohci*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i32 @probe_tsb41ba3d(%struct.fw_ohci*) #1

declare dso_local i32 @ohci_notice(%struct.fw_ohci*, i8*) #1

declare dso_local i32 @OHCI1394_IsoRcvContextControlClear(i32) #1

declare dso_local i32 @configure_1394a_enhancements(%struct.fw_ohci*) #1

declare dso_local i32 @ohci_update_phy_reg(%struct.fw_card*, i32, i32, i32) #1

declare dso_local i64* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @copy_config_rom(i64*, i32*, i64) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @ar_context_run(i32*) #1

declare dso_local i32 @fw_schedule_bus_reset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
