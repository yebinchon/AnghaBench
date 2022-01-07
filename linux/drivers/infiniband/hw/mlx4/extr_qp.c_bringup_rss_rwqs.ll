; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_bringup_rss_rwqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_bringup_rss_rwqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_rwq_ind_table = type { i32, %struct.ib_wq** }
%struct.ib_wq = type { i64, i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_qp = type { i64, i64, i32 }
%struct.ib_qp = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_WQS_RDY = common dso_local global i64 0, align 8
@IB_WQS_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to reverse WQN=0x%06x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_rwq_ind_table*, i64, %struct.ib_udata*)* @bringup_rss_rwqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bringup_rss_rwqs(%struct.ib_rwq_ind_table* %0, i64 %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_rwq_ind_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_wq*, align 8
  %10 = alloca %struct.mlx4_ib_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_wq*, align 8
  %13 = alloca %struct.mlx4_ib_qp*, align 8
  store %struct.ib_rwq_ind_table* %0, %struct.ib_rwq_ind_table** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %85, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %4, align 8
  %17 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 1, %18
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %88

21:                                               ; preds = %14
  %22 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %4, align 8
  %23 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %22, i32 0, i32 1
  %24 = load %struct.ib_wq**, %struct.ib_wq*** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ib_wq*, %struct.ib_wq** %24, i64 %26
  %28 = load %struct.ib_wq*, %struct.ib_wq** %27, align 8
  store %struct.ib_wq* %28, %struct.ib_wq** %9, align 8
  %29 = load %struct.ib_wq*, %struct.ib_wq** %9, align 8
  %30 = bitcast %struct.ib_wq* %29 to %struct.ib_qp*
  %31 = call %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp* %30)
  store %struct.mlx4_ib_qp* %31, %struct.mlx4_ib_qp** %10, align 8
  %32 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %21
  %40 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %41 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %48, i32 0, i32 2
  %50 = call i32 @mutex_unlock(i32* %49)
  br label %88

51:                                               ; preds = %39, %21
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %56 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %51
  %60 = load %struct.ib_wq*, %struct.ib_wq** %9, align 8
  %61 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IB_WQS_RDY, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = load %struct.ib_wq*, %struct.ib_wq** %9, align 8
  %67 = load i64, i64* @IB_WQS_RDY, align 8
  %68 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %69 = call i32 @_mlx4_ib_modify_wq(%struct.ib_wq* %66, i64 %67, %struct.ib_udata* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %74 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %73, i32 0, i32 2
  %75 = call i32 @mutex_unlock(i32* %74)
  br label %88

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %59, %51
  %78 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %79 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %83 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %82, i32 0, i32 2
  %84 = call i32 @mutex_unlock(i32* %83)
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %14

88:                                               ; preds = %72, %45, %14
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %148

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %148

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %144, %94
  %98 = load i32, i32* %11, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %147

100:                                              ; preds = %97
  %101 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %4, align 8
  %102 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %101, i32 0, i32 1
  %103 = load %struct.ib_wq**, %struct.ib_wq*** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.ib_wq*, %struct.ib_wq** %103, i64 %105
  %107 = load %struct.ib_wq*, %struct.ib_wq** %106, align 8
  store %struct.ib_wq* %107, %struct.ib_wq** %12, align 8
  %108 = load %struct.ib_wq*, %struct.ib_wq** %12, align 8
  %109 = bitcast %struct.ib_wq* %108 to %struct.ib_qp*
  %110 = call %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp* %109)
  store %struct.mlx4_ib_qp* %110, %struct.mlx4_ib_qp** %13, align 8
  %111 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %13, align 8
  %112 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %111, i32 0, i32 2
  %113 = call i32 @mutex_lock(i32* %112)
  %114 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %13, align 8
  %115 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 1
  br i1 %117, label %118, label %136

118:                                              ; preds = %100
  %119 = load %struct.ib_wq*, %struct.ib_wq** %12, align 8
  %120 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @IB_WQS_RDY, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %118
  %125 = load %struct.ib_wq*, %struct.ib_wq** %12, align 8
  %126 = load i64, i64* @IB_WQS_RESET, align 8
  %127 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %128 = call i32 @_mlx4_ib_modify_wq(%struct.ib_wq* %125, i64 %126, %struct.ib_udata* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load %struct.ib_wq*, %struct.ib_wq** %12, align 8
  %132 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %130, %124
  br label %136

136:                                              ; preds = %135, %118, %100
  %137 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %13, align 8
  %138 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, -1
  store i64 %140, i64* %138, align 8
  %141 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %13, align 8
  %142 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %141, i32 0, i32 2
  %143 = call i32 @mutex_unlock(i32* %142)
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %11, align 4
  br label %97

147:                                              ; preds = %97
  br label %148

148:                                              ; preds = %147, %91, %88
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local %struct.mlx4_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @_mlx4_ib_modify_wq(%struct.ib_wq*, i64, %struct.ib_udata*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
