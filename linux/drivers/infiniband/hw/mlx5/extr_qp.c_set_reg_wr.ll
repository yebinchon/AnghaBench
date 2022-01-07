; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_reg_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_reg_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ib_reg_wr = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_ib_mr = type { i32, i32, i32, i32 }
%struct.mlx5_ib_pd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_ib_dev = type { i32 }

@MLX5_IB_SQ_UMR_INLINE_THRESHOLD = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Fast update of %s for MR is disabled\0A\00", align 1
@umr_modify_entity_size_disabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"entity size\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"atomic access\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IB_SEND_INLINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Invalid IB_SEND_INLINE send flag\0A\00", align 1
@MLX5_UMR_CHECK_NOT_FREE = common dso_local global i32 0, align 4
@MLX5_UMR_INLINE = common dso_local global i32 0, align 4
@MLX5_SEND_WQE_BB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_qp*, %struct.ib_reg_wr*, i8**, i32*, i8**, i32)* @set_reg_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_reg_wr(%struct.mlx5_ib_qp* %0, %struct.ib_reg_wr* %1, i8** %2, i32* %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_ib_qp*, align 8
  %9 = alloca %struct.ib_reg_wr*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_ib_mr*, align 8
  %15 = alloca %struct.mlx5_ib_pd*, align 8
  %16 = alloca %struct.mlx5_ib_dev*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %8, align 8
  store %struct.ib_reg_wr* %1, %struct.ib_reg_wr** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %9, align 8
  %22 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.mlx5_ib_mr* @to_mmr(i32 %23)
  store %struct.mlx5_ib_mr* %24, %struct.mlx5_ib_mr** %14, align 8
  %25 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.mlx5_ib_pd* @to_mpd(i32 %28)
  store %struct.mlx5_ib_pd* %29, %struct.mlx5_ib_pd** %15, align 8
  %30 = load %struct.mlx5_ib_pd*, %struct.mlx5_ib_pd** %15, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_pd, %struct.mlx5_ib_pd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.mlx5_ib_dev* @to_mdev(i32 %33)
  store %struct.mlx5_ib_dev* %34, %struct.mlx5_ib_dev** %16, align 8
  %35 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %14, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %14, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %14, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* @MLX5_IB_SQ_UMR_INLINE_THRESHOLD, align 4
  %48 = icmp sle i32 %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %18, align 4
  %50 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %9, align 8
  %51 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %55 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %16, align 8
  %56 = load i32, i32* %19, align 4
  %57 = call i32 @mlx5_ib_can_use_umr(%struct.mlx5_ib_dev* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %6
  %60 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.mlx5_ib_dev* @to_mdev(i32 %63)
  %65 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %16, align 8
  %66 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @umr_modify_entity_size_disabled, align 4
  %69 = call i64 @MLX5_CAP_GEN(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)
  %73 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %189

76:                                               ; preds = %6
  %77 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %9, align 8
  %78 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IB_SEND_INLINE, align 4
  %82 = and i32 %80, %81
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %76
  %86 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %87 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.mlx5_ib_dev* @to_mdev(i32 %89)
  %91 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_warn(%struct.mlx5_ib_dev* %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %7, align 4
  br label %189

94:                                               ; preds = %76
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* @MLX5_UMR_CHECK_NOT_FREE, align 4
  %99 = load i32, i32* %20, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %20, align 4
  br label %101

101:                                              ; preds = %97, %94
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* @MLX5_UMR_INLINE, align 4
  %106 = load i32, i32* %20, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %20, align 4
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i8**, i8*** %10, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %14, align 8
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @set_reg_umr_seg(i8* %110, %struct.mlx5_ib_mr* %111, i32 %112, i32 %113)
  %115 = load i8**, i8*** %10, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr i8, i8* %116, i64 4
  store i8* %117, i8** %115, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = add i64 %120, 0
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 4
  %123 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %124 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %123, i32 0, i32 0
  %125 = load i8**, i8*** %10, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i8**, i8*** %12, align 8
  %129 = call i32 @handle_post_send_edge(i32* %124, i8** %125, i32 %127, i8** %128)
  %130 = load i8**, i8*** %10, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %14, align 8
  %133 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %9, align 8
  %134 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %9, align 8
  %137 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @set_reg_mkey_seg(i8* %131, %struct.mlx5_ib_mr* %132, i32 %135, i32 %138)
  %140 = load i8**, i8*** %10, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr i8, i8* %141, i64 4
  store i8* %142, i8** %140, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = add i64 %145, 0
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 4
  %148 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %149 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %148, i32 0, i32 0
  %150 = load i8**, i8*** %10, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %151, align 4
  %153 = load i8**, i8*** %12, align 8
  %154 = call i32 @handle_post_send_edge(i32* %149, i8** %150, i32 %152, i8** %153)
  %155 = load i32, i32* %18, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %174

157:                                              ; preds = %108
  %158 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %159 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %158, i32 0, i32 0
  %160 = load i8**, i8*** %12, align 8
  %161 = load i8**, i8*** %10, align 8
  %162 = load i32*, i32** %11, align 8
  %163 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %14, align 8
  %164 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %17, align 4
  %167 = call i32 @memcpy_send_wqe(i32* %159, i8** %160, i8** %161, i32* %162, i32 %165, i32 %166)
  %168 = load i32*, i32** %11, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %171 = ashr i32 %170, 4
  %172 = call i32 @ALIGN(i32 %169, i32 %171)
  %173 = load i32*, i32** %11, align 8
  store i32 %172, i32* %173, align 4
  br label %188

174:                                              ; preds = %108
  %175 = load i8**, i8*** %10, align 8
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %14, align 8
  %178 = load %struct.mlx5_ib_pd*, %struct.mlx5_ib_pd** %15, align 8
  %179 = call i32 @set_reg_data_seg(i8* %176, %struct.mlx5_ib_mr* %177, %struct.mlx5_ib_pd* %178)
  %180 = load i8**, i8*** %10, align 8
  %181 = load i8*, i8** %180, align 8
  %182 = getelementptr i8, i8* %181, i64 4
  store i8* %182, i8** %180, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = add i64 %185, 0
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %183, align 4
  br label %188

188:                                              ; preds = %174, %157
  store i32 0, i32* %7, align 4
  br label %189

189:                                              ; preds = %188, %85, %59
  %190 = load i32, i32* %7, align 4
  ret i32 %190
}

declare dso_local %struct.mlx5_ib_mr* @to_mmr(i32) #1

declare dso_local %struct.mlx5_ib_pd* @to_mpd(i32) #1

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx5_ib_can_use_umr(%struct.mlx5_ib_dev*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, ...) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_reg_umr_seg(i8*, %struct.mlx5_ib_mr*, i32, i32) #1

declare dso_local i32 @handle_post_send_edge(i32*, i8**, i32, i8**) #1

declare dso_local i32 @set_reg_mkey_seg(i8*, %struct.mlx5_ib_mr*, i32, i32) #1

declare dso_local i32 @memcpy_send_wqe(i32*, i8**, i8**, i32*, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @set_reg_data_seg(i8*, %struct.mlx5_ib_mr*, %struct.mlx5_ib_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
