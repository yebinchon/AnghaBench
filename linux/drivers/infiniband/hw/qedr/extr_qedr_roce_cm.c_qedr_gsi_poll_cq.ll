; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_gsi_poll_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_gsi_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32, i32, i32, i8*, i32, i32, %struct.TYPE_9__*, i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.qedr_dev = type { %struct.qedr_qp* }
%struct.qedr_qp = type { %struct.TYPE_9__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.qedr_cq = type { i32 }

@IB_WC_RECV = common dso_local global i32 0, align 4
@IB_WC_GENERAL_ERR = common dso_local global i8* null, align 8
@IB_WC_SUCCESS = common dso_local global i8* null, align 8
@IB_WC_GRH = common dso_local global i32 0, align 4
@IB_WC_IP_CSUM_OK = common dso_local global i32 0, align 4
@IB_WC_WITH_SMAC = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@IB_WC_WITH_VLAN = common dso_local global i32 0, align 4
@VLAN_PRIO_MASK = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@IB_WC_SEND = common dso_local global i32 0, align 4
@QEDR_MSG_GSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [129 x i8] c"gsi poll_cq: requested entries=%d, actual=%d, qp->rq.cons=%d, qp->rq.gsi_cons=%x, qp->sq.cons=%d, qp->sq.gsi_cons=%d, qp_num=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_gsi_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca %struct.qedr_dev*, align 8
  %8 = alloca %struct.qedr_cq*, align 8
  %9 = alloca %struct.qedr_qp*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  %13 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %14 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.qedr_dev* @get_qedr_dev(i32 %15)
  store %struct.qedr_dev* %16, %struct.qedr_dev** %7, align 8
  %17 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %18 = call %struct.qedr_cq* @get_qedr_cq(%struct.ib_cq* %17)
  store %struct.qedr_cq* %18, %struct.qedr_cq** %8, align 8
  %19 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %20 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %19, i32 0, i32 0
  %21 = load %struct.qedr_qp*, %struct.qedr_qp** %20, align 8
  store %struct.qedr_qp* %21, %struct.qedr_qp** %9, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.qedr_cq*, %struct.qedr_cq** %8, align 8
  %23 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %22, i32 0, i32 0
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  br label %26

26:                                               ; preds = %204, %3
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %32 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %36 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %34, %38
  br label %40

40:                                               ; preds = %30, %26
  %41 = phi i1 [ false, %26 ], [ %39, %30 ]
  br i1 %41, label %42, label %210

42:                                               ; preds = %40
  %43 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %43, i64 %45
  %47 = call i32 @memset(%struct.ib_wc* %46, i32 0, i32 56)
  %48 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %49 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %48, i32 0, i32 0
  %50 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %50, i64 %52
  %54 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %53, i32 0, i32 6
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %54, align 8
  %55 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %56 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %55, i32 0, i32 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %59 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %65, i64 %67
  %69 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %68, i32 0, i32 5
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* @IB_WC_RECV, align 4
  %71 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %71, i64 %73
  %75 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %74, i32 0, i32 4
  store i32 %70, i32* %75, align 8
  %76 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %76, i64 %78
  %80 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %79, i32 0, i32 9
  store i64 0, i64* %80, align 8
  %81 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %82 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %81, i32 0, i32 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %85 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %42
  %93 = load i8*, i8** @IB_WC_GENERAL_ERR, align 8
  br label %96

94:                                               ; preds = %42
  %95 = load i8*, i8** @IB_WC_SUCCESS, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i8* [ %93, %92 ], [ %95, %94 ]
  %98 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %98, i64 %100
  %102 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %101, i32 0, i32 3
  store i8* %97, i8** %102, align 8
  %103 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %104 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %103, i32 0, i32 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %107 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %116, i64 %118
  %120 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %119, i32 0, i32 8
  store i32 %115, i32* %120, align 4
  %121 = load i32, i32* @IB_WC_GRH, align 4
  %122 = load i32, i32* @IB_WC_IP_CSUM_OK, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %124, i64 %126
  %128 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %123
  store i32 %130, i32* %128, align 8
  %131 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %131, i64 %133
  %135 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %138 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %137, i32 0, i32 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %141 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ether_addr_copy(i32 %136, i32 %146)
  %148 = load i32, i32* @IB_WC_WITH_SMAC, align 4
  %149 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %149, i64 %151
  %153 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %148
  store i32 %155, i32* %153, align 8
  %156 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %157 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %156, i32 0, i32 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %160 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @VLAN_VID_MASK, align 4
  %167 = and i32 %165, %166
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %204

170:                                              ; preds = %96
  %171 = load i32, i32* @IB_WC_WITH_VLAN, align 4
  %172 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %172, i64 %174
  %176 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %171
  store i32 %178, i32* %176, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %180, i64 %182
  %184 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %183, i32 0, i32 1
  store i32 %179, i32* %184, align 4
  %185 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %186 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %185, i32 0, i32 4
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %189 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @VLAN_PRIO_MASK, align 4
  %196 = and i32 %194, %195
  %197 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %198 = ashr i32 %196, %197
  %199 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %199, i64 %201
  %203 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %202, i32 0, i32 2
  store i32 %198, i32* %203, align 8
  br label %204

204:                                              ; preds = %170, %96
  %205 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %206 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %205, i32 0, i32 2
  %207 = call i32 @qedr_inc_sw_cons(%struct.TYPE_10__* %206)
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %12, align 4
  br label %26

210:                                              ; preds = %40
  br label %211

211:                                              ; preds = %227, %210
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %5, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %225

215:                                              ; preds = %211
  %216 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %217 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %221 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %219, %223
  br label %225

225:                                              ; preds = %215, %211
  %226 = phi i1 [ false, %211 ], [ %224, %215 ]
  br i1 %226, label %227, label %272

227:                                              ; preds = %225
  %228 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %228, i64 %230
  %232 = call i32 @memset(%struct.ib_wc* %231, i32 0, i32 56)
  %233 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %234 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %233, i32 0, i32 0
  %235 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %235, i64 %237
  %239 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %238, i32 0, i32 6
  store %struct.TYPE_9__* %234, %struct.TYPE_9__** %239, align 8
  %240 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %241 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %240, i32 0, i32 3
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %244 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %250, i64 %252
  %254 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %253, i32 0, i32 5
  store i32 %249, i32* %254, align 4
  %255 = load i32, i32* @IB_WC_SEND, align 4
  %256 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %257 = load i32, i32* %12, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %256, i64 %258
  %260 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %259, i32 0, i32 4
  store i32 %255, i32* %260, align 8
  %261 = load i8*, i8** @IB_WC_SUCCESS, align 8
  %262 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %263 = load i32, i32* %12, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %262, i64 %264
  %266 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %265, i32 0, i32 3
  store i8* %261, i8** %266, align 8
  %267 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %268 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %267, i32 0, i32 1
  %269 = call i32 @qedr_inc_sw_cons(%struct.TYPE_10__* %268)
  %270 = load i32, i32* %12, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %12, align 4
  br label %211

272:                                              ; preds = %225
  %273 = load %struct.qedr_cq*, %struct.qedr_cq** %8, align 8
  %274 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %273, i32 0, i32 0
  %275 = load i64, i64* %10, align 8
  %276 = call i32 @spin_unlock_irqrestore(i32* %274, i64 %275)
  %277 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %278 = load i32, i32* @QEDR_MSG_GSI, align 4
  %279 = load i32, i32* %5, align 4
  %280 = load i32, i32* %12, align 4
  %281 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %282 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %286 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %290 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %294 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.qedr_qp*, %struct.qedr_qp** %9, align 8
  %298 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @DP_DEBUG(%struct.qedr_dev* %277, i32 %278, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str, i64 0, i64 0), i32 %279, i32 %280, i64 %284, i64 %288, i64 %292, i64 %296, i32 %300)
  %302 = load i32, i32* %12, align 4
  ret i32 %302
}

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #1

declare dso_local %struct.qedr_cq* @get_qedr_cq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @qedr_inc_sw_cons(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i32, i32, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
