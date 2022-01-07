; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_create_umr_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_create_umr_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.ib_qp*, %struct.ib_qp*, %struct.ib_qp*, i32 }
%struct.ib_qp = type { %struct.ib_qp*, %struct.ib_qp*, i8*, i32*, %struct.ib_qp*, i32* }
%struct.ib_qp_init_attr = type { i32, i32, i32, %struct.ib_qp*, %struct.ib_qp*, i8*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, %struct.ib_qp*, %struct.ib_qp*, i8*, %struct.TYPE_3__, i32 }
%struct.ib_pd = type { %struct.ib_pd*, %struct.ib_pd*, i8*, i32*, %struct.ib_pd*, i32* }
%struct.ib_cq = type { %struct.ib_cq*, %struct.ib_cq*, i8*, i32*, %struct.ib_cq*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Couldn't create PD for sync UMR QP\0A\00", align 1
@IB_POLL_SOFTIRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Couldn't create CQ for sync UMR QP\0A\00", align 1
@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4
@MAX_UMR_WR = common dso_local global i32 0, align 4
@MLX5_IB_QPT_REG_UMR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't create sync UMR QP\0A\00", align 1
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Couldn't modify UMR QP\0A\00", align 1
@IB_QPS_RTR = common dso_local global i32 0, align 4
@IB_MTU_256 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Couldn't modify umr QP to rtr\0A\00", align 1
@IB_QPS_RTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Couldn't modify umr QP to rts\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"mr cache init failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*)* @create_umr_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_umr_res(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.ib_qp_init_attr*, align 8
  %5 = alloca %struct.ib_qp_attr*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.ib_cq*, align 8
  %8 = alloca %struct.ib_qp*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.ib_qp_init_attr* null, %struct.ib_qp_init_attr** %4, align 8
  store %struct.ib_qp_attr* null, %struct.ib_qp_attr** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ib_qp_init_attr* @kzalloc(i32 56, i32 %10)
  %12 = bitcast %struct.ib_qp_init_attr* %11 to %struct.ib_qp_attr*
  store %struct.ib_qp_attr* %12, %struct.ib_qp_attr** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ib_qp_init_attr* @kzalloc(i32 56, i32 %13)
  store %struct.ib_qp_init_attr* %14, %struct.ib_qp_init_attr** %4, align 8
  %15 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %16 = icmp ne %struct.ib_qp_attr* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %19 = icmp ne %struct.ib_qp_init_attr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  br label %223

23:                                               ; preds = %17
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %24, i32 0, i32 1
  %26 = call %struct.ib_qp* @ib_alloc_pd(i32* %25, i32 0)
  %27 = bitcast %struct.ib_qp* %26 to %struct.ib_pd*
  store %struct.ib_pd* %27, %struct.ib_pd** %6, align 8
  %28 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %29 = bitcast %struct.ib_pd* %28 to %struct.ib_qp*
  %30 = call i64 @IS_ERR(%struct.ib_qp* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %34 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %36 = bitcast %struct.ib_pd* %35 to %struct.ib_qp*
  %37 = call i32 @PTR_ERR(%struct.ib_qp* %36)
  store i32 %37, i32* %9, align 4
  br label %223

38:                                               ; preds = %23
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %39, i32 0, i32 1
  %41 = load i32, i32* @IB_POLL_SOFTIRQ, align 4
  %42 = call %struct.ib_qp* @ib_alloc_cq(i32* %40, i32* null, i32 128, i32 0, i32 %41)
  %43 = bitcast %struct.ib_qp* %42 to %struct.ib_cq*
  store %struct.ib_cq* %43, %struct.ib_cq** %7, align 8
  %44 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %45 = bitcast %struct.ib_cq* %44 to %struct.ib_qp*
  %46 = call i64 @IS_ERR(%struct.ib_qp* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %50 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %52 = bitcast %struct.ib_cq* %51 to %struct.ib_qp*
  %53 = call i32 @PTR_ERR(%struct.ib_qp* %52)
  store i32 %53, i32* %9, align 4
  br label %216

54:                                               ; preds = %38
  %55 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %56 = bitcast %struct.ib_cq* %55 to %struct.ib_qp*
  %57 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %58 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %57, i32 0, i32 4
  store %struct.ib_qp* %56, %struct.ib_qp** %58, align 8
  %59 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %60 = bitcast %struct.ib_cq* %59 to %struct.ib_qp*
  %61 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %62 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %61, i32 0, i32 3
  store %struct.ib_qp* %60, %struct.ib_qp** %62, align 8
  %63 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  %64 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %65 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @MAX_UMR_WR, align 4
  %67 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %68 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %71 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load i8*, i8** @MLX5_IB_QPT_REG_UMR, align 8
  %74 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %75 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %77 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %79 = bitcast %struct.ib_pd* %78 to %struct.ib_qp*
  %80 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %81 = call %struct.ib_qp* @mlx5_ib_create_qp(%struct.ib_qp* %79, %struct.ib_qp_init_attr* %80, i32* null)
  store %struct.ib_qp* %81, %struct.ib_qp** %8, align 8
  %82 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %83 = call i64 @IS_ERR(%struct.ib_qp* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %54
  %86 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %87 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %89 = call i32 @PTR_ERR(%struct.ib_qp* %88)
  store i32 %89, i32* %9, align 4
  br label %209

90:                                               ; preds = %54
  %91 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %92 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %91, i32 0, i32 1
  %93 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %94 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %93, i32 0, i32 5
  store i32* %92, i32** %94, align 8
  %95 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %96 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %97 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %96, i32 0, i32 4
  store %struct.ib_qp* %95, %struct.ib_qp** %97, align 8
  %98 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %99 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %98, i32 0, i32 3
  store i32* null, i32** %99, align 8
  %100 = load i8*, i8** @MLX5_IB_QPT_REG_UMR, align 8
  %101 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %102 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %104 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %103, i32 0, i32 4
  %105 = load %struct.ib_qp*, %struct.ib_qp** %104, align 8
  %106 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %107 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %106, i32 0, i32 1
  store %struct.ib_qp* %105, %struct.ib_qp** %107, align 8
  %108 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %109 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %108, i32 0, i32 3
  %110 = load %struct.ib_qp*, %struct.ib_qp** %109, align 8
  %111 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %112 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %111, i32 0, i32 0
  store %struct.ib_qp* %110, %struct.ib_qp** %112, align 8
  %113 = load i32, i32* @IB_QPS_INIT, align 4
  %114 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %115 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %117 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  %118 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %119 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %120 = bitcast %struct.ib_qp_attr* %119 to %struct.ib_qp_init_attr*
  %121 = load i32, i32* @IB_QP_STATE, align 4
  %122 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @IB_QP_PORT, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @mlx5_ib_modify_qp(%struct.ib_qp* %118, %struct.ib_qp_init_attr* %120, i32 %125, i32* null)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %90
  %130 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %131 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %203

132:                                              ; preds = %90
  %133 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %134 = bitcast %struct.ib_qp_attr* %133 to %struct.ib_qp_init_attr*
  %135 = call i32 @memset(%struct.ib_qp_init_attr* %134, i32 0, i32 56)
  %136 = load i32, i32* @IB_QPS_RTR, align 4
  %137 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %138 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @IB_MTU_256, align 4
  %140 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %141 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %143 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %144 = bitcast %struct.ib_qp_attr* %143 to %struct.ib_qp_init_attr*
  %145 = load i32, i32* @IB_QP_STATE, align 4
  %146 = call i32 @mlx5_ib_modify_qp(%struct.ib_qp* %142, %struct.ib_qp_init_attr* %144, i32 %145, i32* null)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %132
  %150 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %151 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %203

152:                                              ; preds = %132
  %153 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %154 = bitcast %struct.ib_qp_attr* %153 to %struct.ib_qp_init_attr*
  %155 = call i32 @memset(%struct.ib_qp_init_attr* %154, i32 0, i32 56)
  %156 = load i32, i32* @IB_QPS_RTS, align 4
  %157 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %158 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %160 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %161 = bitcast %struct.ib_qp_attr* %160 to %struct.ib_qp_init_attr*
  %162 = load i32, i32* @IB_QP_STATE, align 4
  %163 = call i32 @mlx5_ib_modify_qp(%struct.ib_qp* %159, %struct.ib_qp_init_attr* %161, i32 %162, i32* null)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %152
  %167 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %168 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %203

169:                                              ; preds = %152
  %170 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %171 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %172 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  store %struct.ib_qp* %170, %struct.ib_qp** %173, align 8
  %174 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %175 = bitcast %struct.ib_cq* %174 to %struct.ib_qp*
  %176 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %177 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  store %struct.ib_qp* %175, %struct.ib_qp** %178, align 8
  %179 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %180 = bitcast %struct.ib_pd* %179 to %struct.ib_qp*
  %181 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %182 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  store %struct.ib_qp* %180, %struct.ib_qp** %183, align 8
  %184 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %185 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 3
  %187 = load i32, i32* @MAX_UMR_WR, align 4
  %188 = call i32 @sema_init(i32* %186, i32 %187)
  %189 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %190 = call i32 @mlx5_mr_cache_init(%struct.mlx5_ib_dev* %189)
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %169
  %194 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %195)
  br label %203

197:                                              ; preds = %169
  %198 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %199 = bitcast %struct.ib_qp_attr* %198 to %struct.ib_qp_init_attr*
  %200 = call i32 @kfree(%struct.ib_qp_init_attr* %199)
  %201 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %202 = call i32 @kfree(%struct.ib_qp_init_attr* %201)
  store i32 0, i32* %2, align 4
  br label %230

203:                                              ; preds = %193, %166, %149, %129
  %204 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %205 = call i32 @mlx5_ib_destroy_qp(%struct.ib_qp* %204, i32* null)
  %206 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %207 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 2
  store %struct.ib_qp* null, %struct.ib_qp** %208, align 8
  br label %209

209:                                              ; preds = %203, %85
  %210 = load %struct.ib_cq*, %struct.ib_cq** %7, align 8
  %211 = bitcast %struct.ib_cq* %210 to %struct.ib_qp*
  %212 = call i32 @ib_free_cq(%struct.ib_qp* %211)
  %213 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %214 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  store %struct.ib_qp* null, %struct.ib_qp** %215, align 8
  br label %216

216:                                              ; preds = %209, %48
  %217 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %218 = bitcast %struct.ib_pd* %217 to %struct.ib_qp*
  %219 = call i32 @ib_dealloc_pd(%struct.ib_qp* %218)
  %220 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %221 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  store %struct.ib_qp* null, %struct.ib_qp** %222, align 8
  br label %223

223:                                              ; preds = %216, %32, %20
  %224 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %225 = bitcast %struct.ib_qp_attr* %224 to %struct.ib_qp_init_attr*
  %226 = call i32 @kfree(%struct.ib_qp_init_attr* %225)
  %227 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %4, align 8
  %228 = call i32 @kfree(%struct.ib_qp_init_attr* %227)
  %229 = load i32, i32* %9, align 4
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %223, %197
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local %struct.ib_qp_init_attr* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_qp* @ib_alloc_pd(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_qp*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_qp*) #1

declare dso_local %struct.ib_qp* @ib_alloc_cq(i32*, i32*, i32, i32, i32) #1

declare dso_local %struct.ib_qp* @mlx5_ib_create_qp(%struct.ib_qp*, %struct.ib_qp_init_attr*, i32*) #1

declare dso_local i32 @mlx5_ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_init_attr*, i32, i32*) #1

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @mlx5_mr_cache_init(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.ib_qp_init_attr*) #1

declare dso_local i32 @mlx5_ib_destroy_qp(%struct.ib_qp*, i32*) #1

declare dso_local i32 @ib_free_cq(%struct.ib_qp*) #1

declare dso_local i32 @ib_dealloc_pd(%struct.ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
