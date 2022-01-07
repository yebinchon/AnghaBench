; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_mlx4_ib_mcg_demux_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_mlx4_ib_mcg_demux_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_sa_mad = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx4_ib_demux_ctx* }
%struct.mlx4_ib_demux_ctx = type { i32, i32 }
%struct.ib_sa_mcmember_data = type { i32 }
%struct.mcast_group = type { i32, i32, i32, i32, i32, %struct.ib_sa_mad }

@MCAST_RESP_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"In demux, port %d: unexpected MCMember method: 0x%x, dropping\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_mcg_demux_handler(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_sa_mad* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_sa_mad*, align 8
  %10 = alloca %struct.mlx4_ib_dev*, align 8
  %11 = alloca %struct.ib_sa_mcmember_data*, align 8
  %12 = alloca %struct.mlx4_ib_demux_ctx*, align 8
  %13 = alloca %struct.mcast_group*, align 8
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_sa_mad* %3, %struct.ib_sa_mad** %9, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %16 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %15)
  store %struct.mlx4_ib_dev* %16, %struct.mlx4_ib_dev** %10, align 8
  %17 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %18 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ib_sa_mcmember_data*
  store %struct.ib_sa_mcmember_data* %20, %struct.ib_sa_mcmember_data** %11, align 8
  %21 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %24, i64 %27
  store %struct.mlx4_ib_demux_ctx* %28, %struct.mlx4_ib_demux_ctx** %12, align 8
  %29 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %30 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %108 [
    i32 133, label %33
    i32 130, label %33
    i32 132, label %107
    i32 129, label %107
    i32 128, label %107
    i32 131, label %107
  ]

33:                                               ; preds = %4, %4
  %34 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %12, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %12, align 8
  %38 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %11, align 8
  %39 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %38, i32 0, i32 0
  %40 = call %struct.mcast_group* @acquire_group(%struct.mlx4_ib_demux_ctx* %37, i32* %39, i32 0)
  store %struct.mcast_group* %40, %struct.mcast_group** %13, align 8
  %41 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %12, align 8
  %42 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %45 = call i32 @IS_ERR(%struct.mcast_group* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %33
  %48 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %49 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 133
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %55 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %14, align 4
  %59 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %12, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %11, align 8
  %62 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %61, i32 0, i32 0
  %63 = call %struct.mcast_group* @search_relocate_mgid0_group(%struct.mlx4_ib_demux_ctx* %59, i32 %60, i32* %62)
  store %struct.mcast_group* %63, %struct.mcast_group** %13, align 8
  br label %65

64:                                               ; preds = %47
  store %struct.mcast_group* null, %struct.mcast_group** %13, align 8
  br label %65

65:                                               ; preds = %64, %53
  br label %66

66:                                               ; preds = %65, %33
  %67 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %68 = icmp ne %struct.mcast_group* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store i32 1, i32* %5, align 4
  br label %115

70:                                               ; preds = %66
  %71 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %72 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %75 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %74, i32 0, i32 5
  %76 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %77 = bitcast %struct.ib_sa_mad* %75 to i8*
  %78 = bitcast %struct.ib_sa_mad* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 16, i1 false)
  %79 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %80 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %83 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @MCAST_RESP_READY, align 4
  %85 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %86 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %88 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %87, i32 0, i32 1
  %89 = call i32 @atomic_inc(i32* %88)
  %90 = load %struct.mlx4_ib_demux_ctx*, %struct.mlx4_ib_demux_ctx** %12, align 8
  %91 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, %struct.mlx4_ib_demux_ctx* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %94 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %93, i32 0, i32 2
  %95 = call i32 @queue_work(i32 %92, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %70
  %98 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %99 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %98, i32 0, i32 1
  %100 = call i32 @safe_atomic_dec(i32* %99)
  br label %101

101:                                              ; preds = %97, %70
  %102 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %103 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load %struct.mcast_group*, %struct.mcast_group** %13, align 8
  %106 = call i32 @release_group(%struct.mcast_group* %105, i32 0)
  store i32 1, i32* %5, align 4
  br label %115

107:                                              ; preds = %4, %4, %4, %4
  store i32 0, i32* %5, align 4
  br label %115

108:                                              ; preds = %4
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %9, align 8
  %111 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @mcg_warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %113)
  store i32 1, i32* %5, align 4
  br label %115

115:                                              ; preds = %108, %107, %101, %69
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mcast_group* @acquire_group(%struct.mlx4_ib_demux_ctx*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IS_ERR(%struct.mcast_group*) #1

declare dso_local %struct.mcast_group* @search_relocate_mgid0_group(%struct.mlx4_ib_demux_ctx*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @safe_atomic_dec(i32*) #1

declare dso_local i32 @release_group(%struct.mcast_group*, i32) #1

declare dso_local i32 @mcg_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
