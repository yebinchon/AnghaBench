; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_process_pma_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_process_pma_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.ib_mad = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ib_class_port_info = type { i32 }
%struct.ib_pma_portcounters_ext = type { i32 }
%struct.ib_pma_portcounters = type { i32 }

@IB_PMA_CLASS_PORT_INFO = common dso_local global i64 0, align 8
@IB_PMA_CLASS_CAP_EXT_WIDTH = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_REPLY = common dso_local global i32 0, align 4
@IB_PMA_PORT_COUNTERS_EXT = common dso_local global i64 0, align 8
@query_vport_counter_out = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@ppcnt_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32, %struct.ib_mad*, %struct.ib_mad*)* @process_pma_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_pma_cmd(%struct.mlx5_ib_dev* %0, i32 %1, %struct.ib_mad* %2, %struct.ib_mad* %3) #0 {
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_mad*, align 8
  %8 = alloca %struct.ib_mad*, align 8
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ib_class_port_info, align 4
  %15 = alloca %struct.ib_pma_portcounters_ext*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ib_pma_portcounters*, align 8
  %18 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_mad* %2, %struct.ib_mad** %7, align 8
  store %struct.ib_mad* %3, %struct.ib_mad** %8, align 8
  store i32 1, i32* %10, align 4
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.mlx5_core_dev* @mlx5_ib_get_native_port_mdev(%struct.mlx5_ib_dev* %19, i32 %20, i32* %11)
  store %struct.mlx5_core_dev* %21, %struct.mlx5_core_dev** %9, align 8
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %23 = icmp ne %struct.mlx5_core_dev* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %25 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %25, i32 0, i32 0
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %26, align 8
  store %struct.mlx5_core_dev* %27, %struct.mlx5_core_dev** %9, align 8
  store i32 1, i32* %11, align 4
  br label %28

28:                                               ; preds = %24, %4
  %29 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %30 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IB_PMA_CLASS_PORT_INFO, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = bitcast %struct.ib_class_port_info* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %36, i8 0, i64 4, i1 false)
  %37 = load i32, i32* @IB_PMA_CLASS_CAP_EXT_WIDTH, align 4
  %38 = getelementptr inbounds %struct.ib_class_port_info, %struct.ib_class_port_info* %14, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.ib_mad*, %struct.ib_mad** %8, align 8
  %40 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 40
  %43 = call i32 @memcpy(i64 %42, %struct.ib_class_port_info* %14, i32 4)
  %44 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %45 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %13, align 4
  br label %123

47:                                               ; preds = %28
  %48 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %49 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IB_PMA_PORT_COUNTERS_EXT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %82

54:                                               ; preds = %47
  %55 = load %struct.ib_mad*, %struct.ib_mad** %8, align 8
  %56 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 40
  %59 = inttoptr i64 %58 to %struct.ib_pma_portcounters_ext*
  store %struct.ib_pma_portcounters_ext* %59, %struct.ib_pma_portcounters_ext** %15, align 8
  %60 = load i32, i32* @query_vport_counter_out, align 4
  %61 = call i32 @MLX5_ST_SZ_BYTES(i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kvzalloc(i32 %62, i32 %63)
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %54
  %68 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %68, i32* %13, align 4
  br label %123

69:                                               ; preds = %54
  %70 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @mlx5_core_query_vport_counter(%struct.mlx5_core_dev* %70, i32 0, i32 0, i32 %71, i8* %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %69
  %78 = load %struct.ib_pma_portcounters_ext*, %struct.ib_pma_portcounters_ext** %15, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @pma_cnt_ext_assign(%struct.ib_pma_portcounters_ext* %78, i8* %79)
  br label %81

81:                                               ; preds = %77, %69
  br label %110

82:                                               ; preds = %47
  %83 = load %struct.ib_mad*, %struct.ib_mad** %8, align 8
  %84 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 40
  %87 = inttoptr i64 %86 to %struct.ib_pma_portcounters*
  store %struct.ib_pma_portcounters* %87, %struct.ib_pma_portcounters** %17, align 8
  %88 = load i32, i32* @ppcnt_reg, align 4
  %89 = call i32 @MLX5_ST_SZ_BYTES(i32 %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i8* @kvzalloc(i32 %90, i32 %91)
  store i8* %92, i8** %12, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %82
  %96 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %96, i32* %13, align 4
  br label %123

97:                                               ; preds = %82
  %98 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i8*, i8** %12, align 8
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @mlx5_core_query_ib_ppcnt(%struct.mlx5_core_dev* %98, i32 %99, i8* %100, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %97
  %106 = load %struct.ib_pma_portcounters*, %struct.ib_pma_portcounters** %17, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 @pma_cnt_assign(%struct.ib_pma_portcounters* %106, i8* %107)
  br label %109

109:                                              ; preds = %105, %97
  br label %110

110:                                              ; preds = %109, %81
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @kvfree(i8* %111)
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  br label %121

117:                                              ; preds = %110
  %118 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %119 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %120 = or i32 %118, %119
  br label %121

121:                                              ; preds = %117, %115
  %122 = phi i32 [ %116, %115 ], [ %120, %117 ]
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %121, %95, %67, %35
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %123
  %131 = load i32, i32* %13, align 4
  ret i32 %131
}

declare dso_local %struct.mlx5_core_dev* @mlx5_ib_get_native_port_mdev(%struct.mlx5_ib_dev*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i64, %struct.ib_class_port_info*, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @mlx5_core_query_vport_counter(%struct.mlx5_core_dev*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @pma_cnt_ext_assign(%struct.ib_pma_portcounters_ext*, i8*) #1

declare dso_local i32 @mlx5_core_query_ib_ppcnt(%struct.mlx5_core_dev*, i32, i8*, i32) #1

declare dso_local i32 @pma_cnt_assign(%struct.ib_pma_portcounters*, i8*) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
