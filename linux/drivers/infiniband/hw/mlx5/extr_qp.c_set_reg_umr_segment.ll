; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_reg_umr_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_reg_umr_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i32, i32, i32, i8*, i8* }
%struct.ib_send_wr = type { i32, i32 }
%struct.mlx5_umr_wr = type { i32, i32, i32 }

@MLX5_IB_SEND_UMR_FAIL_IF_FREE = common dso_local global i32 0, align 4
@MLX5_UMR_CHECK_FREE = common dso_local global i32 0, align 4
@MLX5_UMR_CHECK_NOT_FREE = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_UPDATE_XLT = common dso_local global i32 0, align 4
@MLX5_UMR_TRANSLATION_OFFSET_EN = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_UPDATE_TRANSLATION = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_UPDATE_PD_ACCESS = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_ENABLE_MR = common dso_local global i32 0, align 4
@MLX5_IB_SEND_UMR_DISABLE_MR = common dso_local global i32 0, align 4
@MLX5_UMR_INLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_wqe_umr_ctrl_seg*, %struct.ib_send_wr*, i32)* @set_reg_umr_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_reg_umr_segment(%struct.mlx5_ib_dev* %0, %struct.mlx5_wqe_umr_ctrl_seg* %1, %struct.ib_send_wr* %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_wqe_umr_ctrl_seg*, align 8
  %7 = alloca %struct.ib_send_wr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_umr_wr*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.mlx5_wqe_umr_ctrl_seg* %1, %struct.mlx5_wqe_umr_ctrl_seg** %6, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %12 = call %struct.mlx5_umr_wr* @umr_wr(%struct.ib_send_wr* %11)
  store %struct.mlx5_umr_wr* %12, %struct.mlx5_umr_wr** %9, align 8
  %13 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %6, align 8
  %14 = call i32 @memset(%struct.mlx5_wqe_umr_ctrl_seg* %13, i32 0, i32 32)
  %15 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %9, align 8
  %16 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %4
  %20 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %21 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MLX5_IB_SEND_UMR_FAIL_IF_FREE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @MLX5_UMR_CHECK_FREE, align 4
  %28 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %6, align 8
  %29 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %34

30:                                               ; preds = %19
  %31 = load i32, i32* @MLX5_UMR_CHECK_NOT_FREE, align 4
  %32 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %6, align 8
  %33 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %4
  %36 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %9, align 8
  %37 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @get_xlt_octo(i32 %38)
  %40 = call i8* @cpu_to_be16(i32 %39)
  %41 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %6, align 8
  %42 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %44 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MLX5_IB_SEND_UMR_UPDATE_XLT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %35
  %50 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %9, align 8
  %51 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @get_xlt_octo(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, 65535
  %56 = call i8* @cpu_to_be16(i32 %55)
  %57 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %6, align 8
  %58 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = ashr i32 %59, 16
  %61 = call i32 @cpu_to_be32(i32 %60)
  %62 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %6, align 8
  %63 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @MLX5_UMR_TRANSLATION_OFFSET_EN, align 4
  %65 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %6, align 8
  %66 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %49, %35
  %70 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %71 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MLX5_IB_SEND_UMR_UPDATE_TRANSLATION, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = call i32 (...) @get_umr_update_translation_mask()
  %78 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %6, align 8
  %79 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %69
  %83 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %84 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MLX5_IB_SEND_UMR_UPDATE_PD_ACCESS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %82
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @get_umr_update_access_mask(i32 %90)
  %92 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %6, align 8
  %93 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = call i32 (...) @get_umr_update_pd_mask()
  %97 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %6, align 8
  %98 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %89, %82
  %102 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %103 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MLX5_IB_SEND_UMR_ENABLE_MR, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = call i32 (...) @get_umr_enable_mr_mask()
  %110 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %6, align 8
  %111 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %108, %101
  %115 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %116 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @MLX5_IB_SEND_UMR_DISABLE_MR, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = call i32 (...) @get_umr_disable_mr_mask()
  %123 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %6, align 8
  %124 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %114
  %128 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %129 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* @MLX5_UMR_INLINE, align 4
  %134 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %6, align 8
  %135 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %132, %127
  %139 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %140 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %6, align 8
  %141 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @be64_to_cpu(i32 %142)
  %144 = call i32 @umr_check_mkey_mask(%struct.mlx5_ib_dev* %139, i32 %143)
  ret i32 %144
}

declare dso_local %struct.mlx5_umr_wr* @umr_wr(%struct.ib_send_wr*) #1

declare dso_local i32 @memset(%struct.mlx5_wqe_umr_ctrl_seg*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @get_xlt_octo(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @get_umr_update_translation_mask(...) #1

declare dso_local i32 @get_umr_update_access_mask(i32) #1

declare dso_local i32 @get_umr_update_pd_mask(...) #1

declare dso_local i32 @get_umr_enable_mr_mask(...) #1

declare dso_local i32 @get_umr_disable_mr_mask(...) #1

declare dso_local i32 @umr_check_mkey_mask(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
