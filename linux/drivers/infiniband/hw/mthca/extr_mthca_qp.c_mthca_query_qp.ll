; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_qp.c_mthca_query_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_qp.c_mthca_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.ib_qp_init_attr = type { i32, %struct.TYPE_7__ }
%struct.mthca_dev = type { i32 }
%struct.mthca_qp = type { i64, i64, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.mthca_mailbox = type { %struct.mthca_qp_param* }
%struct.mthca_qp_param = type { %struct.mthca_qp_context }
%struct.mthca_qp_context = type { i32, %struct.TYPE_8__, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@IB_QPS_RESET = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"QUERY_QP failed (%d)\0A\00", align 1
@RC = common dso_local global i64 0, align 8
@UC = common dso_local global i64 0, align 8
@MTHCA_QP_STATE_DRAINING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  %9 = alloca %struct.mthca_dev*, align 8
  %10 = alloca %struct.mthca_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mthca_mailbox*, align 8
  %13 = alloca %struct.mthca_qp_param*, align 8
  %14 = alloca %struct.mthca_qp_context*, align 8
  %15 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %8, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %17 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mthca_dev* @to_mdev(i32 %18)
  store %struct.mthca_dev* %19, %struct.mthca_dev** %9, align 8
  %20 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %21 = call %struct.mthca_qp* @to_mqp(%struct.ib_qp* %20)
  store %struct.mthca_qp* %21, %struct.mthca_qp** %10, align 8
  store i32 0, i32* %11, align 4
  store %struct.mthca_mailbox* null, %struct.mthca_mailbox** %12, align 8
  %22 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %23 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %26 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IB_QPS_RESET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i64, i64* @IB_QPS_RESET, align 8
  %32 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %33 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %242

34:                                               ; preds = %4
  %35 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %35, i32 %36)
  store %struct.mthca_mailbox* %37, %struct.mthca_mailbox** %12, align 8
  %38 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %39 = call i64 @IS_ERR(%struct.mthca_mailbox* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %43 = call i32 @PTR_ERR(%struct.mthca_mailbox* %42)
  store i32 %43, i32* %11, align 4
  br label %297

44:                                               ; preds = %34
  %45 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %46 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %47 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %50 = call i32 @mthca_QUERY_QP(%struct.mthca_dev* %45, i32 %48, i32 0, %struct.mthca_mailbox* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @mthca_warn(%struct.mthca_dev* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %293

57:                                               ; preds = %44
  %58 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %59 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %58, i32 0, i32 0
  %60 = load %struct.mthca_qp_param*, %struct.mthca_qp_param** %59, align 8
  store %struct.mthca_qp_param* %60, %struct.mthca_qp_param** %13, align 8
  %61 = load %struct.mthca_qp_param*, %struct.mthca_qp_param** %13, align 8
  %62 = getelementptr inbounds %struct.mthca_qp_param, %struct.mthca_qp_param* %61, i32 0, i32 0
  store %struct.mthca_qp_context* %62, %struct.mthca_qp_context** %14, align 8
  %63 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %64 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @be32_to_cpu(i32 %65)
  %67 = ashr i32 %66, 28
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i64 @to_ib_qp_state(i32 %68)
  %70 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %71 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %73 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %76 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %78 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 5
  %81 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %82 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %84 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @be32_to_cpu(i32 %85)
  %87 = ashr i32 %86, 11
  %88 = and i32 %87, 3
  %89 = call i32 @to_ib_mig_state(i32 %88)
  %90 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %91 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %90, i32 0, i32 23
  store i32 %89, i32* %91, align 4
  %92 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %93 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @be32_to_cpu(i32 %94)
  %96 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %97 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %99 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @be32_to_cpu(i32 %100)
  %102 = and i32 %101, 16777215
  %103 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %104 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %106 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @be32_to_cpu(i32 %107)
  %109 = and i32 %108, 16777215
  %110 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %111 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %113 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @be32_to_cpu(i32 %114)
  %116 = and i32 %115, 16777215
  %117 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %118 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  %119 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %120 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @be32_to_cpu(i32 %121)
  %123 = call i32 @to_ib_qp_access_flags(i32 %122)
  %124 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %125 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %124, i32 0, i32 22
  store i32 %123, i32* %125, align 8
  %126 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %127 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @RC, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %57
  %132 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %133 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @UC, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %163

137:                                              ; preds = %131, %57
  %138 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %139 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %140 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %139, i32 0, i32 21
  %141 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %142 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %141, i32 0, i32 2
  %143 = call i32 @to_rdma_ah_attr(%struct.mthca_dev* %138, i32* %140, %struct.TYPE_8__* %142)
  %144 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %145 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %146 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %145, i32 0, i32 19
  %147 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %148 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %147, i32 0, i32 1
  %149 = call i32 @to_rdma_ah_attr(%struct.mthca_dev* %144, i32* %146, %struct.TYPE_8__* %148)
  %150 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %151 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @be32_to_cpu(i32 %153)
  %155 = and i32 %154, 127
  %156 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %157 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %156, i32 0, i32 6
  store i32 %155, i32* %157, align 4
  %158 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %159 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %158, i32 0, i32 19
  %160 = call i32 @rdma_ah_get_port_num(i32* %159)
  %161 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %162 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %161, i32 0, i32 20
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %137, %131
  %164 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %165 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @be32_to_cpu(i32 %167)
  %169 = and i32 %168, 127
  %170 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %171 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %170, i32 0, i32 7
  store i32 %169, i32* %171, align 8
  %172 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %173 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @be32_to_cpu(i32 %175)
  %177 = ashr i32 %176, 24
  %178 = and i32 %177, 3
  %179 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %180 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %179, i32 0, i32 8
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* @MTHCA_QP_STATE_DRAINING, align 4
  %183 = icmp eq i32 %181, %182
  %184 = zext i1 %183 to i32
  %185 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %186 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %185, i32 0, i32 9
  store i32 %184, i32* %186, align 8
  %187 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %188 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @be32_to_cpu(i32 %189)
  %191 = ashr i32 %190, 21
  %192 = and i32 %191, 7
  %193 = shl i32 1, %192
  %194 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %195 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %194, i32 0, i32 10
  store i32 %193, i32* %195, align 4
  %196 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %197 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @be32_to_cpu(i32 %198)
  %200 = ashr i32 %199, 21
  %201 = and i32 %200, 7
  %202 = shl i32 1, %201
  %203 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %204 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %203, i32 0, i32 11
  store i32 %202, i32* %204, align 8
  %205 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %206 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @be32_to_cpu(i32 %207)
  %209 = ashr i32 %208, 24
  %210 = and i32 %209, 31
  %211 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %212 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %211, i32 0, i32 12
  store i32 %210, i32* %212, align 4
  %213 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %214 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = ashr i32 %216, 3
  %218 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %219 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %218, i32 0, i32 13
  store i32 %217, i32* %219, align 8
  %220 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %221 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @be32_to_cpu(i32 %222)
  %224 = ashr i32 %223, 16
  %225 = and i32 %224, 7
  %226 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %227 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %226, i32 0, i32 14
  store i32 %225, i32* %227, align 4
  %228 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %229 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = ashr i32 %231, 5
  %233 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %234 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %233, i32 0, i32 15
  store i32 %232, i32* %234, align 8
  %235 = load %struct.mthca_qp_context*, %struct.mthca_qp_context** %14, align 8
  %236 = getelementptr inbounds %struct.mthca_qp_context, %struct.mthca_qp_context* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = ashr i32 %238, 3
  %240 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %241 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %240, i32 0, i32 16
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %163, %30
  %243 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %244 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %247 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %246, i32 0, i32 17
  store i64 %245, i64* %247, align 8
  %248 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %249 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %248, i32 0, i32 6
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %253 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %252, i32 0, i32 18
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 4
  store i32 %251, i32* %254, align 8
  %255 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %256 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %260 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %259, i32 0, i32 18
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 3
  store i32 %258, i32* %261, align 4
  %262 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %263 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %262, i32 0, i32 6
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %267 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %266, i32 0, i32 18
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 2
  store i32 %265, i32* %268, align 8
  %269 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %270 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %274 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %273, i32 0, i32 18
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 1
  store i32 %272, i32* %275, align 4
  %276 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %277 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %280 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %279, i32 0, i32 18
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 0
  store i32 %278, i32* %281, align 8
  %282 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %283 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %282, i32 0, i32 1
  %284 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %285 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %284, i32 0, i32 18
  %286 = bitcast %struct.TYPE_7__* %283 to i8*
  %287 = bitcast %struct.TYPE_7__* %285 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %286, i8* align 8 %287, i64 20, i1 false)
  %288 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %289 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %292 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %291, i32 0, i32 0
  store i32 %290, i32* %292, align 4
  br label %293

293:                                              ; preds = %242, %53
  %294 = load %struct.mthca_dev*, %struct.mthca_dev** %9, align 8
  %295 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %296 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %294, %struct.mthca_mailbox* %295)
  br label %297

297:                                              ; preds = %293, %41
  %298 = load %struct.mthca_qp*, %struct.mthca_qp** %10, align 8
  %299 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %298, i32 0, i32 2
  %300 = call i32 @mutex_unlock(i32* %299)
  %301 = load i32, i32* %11, align 4
  ret i32 %301
}

declare dso_local %struct.mthca_dev* @to_mdev(i32) #1

declare dso_local %struct.mthca_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_QUERY_QP(%struct.mthca_dev*, i32, i32, %struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @to_ib_qp_state(i32) #1

declare dso_local i32 @to_ib_mig_state(i32) #1

declare dso_local i32 @to_ib_qp_access_flags(i32) #1

declare dso_local i32 @to_rdma_ah_attr(%struct.mthca_dev*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @rdma_ah_get_port_num(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
