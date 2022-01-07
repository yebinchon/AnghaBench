; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_modify_raw_packet_qp_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_modify_raw_packet_qp_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_ib_rq = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_modify_raw_qp_param = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.TYPE_8__ = type { i32 }

@modify_rq_in = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rq_state = common dso_local global i32 0, align 4
@uid = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@MLX5_RAW_QP_MOD_SET_RQ_Q_CTR_ID = common dso_local global i32 0, align 4
@modify_rq_counter_set_id = common dso_local global i32 0, align 4
@modify_bitmask = common dso_local global i32 0, align 4
@MLX5_MODIFY_RQ_IN_MODIFY_BITMASK_RQ_COUNTER_SET_ID = common dso_local global i32 0, align 4
@counter_set_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"RAW PACKET QP counters are not supported on current FW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*, i32, %struct.mlx5_modify_raw_qp_param*, %struct.ib_pd*)* @modify_raw_packet_qp_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_raw_packet_qp_rq(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_rq* %1, i32 %2, %struct.mlx5_modify_raw_qp_param* %3, %struct.ib_pd* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca %struct.mlx5_ib_rq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_modify_raw_qp_param*, align 8
  %11 = alloca %struct.ib_pd*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %7, align 8
  store %struct.mlx5_ib_rq* %1, %struct.mlx5_ib_rq** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.mlx5_modify_raw_qp_param* %3, %struct.mlx5_modify_raw_qp_param** %10, align 8
  store %struct.ib_pd* %4, %struct.ib_pd** %11, align 8
  %16 = load i8*, i8** @modify_rq_in, align 8
  %17 = call i32 @MLX5_ST_SZ_BYTES(i8* %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kvzalloc(i32 %18, i32 %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %106

26:                                               ; preds = %5
  %27 = load i8*, i8** @modify_rq_in, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i32, i32* @rq_state, align 4
  %30 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %8, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @MLX5_SET(i8* %27, i8* %28, i32 %29, i32 %32)
  %34 = load i8*, i8** @modify_rq_in, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* @uid, align 4
  %37 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %38 = call %struct.TYPE_8__* @to_mpd(%struct.ib_pd* %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MLX5_SET(i8* %34, i8* %35, i32 %36, i32 %40)
  %42 = load i8*, i8** @modify_rq_in, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = load i32, i32* @ctx, align 4
  %45 = call i8* @MLX5_ADDR_OF(i8* %42, i8* %43, i32 %44)
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* @state, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @MLX5_SET(i8* %46, i8* %47, i32 %48, i32 %49)
  %51 = load %struct.mlx5_modify_raw_qp_param*, %struct.mlx5_modify_raw_qp_param** %10, align 8
  %52 = getelementptr inbounds %struct.mlx5_modify_raw_qp_param, %struct.mlx5_modify_raw_qp_param* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MLX5_RAW_QP_MOD_SET_RQ_Q_CTR_ID, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %26
  %58 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %59 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @modify_rq_counter_set_id, align 4
  %62 = call i64 @MLX5_CAP_GEN(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load i8*, i8** @modify_rq_in, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = load i32, i32* @modify_bitmask, align 4
  %68 = load i32, i32* @MLX5_MODIFY_RQ_IN_MODIFY_BITMASK_RQ_COUNTER_SET_ID, align 4
  %69 = call i32 @MLX5_SET64(i8* %65, i8* %66, i32 %67, i32 %68)
  %70 = load i8*, i8** %13, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load i32, i32* @counter_set_id, align 4
  %73 = load %struct.mlx5_modify_raw_qp_param*, %struct.mlx5_modify_raw_qp_param** %10, align 8
  %74 = getelementptr inbounds %struct.mlx5_modify_raw_qp_param, %struct.mlx5_modify_raw_qp_param* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @MLX5_SET(i8* %70, i8* %71, i32 %72, i32 %75)
  br label %82

77:                                               ; preds = %57
  %78 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %79 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = call i32 @dev_info_once(i32* %80, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %77, %64
  br label %83

83:                                               ; preds = %82, %26
  %84 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %85 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %8, align 8
  %88 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %12, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @mlx5_core_modify_rq(i32 %86, i32 %91, i8* %92, i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %83
  br label %102

98:                                               ; preds = %83
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %8, align 8
  %101 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %98, %97
  %103 = load i8*, i8** %12, align 8
  %104 = call i32 @kvfree(i8* %103)
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %102, %23
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @dev_info_once(i32*, i8*) #1

declare dso_local i32 @mlx5_core_modify_rq(i32, i32, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
