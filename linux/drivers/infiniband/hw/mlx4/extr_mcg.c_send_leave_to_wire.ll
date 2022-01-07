; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_send_leave_to_wire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_send_leave_to_wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcast_group = type { i32, %struct.TYPE_7__*, i32, %struct.ib_sa_mcmember_data, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ib_sa_mcmember_data = type { i32 }
%struct.ib_sa_mad = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i8*, i32, i8*, i8*, i32, i32 }
%struct.ib_mad = type { i32 }

@IB_MGMT_CLASS_SUBN_ADM = common dso_local global i32 0, align 4
@IB_SA_METHOD_DELETE = common dso_local global i32 0, align 4
@IB_SA_ATTR_MC_MEMBER_REC = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MGID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PORT_GID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_JOIN_STATE = common dso_local global i32 0, align 4
@MCAST_IDLE = common dso_local global i32 0, align 4
@MAD_TIMEOUT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcast_group*, i32)* @send_leave_to_wire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_leave_to_wire(%struct.mcast_group* %0, i32 %1) #0 {
  %3 = alloca %struct.mcast_group*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_mad, align 8
  %6 = alloca %struct.ib_sa_mcmember_data*, align 8
  %7 = alloca i32, align 4
  store %struct.mcast_group* %0, %struct.mcast_group** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 2
  %9 = bitcast i32* %8 to %struct.ib_sa_mcmember_data*
  store %struct.ib_sa_mcmember_data* %9, %struct.ib_sa_mcmember_data** %6, align 8
  %10 = call i32 @memset(%struct.ib_sa_mad* %5, i32 0, i32 80)
  %11 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load i32, i32* @IB_MGMT_CLASS_SUBN_ADM, align 4
  %14 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32 2, i32* %17, align 4
  %18 = load i32, i32* @IB_SA_METHOD_DELETE, align 4
  %19 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = call i8* @cpu_to_be16(i32 0)
  %22 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = call i8* @cpu_to_be16(i32 0)
  %25 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %28 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = call i32 @mlx4_ib_get_new_demux_tid(%struct.TYPE_7__* %29)
  %31 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %37 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @IB_SA_ATTR_MC_MEMBER_REC, align 4
  %39 = call i8* @cpu_to_be16(i32 %38)
  %40 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = call i32 @cpu_to_be32(i32 0)
  %43 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = call i8* @cpu_to_be16(i32 7)
  %48 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @IB_SA_MCMEMBER_REC_MGID, align 4
  %51 = load i32, i32* @IB_SA_MCMEMBER_REC_PORT_GID, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @IB_SA_MCMEMBER_REC_JOIN_STATE, align 4
  %54 = or i32 %52, %53
  %55 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %5, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %6, align 8
  %58 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %59 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %58, i32 0, i32 3
  %60 = bitcast %struct.ib_sa_mcmember_data* %57 to i8*
  %61 = bitcast %struct.ib_sa_mcmember_data* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %6, align 8
  %64 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %66 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = bitcast %struct.ib_sa_mad* %5 to %struct.ib_mad*
  %69 = call i32 @send_mad_to_wire(%struct.TYPE_7__* %67, %struct.ib_mad* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %2
  %73 = load i32, i32* @MCAST_IDLE, align 4
  %74 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %75 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %2
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %76
  %80 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %81 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %86 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %85, i32 0, i32 0
  %87 = load i32, i32* @MAD_TIMEOUT_MS, align 4
  %88 = call i32 @msecs_to_jiffies(i32 %87)
  %89 = call i32 @queue_delayed_work(i32 %84, i32* %86, i32 %88)
  br label %90

90:                                               ; preds = %79, %76
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @memset(%struct.ib_sa_mad*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @mlx4_ib_get_new_demux_tid(%struct.TYPE_7__*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @send_mad_to_wire(%struct.TYPE_7__*, %struct.ib_mad*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
