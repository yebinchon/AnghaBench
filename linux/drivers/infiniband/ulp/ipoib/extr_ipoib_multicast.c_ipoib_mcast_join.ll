; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_mcast = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i64, %struct.ipoib_mcast*, i32, i32, i32 }
%struct.ib_sa_multicast = type { i32 }
%struct.ib_sa_mcmember_rec = type { i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i32, %struct.TYPE_3__ }

@IPOIB_FLAG_OPER_UP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPOIB_MCAST_FLAG_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"joining MGID %pI6\0A\00", align 1
@IB_SA_MCMEMBER_REC_MGID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PORT_GID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_JOIN_STATE = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_QKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_RATE_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_RATE = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_SL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_FLOW_LABEL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_HOP_LIMIT = common dso_local global i32 0, align 4
@IB_SA_EQ = common dso_local global i8* null, align 8
@IPOIB_MCAST_FLAG_SENDONLY = common dso_local global i32 0, align 4
@SENDONLY_FULLMEMBER_JOIN = common dso_local global i32 0, align 4
@ipoib_sa_client = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ipoib_mcast_join_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"ib_sa_join_multicast failed, status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ipoib_mcast*)* @ipoib_mcast_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_mcast_join(%struct.net_device* %0, %struct.ipoib_mcast* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ipoib_mcast*, align 8
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  %7 = alloca %struct.ib_sa_multicast*, align 8
  %8 = alloca %struct.ib_sa_mcmember_rec, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ipoib_mcast* %1, %struct.ipoib_mcast** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %11)
  store %struct.ipoib_dev_priv* %12, %struct.ipoib_dev_priv** %6, align 8
  %13 = bitcast %struct.ib_sa_mcmember_rec* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 64, i1 false)
  %14 = bitcast i8* %13 to %struct.ib_sa_mcmember_rec*
  %15 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %17 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %16, i32 0, i32 4
  %18 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %17, align 8
  %19 = icmp ne %struct.ipoib_mcast* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @IPOIB_FLAG_OPER_UP, align 4
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 7
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %202

29:                                               ; preds = %20
  %30 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %31 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %30, i32 0, i32 0
  %32 = call i32 @init_completion(i32* %31)
  %33 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %34 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %35 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %34, i32 0, i32 1
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  %37 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %38 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %39 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 12
  %45 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %46 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 7
  %48 = bitcast %struct.TYPE_3__* %44 to i8*
  %49 = bitcast %struct.TYPE_3__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  %50 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %51 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 11
  store i32 %52, i32* %53, align 8
  %54 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %55 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @cpu_to_be16(i32 %56)
  %58 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 10
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @IB_SA_MCMEMBER_REC_MGID, align 4
  %60 = load i32, i32* @IB_SA_MCMEMBER_REC_PORT_GID, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @IB_SA_MCMEMBER_REC_PKEY, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @IB_SA_MCMEMBER_REC_JOIN_STATE, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %67 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %68 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %67, i32 0, i32 4
  %69 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %68, align 8
  %70 = icmp ne %struct.ipoib_mcast* %66, %69
  br i1 %70, label %71, label %158

71:                                               ; preds = %29
  %72 = load i32, i32* @IB_SA_MCMEMBER_REC_QKEY, align 4
  %73 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU_SELECTOR, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @IB_SA_MCMEMBER_REC_TRAFFIC_CLASS, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE_SELECTOR, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @IB_SA_MCMEMBER_REC_SL, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @IB_SA_MCMEMBER_REC_FLOW_LABEL, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @IB_SA_MCMEMBER_REC_HOP_LIMIT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %92 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %91, i32 0, i32 4
  %93 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %92, align 8
  %94 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 9
  store i32 %96, i32* %97, align 8
  %98 = load i8*, i8** @IB_SA_EQ, align 8
  %99 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 8
  store i8* %98, i8** %99, align 8
  %100 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %101 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %100, i32 0, i32 4
  %102 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %101, align 8
  %103 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 7
  store i32 %105, i32* %106, align 4
  %107 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %108 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %107, i32 0, i32 4
  %109 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %108, align 8
  %110 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 6
  store i32 %112, i32* %113, align 8
  %114 = load i8*, i8** @IB_SA_EQ, align 8
  %115 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 5
  store i8* %114, i8** %115, align 8
  %116 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %117 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %116, i32 0, i32 4
  %118 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %117, align 8
  %119 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 4
  store i32 %121, i32* %122, align 8
  %123 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %124 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %123, i32 0, i32 4
  %125 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %124, align 8
  %126 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 3
  store i32 %128, i32* %129, align 4
  %130 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %131 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %130, i32 0, i32 4
  %132 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %131, align 8
  %133 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 2
  store i32 %135, i32* %136, align 8
  %137 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %138 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %137, i32 0, i32 4
  %139 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %138, align 8
  %140 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 1
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* @IPOIB_MCAST_FLAG_SENDONLY, align 4
  %145 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %146 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %145, i32 0, i32 1
  %147 = call i64 @test_bit(i32 %144, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %71
  %150 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %151 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* @SENDONLY_FULLMEMBER_JOIN, align 4
  %156 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %8, i32 0, i32 0
  store i32 %155, i32* %156, align 8
  br label %157

157:                                              ; preds = %154, %149, %71
  br label %158

158:                                              ; preds = %157, %29
  %159 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %160 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %159, i32 0, i32 0
  %161 = call i32 @spin_unlock_irq(i32* %160)
  %162 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %163 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %166 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @GFP_KERNEL, align 4
  %170 = load i32, i32* @ipoib_mcast_join_complete, align 4
  %171 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %172 = call %struct.ib_sa_multicast* @ib_sa_join_multicast(i32* @ipoib_sa_client, i32 %164, i32 %167, %struct.ib_sa_mcmember_rec* %8, i32 %168, i32 %169, i32 %170, %struct.ipoib_mcast* %171)
  store %struct.ib_sa_multicast* %172, %struct.ib_sa_multicast** %7, align 8
  %173 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %174 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %173, i32 0, i32 0
  %175 = call i32 @spin_lock_irq(i32* %174)
  %176 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %7, align 8
  %177 = call i64 @IS_ERR(%struct.ib_sa_multicast* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %158
  %180 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %7, align 8
  %181 = call i32 @PTR_ERR(%struct.ib_sa_multicast* %180)
  store i32 %181, i32* %10, align 4
  %182 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %182, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %183)
  %185 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %186 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %187 = call i32 @__ipoib_mcast_schedule_join_thread(%struct.ipoib_dev_priv* %185, %struct.ipoib_mcast* %186, i32 1)
  %188 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %189 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %190 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %189, i32 0, i32 1
  %191 = call i32 @clear_bit(i32 %188, i32* %190)
  %192 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %193 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %192, i32 0, i32 0
  %194 = call i32 @spin_unlock_irq(i32* %193)
  %195 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %5, align 8
  %196 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %195, i32 0, i32 0
  %197 = call i32 @complete(i32* %196)
  %198 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %199 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %198, i32 0, i32 0
  %200 = call i32 @spin_lock_irq(i32* %199)
  br label %201

201:                                              ; preds = %179, %158
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %201, %26
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ipoib_dbg_mcast(%struct.ipoib_dev_priv*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.ib_sa_multicast* @ib_sa_join_multicast(i32*, i32, i32, %struct.ib_sa_mcmember_rec*, i32, i32, i32, %struct.ipoib_mcast*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @IS_ERR(%struct.ib_sa_multicast*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_sa_multicast*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @__ipoib_mcast_schedule_join_thread(%struct.ipoib_dev_priv*, %struct.ipoib_mcast*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
