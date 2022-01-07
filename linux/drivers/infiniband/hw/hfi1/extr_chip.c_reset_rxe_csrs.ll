; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_reset_rxe_csrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_reset_rxe_csrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@RCV_CTRL = common dso_local global i64 0, align 8
@RCV_BTH_QP = common dso_local global i64 0, align 8
@RCV_MULTICAST = common dso_local global i64 0, align 8
@RCV_BYPASS = common dso_local global i64 0, align 8
@RCV_VL15 = common dso_local global i64 0, align 8
@RCV_ERR_INFO = common dso_local global i64 0, align 8
@RCV_ERR_INFO_RCV_EXCESS_BUFFER_OVERRUN_SMASK = common dso_local global i64 0, align 8
@RCV_ERR_MASK = common dso_local global i64 0, align 8
@RCV_ERR_CLEAR = common dso_local global i64 0, align 8
@RCV_QP_MAP_TABLE = common dso_local global i64 0, align 8
@RCV_PARTITION_KEY = common dso_local global i64 0, align 8
@RXE_NUM_32_BIT_COUNTERS = common dso_local global i32 0, align 4
@RCV_COUNTER_ARRAY32 = common dso_local global i64 0, align 8
@RXE_NUM_64_BIT_COUNTERS = common dso_local global i32 0, align 4
@RCV_COUNTER_ARRAY64 = common dso_local global i64 0, align 8
@RXE_NUM_RSM_INSTANCES = common dso_local global i32 0, align 4
@RCV_RSM_MAP_TABLE = common dso_local global i64 0, align 8
@RCV_CTXT_CTRL = common dso_local global i32 0, align 4
@RCV_EGR_CTRL = common dso_local global i32 0, align 4
@RCV_TID_CTRL = common dso_local global i32 0, align 4
@RCV_KEY_CTRL = common dso_local global i32 0, align 4
@RCV_HDR_ADDR = common dso_local global i32 0, align 4
@RCV_HDR_CNT = common dso_local global i32 0, align 4
@RCV_HDR_ENT_SIZE = common dso_local global i32 0, align 4
@RCV_HDR_SIZE = common dso_local global i32 0, align 4
@RCV_HDR_TAIL_ADDR = common dso_local global i32 0, align 4
@RCV_AVAIL_TIME_OUT = common dso_local global i32 0, align 4
@RCV_HDR_OVFL_CNT = common dso_local global i32 0, align 4
@RCV_HDR_HEAD = common dso_local global i64 0, align 8
@RCV_EGR_INDEX_HEAD = common dso_local global i64 0, align 8
@RXE_NUM_TID_FLOWS = common dso_local global i32 0, align 4
@RCV_TID_FLOW_TABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @reset_rxe_csrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_rxe_csrs(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %6 = load i64, i64* @RCV_CTRL, align 8
  %7 = call i32 @write_csr(%struct.hfi1_devdata* %5, i64 %6, i64 0)
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %9 = call i32 @init_rbufs(%struct.hfi1_devdata* %8)
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %11 = load i64, i64* @RCV_BTH_QP, align 8
  %12 = call i32 @write_csr(%struct.hfi1_devdata* %10, i64 %11, i64 0)
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %14 = load i64, i64* @RCV_MULTICAST, align 8
  %15 = call i32 @write_csr(%struct.hfi1_devdata* %13, i64 %14, i64 0)
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %17 = load i64, i64* @RCV_BYPASS, align 8
  %18 = call i32 @write_csr(%struct.hfi1_devdata* %16, i64 %17, i64 0)
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %20 = load i64, i64* @RCV_VL15, align 8
  %21 = call i32 @write_csr(%struct.hfi1_devdata* %19, i64 %20, i64 0)
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %23 = load i64, i64* @RCV_ERR_INFO, align 8
  %24 = load i64, i64* @RCV_ERR_INFO_RCV_EXCESS_BUFFER_OVERRUN_SMASK, align 8
  %25 = call i32 @write_csr(%struct.hfi1_devdata* %22, i64 %23, i64 %24)
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %27 = load i64, i64* @RCV_ERR_MASK, align 8
  %28 = call i32 @write_csr(%struct.hfi1_devdata* %26, i64 %27, i64 0)
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %30 = load i64, i64* @RCV_ERR_CLEAR, align 8
  %31 = call i32 @write_csr(%struct.hfi1_devdata* %29, i64 %30, i64 -1)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %43, %1
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 32
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %37 = load i64, i64* @RCV_QP_MAP_TABLE, align 8
  %38 = load i32, i32* %3, align 4
  %39 = mul nsw i32 8, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = call i32 @write_csr(%struct.hfi1_devdata* %36, i64 %41, i64 0)
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %32

46:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %58, %46
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %52 = load i64, i64* @RCV_PARTITION_KEY, align 8
  %53 = load i32, i32* %3, align 4
  %54 = mul nsw i32 8, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %52, %55
  %57 = call i32 @write_csr(%struct.hfi1_devdata* %51, i64 %56, i64 0)
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %47

61:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %74, %61
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @RXE_NUM_32_BIT_COUNTERS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %68 = load i64, i64* @RCV_COUNTER_ARRAY32, align 8
  %69 = load i32, i32* %3, align 4
  %70 = mul nsw i32 8, %69
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = call i32 @write_csr(%struct.hfi1_devdata* %67, i64 %72, i64 0)
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %62

77:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %90, %77
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @RXE_NUM_64_BIT_COUNTERS, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %84 = load i64, i64* @RCV_COUNTER_ARRAY64, align 8
  %85 = load i32, i32* %3, align 4
  %86 = mul nsw i32 8, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  %89 = call i32 @write_csr(%struct.hfi1_devdata* %83, i64 %88, i64 0)
  br label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %78

93:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %102, %93
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @RXE_NUM_RSM_INSTANCES, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @clear_rsm_rule(%struct.hfi1_devdata* %99, i32 %100)
  br label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %94

105:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %117, %105
  %107 = load i32, i32* %3, align 4
  %108 = icmp slt i32 %107, 32
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %111 = load i64, i64* @RCV_RSM_MAP_TABLE, align 8
  %112 = load i32, i32* %3, align 4
  %113 = mul nsw i32 8, %112
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %111, %114
  %116 = call i32 @write_csr(%struct.hfi1_devdata* %110, i64 %115, i64 0)
  br label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  br label %106

120:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %196, %120
  %122 = load i32, i32* %3, align 4
  %123 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %124 = call i32 @chip_rcv_contexts(%struct.hfi1_devdata* %123)
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %199

126:                                              ; preds = %121
  %127 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @RCV_CTXT_CTRL, align 4
  %130 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %127, i32 %128, i32 %129, i32 0)
  %131 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @RCV_EGR_CTRL, align 4
  %134 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %131, i32 %132, i32 %133, i32 0)
  %135 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @RCV_TID_CTRL, align 4
  %138 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %135, i32 %136, i32 %137, i32 0)
  %139 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @RCV_KEY_CTRL, align 4
  %142 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %139, i32 %140, i32 %141, i32 0)
  %143 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* @RCV_HDR_ADDR, align 4
  %146 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %143, i32 %144, i32 %145, i32 0)
  %147 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @RCV_HDR_CNT, align 4
  %150 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %147, i32 %148, i32 %149, i32 0)
  %151 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @RCV_HDR_ENT_SIZE, align 4
  %154 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %151, i32 %152, i32 %153, i32 0)
  %155 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @RCV_HDR_SIZE, align 4
  %158 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %155, i32 %156, i32 %157, i32 0)
  %159 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* @RCV_HDR_TAIL_ADDR, align 4
  %162 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %159, i32 %160, i32 %161, i32 0)
  %163 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* @RCV_AVAIL_TIME_OUT, align 4
  %166 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %163, i32 %164, i32 %165, i32 0)
  %167 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %168 = load i32, i32* %3, align 4
  %169 = load i32, i32* @RCV_HDR_OVFL_CNT, align 4
  %170 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %167, i32 %168, i32 %169, i32 0)
  %171 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %172 = load i32, i32* %3, align 4
  %173 = load i64, i64* @RCV_HDR_HEAD, align 8
  %174 = call i32 @write_uctxt_csr(%struct.hfi1_devdata* %171, i32 %172, i64 %173, i32 0)
  %175 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %176 = load i32, i32* %3, align 4
  %177 = load i64, i64* @RCV_EGR_INDEX_HEAD, align 8
  %178 = call i32 @write_uctxt_csr(%struct.hfi1_devdata* %175, i32 %176, i64 %177, i32 0)
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %192, %126
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* @RXE_NUM_TID_FLOWS, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %195

183:                                              ; preds = %179
  %184 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %185 = load i32, i32* %3, align 4
  %186 = load i64, i64* @RCV_TID_FLOW_TABLE, align 8
  %187 = load i32, i32* %4, align 4
  %188 = mul nsw i32 8, %187
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %186, %189
  %191 = call i32 @write_uctxt_csr(%struct.hfi1_devdata* %184, i32 %185, i64 %190, i32 0)
  br label %192

192:                                              ; preds = %183
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %4, align 4
  br label %179

195:                                              ; preds = %179
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %3, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %3, align 4
  br label %121

199:                                              ; preds = %121
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i64, i64) #1

declare dso_local i32 @init_rbufs(%struct.hfi1_devdata*) #1

declare dso_local i32 @clear_rsm_rule(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @chip_rcv_contexts(%struct.hfi1_devdata*) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i32, i32, i32) #1

declare dso_local i32 @write_uctxt_csr(%struct.hfi1_devdata*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
