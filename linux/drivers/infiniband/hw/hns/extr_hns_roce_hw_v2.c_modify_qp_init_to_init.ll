; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_modify_qp_init_to_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_modify_qp_init_to_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, i32, i32, i32 }
%struct.ib_qp_attr = type { i32 }
%struct.hns_roce_v2_qp_context = type { i32, i32, i32, i32, i32, i32 }
%struct.hns_roce_qp = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@V2_QPC_BYTE_4_TST_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_4_TST_S = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@V2_QPC_BYTE_76_RRE_S = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@V2_QPC_BYTE_76_RWE_S = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@V2_QPC_BYTE_76_ATE_S = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@V2_QPC_BYTE_16_PD_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_16_PD_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_80_RX_CQN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_80_RX_CQN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_252_TX_CQN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_252_TX_CQN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_76_SRQ_EN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_76_SRQN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_76_SRQN_S = common dso_local global i32 0, align 4
@V2_QPC_BYTE_4_SQPN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_4_SQPN_S = common dso_local global i32 0, align 4
@IB_QP_DEST_QPN = common dso_local global i32 0, align 4
@V2_QPC_BYTE_56_DQPN_M = common dso_local global i32 0, align 4
@V2_QPC_BYTE_56_DQPN_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context*)* @modify_qp_init_to_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modify_qp_init_to_init(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.hns_roce_v2_qp_context* %3, %struct.hns_roce_v2_qp_context* %4) #0 {
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %10 = alloca %struct.hns_roce_v2_qp_context*, align 8
  %11 = alloca %struct.hns_roce_qp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.hns_roce_v2_qp_context* %3, %struct.hns_roce_v2_qp_context** %9, align 8
  store %struct.hns_roce_v2_qp_context* %4, %struct.hns_roce_v2_qp_context** %10, align 8
  %12 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %13 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %12)
  store %struct.hns_roce_qp* %13, %struct.hns_roce_qp** %11, align 8
  %14 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %9, align 8
  %15 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @V2_QPC_BYTE_4_TST_M, align 4
  %18 = load i32, i32* @V2_QPC_BYTE_4_TST_S, align 4
  %19 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %20 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @to_hr_qp_type(i32 %22)
  %24 = call i32 @roce_set_field(i32 %16, i32 %17, i32 %18, i32 %23)
  %25 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %26 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @V2_QPC_BYTE_4_TST_M, align 4
  %29 = load i32, i32* @V2_QPC_BYTE_4_TST_S, align 4
  %30 = call i32 @roce_set_field(i32 %27, i32 %28, i32 %29, i32 0)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %93

35:                                               ; preds = %5
  %36 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %9, align 8
  %37 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @V2_QPC_BYTE_76_RRE_S, align 4
  %40 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %41 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @roce_set_bit(i32 %38, i32 %39, i32 %48)
  %50 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %51 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @V2_QPC_BYTE_76_RRE_S, align 4
  %54 = call i32 @roce_set_bit(i32 %52, i32 %53, i32 0)
  %55 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %9, align 8
  %56 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @V2_QPC_BYTE_76_RWE_S, align 4
  %59 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %60 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @roce_set_bit(i32 %57, i32 %58, i32 %67)
  %69 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %70 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @V2_QPC_BYTE_76_RWE_S, align 4
  %73 = call i32 @roce_set_bit(i32 %71, i32 %72, i32 0)
  %74 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %9, align 8
  %75 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @V2_QPC_BYTE_76_ATE_S, align 4
  %78 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %79 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @roce_set_bit(i32 %76, i32 %77, i32 %86)
  %88 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %89 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @V2_QPC_BYTE_76_ATE_S, align 4
  %92 = call i32 @roce_set_bit(i32 %90, i32 %91, i32 0)
  br label %151

93:                                               ; preds = %5
  %94 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %9, align 8
  %95 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @V2_QPC_BYTE_76_RRE_S, align 4
  %98 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %99 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @roce_set_bit(i32 %96, i32 %97, i32 %106)
  %108 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %109 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @V2_QPC_BYTE_76_RRE_S, align 4
  %112 = call i32 @roce_set_bit(i32 %110, i32 %111, i32 0)
  %113 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %9, align 8
  %114 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @V2_QPC_BYTE_76_RWE_S, align 4
  %117 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %118 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i32 @roce_set_bit(i32 %115, i32 %116, i32 %125)
  %127 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %128 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @V2_QPC_BYTE_76_RWE_S, align 4
  %131 = call i32 @roce_set_bit(i32 %129, i32 %130, i32 0)
  %132 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %9, align 8
  %133 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @V2_QPC_BYTE_76_ATE_S, align 4
  %136 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %137 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = call i32 @roce_set_bit(i32 %134, i32 %135, i32 %144)
  %146 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %147 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @V2_QPC_BYTE_76_ATE_S, align 4
  %150 = call i32 @roce_set_bit(i32 %148, i32 %149, i32 0)
  br label %151

151:                                              ; preds = %93, %35
  %152 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %9, align 8
  %153 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @V2_QPC_BYTE_16_PD_M, align 4
  %156 = load i32, i32* @V2_QPC_BYTE_16_PD_S, align 4
  %157 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %158 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = call %struct.TYPE_7__* @to_hr_pd(i32 %159)
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @roce_set_field(i32 %154, i32 %155, i32 %156, i32 %162)
  %164 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %165 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @V2_QPC_BYTE_16_PD_M, align 4
  %168 = load i32, i32* @V2_QPC_BYTE_16_PD_S, align 4
  %169 = call i32 @roce_set_field(i32 %166, i32 %167, i32 %168, i32 0)
  %170 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %9, align 8
  %171 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @V2_QPC_BYTE_80_RX_CQN_M, align 4
  %174 = load i32, i32* @V2_QPC_BYTE_80_RX_CQN_S, align 4
  %175 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %176 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call %struct.TYPE_8__* @to_hr_cq(i32 %177)
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @roce_set_field(i32 %172, i32 %173, i32 %174, i32 %180)
  %182 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %183 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @V2_QPC_BYTE_80_RX_CQN_M, align 4
  %186 = load i32, i32* @V2_QPC_BYTE_80_RX_CQN_S, align 4
  %187 = call i32 @roce_set_field(i32 %184, i32 %185, i32 %186, i32 0)
  %188 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %9, align 8
  %189 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @V2_QPC_BYTE_252_TX_CQN_M, align 4
  %192 = load i32, i32* @V2_QPC_BYTE_252_TX_CQN_S, align 4
  %193 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %194 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = call %struct.TYPE_8__* @to_hr_cq(i32 %195)
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @roce_set_field(i32 %190, i32 %191, i32 %192, i32 %198)
  %200 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %201 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @V2_QPC_BYTE_252_TX_CQN_M, align 4
  %204 = load i32, i32* @V2_QPC_BYTE_252_TX_CQN_S, align 4
  %205 = call i32 @roce_set_field(i32 %202, i32 %203, i32 %204, i32 0)
  %206 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %207 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %239

210:                                              ; preds = %151
  %211 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %9, align 8
  %212 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @V2_QPC_BYTE_76_SRQ_EN_S, align 4
  %215 = call i32 @roce_set_bit(i32 %213, i32 %214, i32 1)
  %216 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %217 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @V2_QPC_BYTE_76_SRQ_EN_S, align 4
  %220 = call i32 @roce_set_bit(i32 %218, i32 %219, i32 0)
  %221 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %9, align 8
  %222 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @V2_QPC_BYTE_76_SRQN_M, align 4
  %225 = load i32, i32* @V2_QPC_BYTE_76_SRQN_S, align 4
  %226 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %227 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = call %struct.TYPE_6__* @to_hr_srq(i64 %228)
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @roce_set_field(i32 %223, i32 %224, i32 %225, i32 %231)
  %233 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %234 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @V2_QPC_BYTE_76_SRQN_M, align 4
  %237 = load i32, i32* @V2_QPC_BYTE_76_SRQN_S, align 4
  %238 = call i32 @roce_set_field(i32 %235, i32 %236, i32 %237, i32 0)
  br label %239

239:                                              ; preds = %210, %151
  %240 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %9, align 8
  %241 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @V2_QPC_BYTE_4_SQPN_M, align 4
  %244 = load i32, i32* @V2_QPC_BYTE_4_SQPN_S, align 4
  %245 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %246 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @roce_set_field(i32 %242, i32 %243, i32 %244, i32 %247)
  %249 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %250 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @V2_QPC_BYTE_4_SQPN_M, align 4
  %253 = load i32, i32* @V2_QPC_BYTE_4_SQPN_S, align 4
  %254 = call i32 @roce_set_field(i32 %251, i32 %252, i32 %253, i32 0)
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* @IB_QP_DEST_QPN, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %275

259:                                              ; preds = %239
  %260 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %9, align 8
  %261 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @V2_QPC_BYTE_56_DQPN_M, align 4
  %264 = load i32, i32* @V2_QPC_BYTE_56_DQPN_S, align 4
  %265 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %11, align 8
  %266 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @roce_set_field(i32 %262, i32 %263, i32 %264, i32 %267)
  %269 = load %struct.hns_roce_v2_qp_context*, %struct.hns_roce_v2_qp_context** %10, align 8
  %270 = getelementptr inbounds %struct.hns_roce_v2_qp_context, %struct.hns_roce_v2_qp_context* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @V2_QPC_BYTE_56_DQPN_M, align 4
  %273 = load i32, i32* @V2_QPC_BYTE_56_DQPN_S, align 4
  %274 = call i32 @roce_set_field(i32 %271, i32 %272, i32 %273, i32 0)
  br label %275

275:                                              ; preds = %259, %239
  ret void
}

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @to_hr_qp_type(i32) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @to_hr_pd(i32) #1

declare dso_local %struct.TYPE_8__* @to_hr_cq(i32) #1

declare dso_local %struct.TYPE_6__* @to_hr_srq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
