; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_send_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_set_send_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { %struct.TYPE_4__*, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SEND_LEN_CHECK1_LEN_VL15_MASK = common dso_local global i32 0, align 4
@SEND_LEN_CHECK1_LEN_VL15_SHIFT = common dso_local global i32 0, align 4
@SEND_LEN_CHECK0_LEN_VL0_MASK = common dso_local global i32 0, align 4
@SEND_LEN_CHECK0_LEN_VL1_SHIFT = common dso_local global i32 0, align 4
@SEND_LEN_CHECK1_LEN_VL4_MASK = common dso_local global i32 0, align 4
@SEND_LEN_CHECK1_LEN_VL5_SHIFT = common dso_local global i32 0, align 4
@SEND_LEN_CHECK0 = common dso_local global i32 0, align 4
@SEND_LEN_CHECK1 = common dso_local global i32 0, align 4
@INIT_SC_PER_VL = common dso_local global i32 0, align 4
@DCC_CFG_PORT_MTU_CAP_10240 = common dso_local global i32 0, align 4
@DCC_CFG_PORT_CONFIG = common dso_local global i32 0, align 4
@DCC_CFG_PORT_CONFIG_MTU_CAP_SMASK = common dso_local global i32 0, align 4
@DCC_CFG_PORT_CONFIG_MTU_CAP_MASK = common dso_local global i32 0, align 4
@DCC_CFG_PORT_CONFIG_MTU_CAP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_pportdata*)* @set_send_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_send_length(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca %struct.hfi1_pportdata*, align 8
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %2, align 8
  %12 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %13 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %12, i32 0, i32 1
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  store %struct.hfi1_devdata* %14, %struct.hfi1_devdata** %3, align 8
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %16 = call i32 @lrh_max_header_bytes(%struct.hfi1_devdata* %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %18 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 15
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 15
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %28, %29
  %31 = ashr i32 %30, 2
  %32 = load i32, i32* @SEND_LEN_CHECK1_LEN_VL15_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @SEND_LEN_CHECK1_LEN_VL15_SHIFT, align 4
  %35 = shl i32 %33, %34
  store i32 %35, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %108, %1
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %39 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %111

42:                                               ; preds = %36
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %44 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %55 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %53, %42
  %63 = load i32, i32* %9, align 4
  %64 = icmp sle i32 %63, 3
  br i1 %64, label %65, label %86

65:                                               ; preds = %62
  %66 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %67 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %73, %74
  %76 = ashr i32 %75, 2
  %77 = load i32, i32* @SEND_LEN_CHECK0_LEN_VL0_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* %9, align 4
  %80 = srem i32 %79, 4
  %81 = load i32, i32* @SEND_LEN_CHECK0_LEN_VL1_SHIFT, align 4
  %82 = mul nsw i32 %80, %81
  %83 = shl i32 %78, %82
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %107

86:                                               ; preds = %62
  %87 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %88 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %94, %95
  %97 = ashr i32 %96, 2
  %98 = load i32, i32* @SEND_LEN_CHECK1_LEN_VL4_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* %9, align 4
  %101 = srem i32 %100, 4
  %102 = load i32, i32* @SEND_LEN_CHECK1_LEN_VL5_SHIFT, align 4
  %103 = mul nsw i32 %101, %102
  %104 = shl i32 %99, %103
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %86, %65
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %36

111:                                              ; preds = %36
  %112 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %113 = load i32, i32* @SEND_LEN_CHECK0, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @write_csr(%struct.hfi1_devdata* %112, i32 %113, i32 %114)
  %116 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %117 = load i32, i32* @SEND_LEN_CHECK1, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @write_csr(%struct.hfi1_devdata* %116, i32 %117, i32 %118)
  store i32 0, i32* %9, align 4
  br label %120

120:                                              ; preds = %176, %111
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %123 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %179

126:                                              ; preds = %120
  %127 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %128 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @sc_percent_to_threshold(i32 %134, i32 50)
  %136 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %137 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %145 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %153 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %152, i32 0, i32 1
  %154 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %154, i64 0
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @sc_mtu_to_threshold(i32 %143, i32 %151, i32 %158)
  %160 = call i32 @min(i32 %135, i32 %159)
  store i32 %160, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %161

161:                                              ; preds = %172, %126
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @INIT_SC_PER_VL, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %161
  %166 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @pio_select_send_context_vl(%struct.hfi1_devdata* %166, i32 %167, i32 %168)
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @sc_set_cr_threshold(i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %165
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %161

175:                                              ; preds = %161
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %120

179:                                              ; preds = %120
  %180 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %181 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %180, i32 0, i32 0
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 15
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @sc_percent_to_threshold(i32 %185, i32 50)
  %187 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %188 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %187, i32 0, i32 0
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i64 15
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %194 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 15
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %200 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %199, i32 0, i32 1
  %201 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %201, i64 0
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @sc_mtu_to_threshold(i32 %192, i32 %198, i32 %205)
  %207 = call i32 @min(i32 %186, i32 %206)
  store i32 %207, i32* %11, align 4
  %208 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %209 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %208, i32 0, i32 0
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 15
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %11, align 4
  %215 = call i32 @sc_set_cr_threshold(i32 %213, i32 %214)
  %216 = load i32, i32* %6, align 4
  %217 = icmp eq i32 %216, 10240
  br i1 %217, label %218, label %220

218:                                              ; preds = %179
  %219 = load i32, i32* @DCC_CFG_PORT_MTU_CAP_10240, align 4
  br label %225

220:                                              ; preds = %179
  %221 = load i32, i32* %6, align 4
  %222 = ashr i32 %221, 8
  %223 = call i32 @ilog2(i32 %222)
  %224 = add nsw i32 %223, 1
  br label %225

225:                                              ; preds = %220, %218
  %226 = phi i32 [ %219, %218 ], [ %224, %220 ]
  store i32 %226, i32* %5, align 4
  %227 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %228 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %227, i32 0, i32 1
  %229 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %228, align 8
  %230 = load i32, i32* @DCC_CFG_PORT_CONFIG, align 4
  %231 = call i32 @read_csr(%struct.hfi1_devdata* %229, i32 %230)
  store i32 %231, i32* %7, align 4
  %232 = load i32, i32* @DCC_CFG_PORT_CONFIG_MTU_CAP_SMASK, align 4
  %233 = xor i32 %232, -1
  %234 = load i32, i32* %7, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* %5, align 4
  %237 = load i32, i32* @DCC_CFG_PORT_CONFIG_MTU_CAP_MASK, align 4
  %238 = and i32 %236, %237
  %239 = load i32, i32* @DCC_CFG_PORT_CONFIG_MTU_CAP_SHIFT, align 4
  %240 = shl i32 %238, %239
  %241 = load i32, i32* %7, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %7, align 4
  %243 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %2, align 8
  %244 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %243, i32 0, i32 1
  %245 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %244, align 8
  %246 = load i32, i32* @DCC_CFG_PORT_CONFIG, align 4
  %247 = load i32, i32* %7, align 4
  %248 = call i32 @write_csr(%struct.hfi1_devdata* %245, i32 %246, i32 %247)
  ret void
}

declare dso_local i32 @lrh_max_header_bytes(%struct.hfi1_devdata*) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sc_percent_to_threshold(i32, i32) #1

declare dso_local i32 @sc_mtu_to_threshold(i32, i32, i32) #1

declare dso_local i32 @sc_set_cr_threshold(i32, i32) #1

declare dso_local i32 @pio_select_send_context_vl(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
