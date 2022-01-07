; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_intr.c_qib_handle_e_ibstatuschanged.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_intr.c_qib_handle_e_ibstatuschanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i32*, i32, i32, i32, %struct.qib_devdata* }
%struct.qib_devdata = type { i64 (i32)*, i64 (i32)*, i32, i32 (%struct.qib_pportdata*, i32)*, i64 (%struct.qib_pportdata*, i32, i32)* }

@IB_PORT_INIT = common dso_local global i64 0, align 8
@QIBL_LINKDOWN = common dso_local global i32 0, align 4
@IB_PHYSPORTSTATE_LINKUP = common dso_local global i64 0, align 8
@QIBL_LINKINIT = common dso_local global i32 0, align 4
@QIBL_LINKARMED = common dso_local global i32 0, align 4
@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@QIBL_IB_FORCE_NOTIFY = common dso_local global i32 0, align 4
@IB_PHYSPORTSTATE_CFG_TRAIN = common dso_local global i64 0, align 8
@_QIB_EVENT_LINKDOWN_BIT = common dso_local global i32 0, align 4
@IB_PORT_DOWN = common dso_local global i64 0, align 8
@IB_PORT_ACTIVE = common dso_local global i64 0, align 8
@QIB_STATUS_IB_READY = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ERR = common dso_local global i32 0, align 4
@IB_PORT_ARMED = common dso_local global i64 0, align 8
@QIBL_LINKV = common dso_local global i32 0, align 4
@QIB_STATUS_IB_CONF = common dso_local global i32 0, align 4
@QIB_HAS_SEND_DMA = common dso_local global i32 0, align 4
@qib_sdma_event_e30_go_running = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_handle_e_ibstatuschanged(%struct.qib_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %11 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %10, i32 0, i32 5
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %11, align 8
  store %struct.qib_devdata* %12, %struct.qib_devdata** %5, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 0
  %15 = load i64 (i32)*, i64 (i32)** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 %15(i32 %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 1
  %20 = load i64 (i32)*, i64 (i32)** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 %20(i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @IB_PORT_INIT, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %2
  %27 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %28 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %33 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @QIBL_LINKDOWN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31, %26
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @IB_PHYSPORTSTATE_LINKUP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %44 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %43, i32 0, i32 4
  %45 = load i64 (%struct.qib_pportdata*, i32, i32)*, i64 (%struct.qib_pportdata*, i32, i32)** %44, align 8
  %46 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i64 %45(%struct.qib_pportdata* %46, i32 1, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %276

51:                                               ; preds = %42
  br label %87

52:                                               ; preds = %38, %31, %2
  %53 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %54 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @QIBL_LINKINIT, align 4
  %57 = load i32, i32* @QIBL_LINKARMED, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @QIBL_IB_FORCE_NOTIFY, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %55, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %52
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @IB_PHYSPORTSTATE_LINKUP, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @IB_PHYSPORTSTATE_CFG_TRAIN, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %75 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %74, i32 0, i32 4
  %76 = load i64 (%struct.qib_pportdata*, i32, i32)*, i64 (%struct.qib_pportdata*, i32, i32)** %75, align 8
  %77 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i64 %76(%struct.qib_pportdata* %77, i32 0, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %276

82:                                               ; preds = %73, %69, %65
  %83 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %84 = load i32, i32* @_QIB_EVENT_LINKDOWN_BIT, align 4
  %85 = call i32 @qib_set_uevent_bits(%struct.qib_pportdata* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %52
  br label %87

87:                                               ; preds = %86, %51
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @IB_PORT_DOWN, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %233

91:                                               ; preds = %87
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @IB_PORT_ACTIVE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %164

95:                                               ; preds = %91
  %96 = load i32, i32* @QIB_STATUS_IB_READY, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %99 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %97
  store i32 %102, i32* %100, align 4
  %103 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %104 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %95
  %110 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %109, %95
  %112 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %113 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %112, i32 0, i32 3
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @spin_lock_irqsave(i32* %113, i64 %114)
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @IB_PORT_ARMED, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %111
  %120 = load i32, i32* @QIBL_LINKARMED, align 4
  %121 = load i32, i32* @QIBL_LINKV, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %124 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* @QIBL_LINKINIT, align 4
  %128 = load i32, i32* @QIBL_LINKDOWN, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %131 = or i32 %129, %130
  %132 = xor i32 %131, -1
  %133 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %134 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %155

137:                                              ; preds = %111
  %138 = load i32, i32* @QIBL_LINKINIT, align 4
  %139 = load i32, i32* @QIBL_LINKV, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %142 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load i32, i32* @QIBL_LINKARMED, align 4
  %146 = load i32, i32* @QIBL_LINKDOWN, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %149 = or i32 %147, %148
  %150 = xor i32 %149, -1
  %151 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %152 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %137, %119
  %156 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %157 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %156, i32 0, i32 3
  %158 = load i64, i64* %6, align 8
  %159 = call i32 @spin_unlock_irqrestore(i32* %157, i64 %158)
  %160 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %161 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %160, i32 0, i32 4
  %162 = call i32 @msecs_to_jiffies(i32 75)
  %163 = call i32 @mod_timer(i32* %161, i32 %162)
  br label %232

164:                                              ; preds = %91
  %165 = load i64, i64* %8, align 8
  %166 = load i64, i64* @IB_PHYSPORTSTATE_LINKUP, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %231

168:                                              ; preds = %164
  %169 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %170 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %231, label %175

175:                                              ; preds = %168
  %176 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %177 = call i32 @qib_hol_up(%struct.qib_pportdata* %176)
  %178 = load i32, i32* @QIB_STATUS_IB_READY, align 4
  %179 = load i32, i32* @QIB_STATUS_IB_CONF, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %182 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %180
  store i32 %185, i32* %183, align 4
  %186 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %187 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %186, i32 0, i32 4
  %188 = call i32 @qib_clear_symerror_on_linkup(i32* %187)
  %189 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %190 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %189, i32 0, i32 3
  %191 = load i64, i64* %6, align 8
  %192 = call i32 @spin_lock_irqsave(i32* %190, i64 %191)
  %193 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %194 = load i32, i32* @QIBL_LINKV, align 4
  %195 = or i32 %193, %194
  %196 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %197 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  %200 = load i32, i32* @QIBL_LINKINIT, align 4
  %201 = load i32, i32* @QIBL_LINKDOWN, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @QIBL_LINKARMED, align 4
  %204 = or i32 %202, %203
  %205 = xor i32 %204, -1
  %206 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %207 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, %205
  store i32 %209, i32* %207, align 8
  %210 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %211 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %210, i32 0, i32 3
  %212 = load i64, i64* %6, align 8
  %213 = call i32 @spin_unlock_irqrestore(i32* %211, i64 %212)
  %214 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %215 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @QIB_HAS_SEND_DMA, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %175
  %221 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %222 = load i32, i32* @qib_sdma_event_e30_go_running, align 4
  %223 = call i32 @qib_sdma_process_event(%struct.qib_pportdata* %221, i32 %222)
  br label %224

224:                                              ; preds = %220, %175
  %225 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  store i32 %225, i32* %9, align 4
  %226 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %227 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %226, i32 0, i32 3
  %228 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %227, align 8
  %229 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %230 = call i32 %228(%struct.qib_pportdata* %229, i32 1)
  br label %231

231:                                              ; preds = %224, %168, %164
  br label %232

232:                                              ; preds = %231, %155
  br label %275

233:                                              ; preds = %87
  %234 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %235 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %233
  %241 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  store i32 %241, i32* %9, align 4
  br label %242

242:                                              ; preds = %240, %233
  %243 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %244 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %243, i32 0, i32 3
  %245 = load i64, i64* %6, align 8
  %246 = call i32 @spin_lock_irqsave(i32* %244, i64 %245)
  %247 = load i32, i32* @QIBL_LINKDOWN, align 4
  %248 = load i32, i32* @QIBL_LINKV, align 4
  %249 = or i32 %247, %248
  %250 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %251 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 8
  %254 = load i32, i32* @QIBL_LINKINIT, align 4
  %255 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @QIBL_LINKARMED, align 4
  %258 = or i32 %256, %257
  %259 = xor i32 %258, -1
  %260 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %261 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = and i32 %262, %259
  store i32 %263, i32* %261, align 8
  %264 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %265 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %264, i32 0, i32 3
  %266 = load i64, i64* %6, align 8
  %267 = call i32 @spin_unlock_irqrestore(i32* %265, i64 %266)
  %268 = load i32, i32* @QIB_STATUS_IB_READY, align 4
  %269 = xor i32 %268, -1
  %270 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %271 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, %269
  store i32 %274, i32* %272, align 4
  br label %275

275:                                              ; preds = %242, %232
  br label %276

276:                                              ; preds = %275, %81, %50
  %277 = load i32, i32* %4, align 4
  %278 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %279 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 8
  %280 = load i32, i32* %9, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %276
  %283 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %284 = load i32, i32* %9, align 4
  %285 = call i32 @signal_ib_event(%struct.qib_pportdata* %283, i32 %284)
  br label %286

286:                                              ; preds = %282, %276
  ret void
}

declare dso_local i32 @qib_set_uevent_bits(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @qib_hol_up(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_clear_symerror_on_linkup(i32*) #1

declare dso_local i32 @qib_sdma_process_event(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @signal_ib_event(%struct.qib_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
