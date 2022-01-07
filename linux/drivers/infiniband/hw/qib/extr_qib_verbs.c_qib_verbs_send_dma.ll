; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_verbs_send_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_verbs_send_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32*, i32, i32, i32, %struct.TYPE_5__, %struct.qib_qp_priv* }
%struct.TYPE_5__ = type { i32 }
%struct.qib_qp_priv = type { %struct.qib_verbs_txreq* }
%struct.qib_verbs_txreq = type { i64, i64, i32, %struct.TYPE_7__, %struct.qib_pio_header*, i32*, i32, %struct.rvt_qp*, %struct.rvt_sge_state* }
%struct.TYPE_7__ = type { i32, i32, i64, i32 }
%struct.qib_pio_header = type { i32, i8** }
%struct.ib_header = type { i32* }
%struct.rvt_sge_state = type { i32 }
%struct.qib_ibdev = type { i64, %struct.qib_pio_header* }
%struct.qib_devdata = type { i64 (%struct.qib_pportdata*, i64, i32, i32)*, i32, i64, %struct.TYPE_6__* }
%struct.qib_pportdata = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.qib_ibport = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@sdma_complete = common dso_local global i32 0, align 4
@QIB_HAS_SDMA_TIMEOUT = common dso_local global i32 0, align 4
@QIB_SDMA_TXREQ_F_HEADTOHOST = common dso_local global i32 0, align 4
@QIB_SDMA_TXREQ_F_INTREQ = common dso_local global i32 0, align 4
@QIB_SDMA_TXREQ_F_USELARGEBUF = common dso_local global i32 0, align 4
@QIB_SDMA_TXREQ_F_FREEDESC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@QIB_SDMA_TXREQ_F_FREEBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_qp*, %struct.ib_header*, i64, %struct.rvt_sge_state*, i64, i64, i64)* @qib_verbs_send_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_verbs_send_dma(%struct.rvt_qp* %0, %struct.ib_header* %1, i64 %2, %struct.rvt_sge_state* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.rvt_qp*, align 8
  %9 = alloca %struct.ib_header*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rvt_sge_state*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.qib_qp_priv*, align 8
  %16 = alloca %struct.qib_ibdev*, align 8
  %17 = alloca %struct.qib_devdata*, align 8
  %18 = alloca %struct.qib_ibport*, align 8
  %19 = alloca %struct.qib_pportdata*, align 8
  %20 = alloca %struct.qib_verbs_txreq*, align 8
  %21 = alloca %struct.qib_pio_header*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %8, align 8
  store %struct.ib_header* %1, %struct.ib_header** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.rvt_sge_state* %3, %struct.rvt_sge_state** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %25 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %26 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %25, i32 0, i32 5
  %27 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %26, align 8
  store %struct.qib_qp_priv* %27, %struct.qib_qp_priv** %15, align 8
  %28 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %29 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.qib_ibdev* @to_idev(i32 %31)
  store %struct.qib_ibdev* %32, %struct.qib_ibdev** %16, align 8
  %33 = load %struct.qib_ibdev*, %struct.qib_ibdev** %16, align 8
  %34 = call %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev* %33)
  store %struct.qib_devdata* %34, %struct.qib_devdata** %17, align 8
  %35 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %36 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %40 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.qib_ibport* @to_iport(i32 %38, i32 %41)
  store %struct.qib_ibport* %42, %struct.qib_ibport** %18, align 8
  %43 = load %struct.qib_ibport*, %struct.qib_ibport** %18, align 8
  %44 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %43)
  store %struct.qib_pportdata* %44, %struct.qib_pportdata** %19, align 8
  %45 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %15, align 8
  %46 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %45, i32 0, i32 0
  %47 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %46, align 8
  store %struct.qib_verbs_txreq* %47, %struct.qib_verbs_txreq** %20, align 8
  %48 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %49 = icmp ne %struct.qib_verbs_txreq* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %7
  %51 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %15, align 8
  %52 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %51, i32 0, i32 0
  store %struct.qib_verbs_txreq* null, %struct.qib_verbs_txreq** %52, align 8
  %53 = load %struct.qib_pportdata*, %struct.qib_pportdata** %19, align 8
  %54 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %55 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %54, i32 0, i32 8
  %56 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %55, align 8
  %57 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %58 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %61 = call i32 @qib_sdma_verbs_send(%struct.qib_pportdata* %53, %struct.rvt_sge_state* %56, i64 %59, %struct.qib_verbs_txreq* %60)
  store i32 %61, i32* %24, align 4
  br label %316

62:                                               ; preds = %7
  %63 = load %struct.qib_ibdev*, %struct.qib_ibdev** %16, align 8
  %64 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %65 = call %struct.qib_verbs_txreq* @get_txreq(%struct.qib_ibdev* %63, %struct.rvt_qp* %64)
  store %struct.qib_verbs_txreq* %65, %struct.qib_verbs_txreq** %20, align 8
  %66 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %67 = call i64 @IS_ERR(%struct.qib_verbs_txreq* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %318

70:                                               ; preds = %62
  %71 = load %struct.qib_devdata*, %struct.qib_devdata** %17, align 8
  %72 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %71, i32 0, i32 0
  %73 = load i64 (%struct.qib_pportdata*, i64, i32, i32)*, i64 (%struct.qib_pportdata*, i64, i32, i32)** %72, align 8
  %74 = load %struct.qib_pportdata*, %struct.qib_pportdata** %19, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %77 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ib_header*, %struct.ib_header** %9, align 8
  %80 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be16_to_cpu(i32 %83)
  %85 = ashr i32 %84, 12
  %86 = call i64 %73(%struct.qib_pportdata* %74, i64 %75, i32 %78, i32 %85)
  store i64 %86, i64* %22, align 8
  %87 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %88 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %89 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %88, i32 0, i32 7
  store %struct.rvt_qp* %87, %struct.rvt_qp** %89, align 8
  %90 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %91 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %94 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 8
  %95 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %96 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %99 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %98, i32 0, i32 5
  store i32* %97, i32** %99, align 8
  %100 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %101 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %70
  %105 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %106 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %105, i32 0, i32 0
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %104, %70
  %108 = load i32, i32* @sdma_complete, align 4
  %109 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %110 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 8
  %112 = load %struct.qib_devdata*, %struct.qib_devdata** %17, align 8
  %113 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @QIB_HAS_SDMA_TIMEOUT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %107
  %119 = load i32, i32* @QIB_SDMA_TXREQ_F_HEADTOHOST, align 4
  %120 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %121 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  br label %128

123:                                              ; preds = %107
  %124 = load i32, i32* @QIB_SDMA_TXREQ_F_INTREQ, align 4
  %125 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %126 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %123, %118
  %129 = load i64, i64* %13, align 8
  %130 = add nsw i64 %129, 1
  %131 = load %struct.qib_devdata*, %struct.qib_devdata** %17, align 8
  %132 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %130, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = load i32, i32* @QIB_SDMA_TXREQ_F_USELARGEBUF, align 4
  %137 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %138 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %136
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %135, %128
  %143 = load i64, i64* %12, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %11, align 8
  %147 = load i64, i64* %12, align 8
  %148 = call i64 @qib_count_sge(%struct.rvt_sge_state* %146, i64 %147)
  store i64 %148, i64* %23, align 8
  %149 = load i64, i64* %23, align 8
  %150 = load %struct.qib_pportdata*, %struct.qib_pportdata** %19, align 8
  %151 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp sge i64 %149, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  store i64 0, i64* %23, align 8
  br label %155

155:                                              ; preds = %154, %145
  br label %157

156:                                              ; preds = %142
  store i64 1, i64* %23, align 8
  br label %157

157:                                              ; preds = %156, %155
  %158 = load i64, i64* %23, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %218

160:                                              ; preds = %157
  %161 = load %struct.qib_ibdev*, %struct.qib_ibdev** %16, align 8
  %162 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %161, i32 0, i32 1
  %163 = load %struct.qib_pio_header*, %struct.qib_pio_header** %162, align 8
  %164 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %165 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %163, i64 %166
  store %struct.qib_pio_header* %167, %struct.qib_pio_header** %21, align 8
  %168 = load i64, i64* %13, align 8
  %169 = call i8* @cpu_to_le32(i64 %168)
  %170 = load %struct.qib_pio_header*, %struct.qib_pio_header** %21, align 8
  %171 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %170, i32 0, i32 1
  %172 = load i8**, i8*** %171, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 0
  store i8* %169, i8** %173, align 8
  %174 = load i64, i64* %22, align 8
  %175 = call i8* @cpu_to_le32(i64 %174)
  %176 = load %struct.qib_pio_header*, %struct.qib_pio_header** %21, align 8
  %177 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %176, i32 0, i32 1
  %178 = load i8**, i8*** %177, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 1
  store i8* %175, i8** %179, align 8
  %180 = load %struct.qib_pio_header*, %struct.qib_pio_header** %21, align 8
  %181 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %180, i32 0, i32 0
  %182 = load %struct.ib_header*, %struct.ib_header** %9, align 8
  %183 = load i64, i64* %10, align 8
  %184 = shl i64 %183, 2
  %185 = call i32 @memcpy(i32* %181, %struct.ib_header* %182, i64 %184)
  %186 = load i32, i32* @QIB_SDMA_TXREQ_F_FREEDESC, align 4
  %187 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %188 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %186
  store i32 %191, i32* %189, align 4
  %192 = load i64, i64* %23, align 8
  %193 = trunc i64 %192 to i32
  %194 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %195 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  store i32 %193, i32* %196, align 8
  %197 = load %struct.qib_ibdev*, %struct.qib_ibdev** %16, align 8
  %198 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %201 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = mul i64 %202, 16
  %204 = add i64 %199, %203
  %205 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %206 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 2
  store i64 %204, i64* %207, align 8
  %208 = load i64, i64* %10, align 8
  %209 = add nsw i64 %208, 2
  %210 = trunc i64 %209 to i32
  %211 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %212 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load %struct.qib_pportdata*, %struct.qib_pportdata** %19, align 8
  %214 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %11, align 8
  %215 = load i64, i64* %14, align 8
  %216 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %217 = call i32 @qib_sdma_verbs_send(%struct.qib_pportdata* %213, %struct.rvt_sge_state* %214, i64 %215, %struct.qib_verbs_txreq* %216)
  store i32 %217, i32* %24, align 4
  br label %316

218:                                              ; preds = %157
  %219 = load i64, i64* %13, align 8
  %220 = add nsw i64 %219, 1
  %221 = trunc i64 %220 to i32
  %222 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %223 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  %224 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %225 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = shl i32 %226, 2
  %228 = load i32, i32* @GFP_ATOMIC, align 4
  %229 = call %struct.qib_pio_header* @kmalloc(i32 %227, i32 %228)
  store %struct.qib_pio_header* %229, %struct.qib_pio_header** %21, align 8
  %230 = load %struct.qib_pio_header*, %struct.qib_pio_header** %21, align 8
  %231 = icmp ne %struct.qib_pio_header* %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %218
  br label %304

233:                                              ; preds = %218
  %234 = load i64, i64* %13, align 8
  %235 = call i8* @cpu_to_le32(i64 %234)
  %236 = load %struct.qib_pio_header*, %struct.qib_pio_header** %21, align 8
  %237 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %236, i32 0, i32 1
  %238 = load i8**, i8*** %237, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i64 0
  store i8* %235, i8** %239, align 8
  %240 = load i64, i64* %22, align 8
  %241 = call i8* @cpu_to_le32(i64 %240)
  %242 = load %struct.qib_pio_header*, %struct.qib_pio_header** %21, align 8
  %243 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %242, i32 0, i32 1
  %244 = load i8**, i8*** %243, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 1
  store i8* %241, i8** %245, align 8
  %246 = load %struct.qib_pio_header*, %struct.qib_pio_header** %21, align 8
  %247 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %246, i32 0, i32 0
  %248 = load %struct.ib_header*, %struct.ib_header** %9, align 8
  %249 = load i64, i64* %10, align 8
  %250 = shl i64 %249, 2
  %251 = call i32 @memcpy(i32* %247, %struct.ib_header* %248, i64 %250)
  %252 = load %struct.qib_pio_header*, %struct.qib_pio_header** %21, align 8
  %253 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %252, i32 0, i32 0
  %254 = bitcast i32* %253 to i64*
  %255 = load i64, i64* %10, align 8
  %256 = getelementptr inbounds i64, i64* %254, i64 %255
  %257 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %11, align 8
  %258 = load i64, i64* %12, align 8
  %259 = call i32 @qib_copy_from_sge(i64* %256, %struct.rvt_sge_state* %257, i64 %258)
  %260 = load %struct.qib_devdata*, %struct.qib_devdata** %17, align 8
  %261 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %260, i32 0, i32 3
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load %struct.qib_pio_header*, %struct.qib_pio_header** %21, align 8
  %265 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %266 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = shl i32 %267, 2
  %269 = load i32, i32* @DMA_TO_DEVICE, align 4
  %270 = call i64 @dma_map_single(i32* %263, %struct.qib_pio_header* %264, i32 %268, i32 %269)
  %271 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %272 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 2
  store i64 %270, i64* %273, align 8
  %274 = load %struct.qib_devdata*, %struct.qib_devdata** %17, align 8
  %275 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %274, i32 0, i32 3
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %279 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = call i64 @dma_mapping_error(i32* %277, i64 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %233
  br label %301

285:                                              ; preds = %233
  %286 = load %struct.qib_pio_header*, %struct.qib_pio_header** %21, align 8
  %287 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %288 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %287, i32 0, i32 4
  store %struct.qib_pio_header* %286, %struct.qib_pio_header** %288, align 8
  %289 = load i32, i32* @QIB_SDMA_TXREQ_F_FREEBUF, align 4
  %290 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %291 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %289
  store i32 %294, i32* %292, align 4
  %295 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %296 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 0
  store i32 1, i32* %297, align 8
  %298 = load %struct.qib_pportdata*, %struct.qib_pportdata** %19, align 8
  %299 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %300 = call i32 @qib_sdma_verbs_send(%struct.qib_pportdata* %298, %struct.rvt_sge_state* null, i64 0, %struct.qib_verbs_txreq* %299)
  store i32 %300, i32* %24, align 4
  br label %310

301:                                              ; preds = %284
  %302 = load %struct.qib_pio_header*, %struct.qib_pio_header** %21, align 8
  %303 = call i32 @kfree(%struct.qib_pio_header* %302)
  br label %304

304:                                              ; preds = %301, %232
  %305 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %306 = call i32 @qib_put_txreq(%struct.qib_verbs_txreq* %305)
  %307 = load %struct.qib_ibdev*, %struct.qib_ibdev** %16, align 8
  %308 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %309 = call i32 @wait_kmem(%struct.qib_ibdev* %307, %struct.rvt_qp* %308)
  store i32 %309, i32* %24, align 4
  br label %310

310:                                              ; preds = %304, %285
  %311 = load %struct.qib_ibport*, %struct.qib_ibport** %18, align 8
  %312 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %313, align 4
  br label %316

316:                                              ; preds = %318, %310, %160, %50
  %317 = load i32, i32* %24, align 4
  ret i32 %317

318:                                              ; preds = %69
  %319 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %20, align 8
  %320 = call i32 @PTR_ERR(%struct.qib_verbs_txreq* %319)
  store i32 %320, i32* %24, align 4
  br label %316
}

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @qib_sdma_verbs_send(%struct.qib_pportdata*, %struct.rvt_sge_state*, i64, %struct.qib_verbs_txreq*) #1

declare dso_local %struct.qib_verbs_txreq* @get_txreq(%struct.qib_ibdev*, %struct.rvt_qp*) #1

declare dso_local i64 @IS_ERR(%struct.qib_verbs_txreq*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @qib_count_sge(%struct.rvt_sge_state*, i64) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i32*, %struct.ib_header*, i64) #1

declare dso_local %struct.qib_pio_header* @kmalloc(i32, i32) #1

declare dso_local i32 @qib_copy_from_sge(i64*, %struct.rvt_sge_state*, i64) #1

declare dso_local i64 @dma_map_single(i32*, %struct.qib_pio_header*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @kfree(%struct.qib_pio_header*) #1

declare dso_local i32 @qib_put_txreq(%struct.qib_verbs_txreq*) #1

declare dso_local i32 @wait_kmem(%struct.qib_ibdev*, %struct.rvt_qp*) #1

declare dso_local i32 @PTR_ERR(%struct.qib_verbs_txreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
