; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_mr_initiator_pfault_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_mr_initiator_pfault_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_pagefault = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_ib_qp = type { i64, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32 }
%struct.mlx5_base_av = type { i32 }

@MLX5_WQE_CTRL_DS_MASK = common dso_local global i32 0, align 4
@MLX5_WQE_DS_UNITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Unable to read the complete WQE. ds = 0x%x, ret = 0x%x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Got WQE with zero DS. wqe_index=%x, qpn=%x\0A\00", align 1
@MLX5_WQE_CTRL_OPCODE_MASK = common dso_local global i32 0, align 4
@IB_QPT_XRC_INI = common dso_local global i64 0, align 8
@IB_QPT_UD = common dso_local global i64 0, align 8
@MLX5_IB_QPT_DCI = common dso_local global i64 0, align 8
@MLX5_EXTENDED_UD_AV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_pagefault*, %struct.mlx5_ib_qp*, i8**, i8**, i32)* @mlx5_ib_mr_initiator_pfault_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_mr_initiator_pfault_handler(%struct.mlx5_ib_dev* %0, %struct.mlx5_pagefault* %1, %struct.mlx5_ib_qp* %2, i8** %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_ib_dev*, align 8
  %9 = alloca %struct.mlx5_pagefault*, align 8
  %10 = alloca %struct.mlx5_ib_qp*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_wqe_ctrl_seg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mlx5_base_av*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %8, align 8
  store %struct.mlx5_pagefault* %1, %struct.mlx5_pagefault** %9, align 8
  store %struct.mlx5_ib_qp* %2, %struct.mlx5_ib_qp** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i8**, i8*** %11, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.mlx5_wqe_ctrl_seg*
  store %struct.mlx5_wqe_ctrl_seg* %22, %struct.mlx5_wqe_ctrl_seg** %14, align 8
  %23 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %9, align 8
  %24 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %15, align 4
  %27 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %19, align 4
  %33 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %14, align 8
  %34 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  %37 = load i32, i32* @MLX5_WQE_CTRL_DS_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* @MLX5_WQE_DS_UNITS, align 4
  %41 = mul i32 %39, %40
  %42 = load i32, i32* %13, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %6
  %45 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %136

51:                                               ; preds = %6
  %52 = load i32, i32* %17, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %19, align 4
  %58 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* @EFAULT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %136

61:                                               ; preds = %51
  %62 = load i8**, i8*** %11, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* @MLX5_WQE_DS_UNITS, align 4
  %66 = mul i32 %64, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr i8, i8* %63, i64 %67
  %69 = load i8**, i8*** %12, align 8
  store i8* %68, i8** %69, align 8
  %70 = load i8**, i8*** %11, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr i8, i8* %71, i64 8
  store i8* %72, i8** %70, align 8
  %73 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %14, align 8
  %74 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be32_to_cpu(i32 %75)
  %77 = load i32, i32* @MLX5_WQE_CTRL_OPCODE_MASK, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %18, align 4
  %79 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %80 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IB_QPT_XRC_INI, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %61
  %86 = load i8**, i8*** %11, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr i8, i8* %87, i64 4
  store i8* %88, i8** %86, align 8
  br label %89

89:                                               ; preds = %85, %61
  %90 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %91 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IB_QPT_UD, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %89
  %97 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %98 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MLX5_IB_QPT_DCI, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %96, %89
  %103 = load i8**, i8*** %11, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = bitcast i8* %104 to %struct.mlx5_base_av*
  store %struct.mlx5_base_av* %105, %struct.mlx5_base_av** %16, align 8
  %106 = load %struct.mlx5_base_av*, %struct.mlx5_base_av** %16, align 8
  %107 = getelementptr inbounds %struct.mlx5_base_av, %struct.mlx5_base_av* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MLX5_EXTENDED_UD_AV, align 4
  %110 = call i32 @cpu_to_be32(i32 %109)
  %111 = and i32 %108, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %102
  %114 = load i8**, i8*** %11, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr i8, i8* %115, i64 4
  store i8* %116, i8** %114, align 8
  br label %121

117:                                              ; preds = %102
  %118 = load i8**, i8*** %11, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr i8, i8* %119, i64 4
  store i8* %120, i8** %118, align 8
  br label %121

121:                                              ; preds = %117, %113
  br label %122

122:                                              ; preds = %121, %96
  %123 = load i32, i32* %18, align 4
  switch i32 %123, label %135 [
    i32 129, label %124
    i32 128, label %124
    i32 130, label %124
    i32 132, label %128
    i32 131, label %128
  ]

124:                                              ; preds = %122, %122, %122
  %125 = load i8**, i8*** %11, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr i8, i8* %126, i64 4
  store i8* %127, i8** %125, align 8
  br label %135

128:                                              ; preds = %122, %122
  %129 = load i8**, i8*** %11, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr i8, i8* %130, i64 4
  store i8* %131, i8** %129, align 8
  %132 = load i8**, i8*** %11, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr i8, i8* %133, i64 4
  store i8* %134, i8** %132, align 8
  br label %135

135:                                              ; preds = %122, %128, %124
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %135, %54, %44
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mlx5_ib_err(%struct.mlx5_ib_dev*, i8*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
