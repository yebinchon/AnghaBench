; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_pi_umr_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_pi_umr_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_send_wr = type { i64 }
%struct.mlx5_ib_qp = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ib_reg_wr = type { i32, i32 }
%struct.mlx5_ib_mr = type { %struct.TYPE_9__*, %struct.TYPE_7__, %struct.mlx5_ib_mr* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.ib_sig_attrs* }
%struct.ib_sig_attrs = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_SIG_TYPE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_send_wr*, %struct.mlx5_ib_qp*, i8**, i32*, i8**)* @set_pi_umr_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pi_umr_wr(%struct.ib_send_wr* %0, %struct.mlx5_ib_qp* %1, i8** %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_send_wr*, align 8
  %8 = alloca %struct.mlx5_ib_qp*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.ib_reg_wr*, align 8
  %13 = alloca %struct.mlx5_ib_mr*, align 8
  %14 = alloca %struct.mlx5_ib_mr*, align 8
  %15 = alloca %struct.ib_sig_attrs*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ib_send_wr* %0, %struct.ib_send_wr** %7, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %20 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %21 = call %struct.ib_reg_wr* @reg_wr(%struct.ib_send_wr* %20)
  store %struct.ib_reg_wr* %21, %struct.ib_reg_wr** %12, align 8
  %22 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %12, align 8
  %23 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.mlx5_ib_mr* @to_mmr(i32 %24)
  store %struct.mlx5_ib_mr* %25, %struct.mlx5_ib_mr** %13, align 8
  %26 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %13, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %26, i32 0, i32 2
  %28 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %27, align 8
  store %struct.mlx5_ib_mr* %28, %struct.mlx5_ib_mr** %14, align 8
  %29 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %13, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %31, align 8
  store %struct.ib_sig_attrs* %32, %struct.ib_sig_attrs** %15, align 8
  %33 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %34 = call %struct.TYPE_10__* @get_pd(%struct.mlx5_ib_qp* %33)
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %16, align 4
  %37 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %38 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %82, label %44

44:                                               ; preds = %5
  %45 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %12, align 8
  %46 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %49 = and i32 %47, %48
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %82, label %52

52:                                               ; preds = %44
  %53 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %13, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = icmp ne %struct.TYPE_9__* %55, null
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %82, label %61

61:                                               ; preds = %52
  %62 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %63 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %61
  %72 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %13, align 8
  %73 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71, %61, %52, %44, %5
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %164

85:                                               ; preds = %71
  %86 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %14, align 8
  %87 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %18, align 4
  %90 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %15, align 8
  %91 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IB_SIG_TYPE_NONE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  store i32 48, i32* %17, align 4
  br label %98

97:                                               ; preds = %85
  store i32 4, i32* %17, align 4
  br label %98

98:                                               ; preds = %97, %96
  %99 = load i8**, i8*** %9, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @set_sig_umr_segment(i8* %100, i32 %101)
  %103 = load i8**, i8*** %9, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr i8, i8* %104, i64 4
  store i8* %105, i8** %103, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 %108, 0
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  %111 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %112 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %111, i32 0, i32 0
  %113 = load i8**, i8*** %9, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i8**, i8*** %11, align 8
  %117 = call i32 @handle_post_send_edge(i32* %112, i8** %113, i32 %115, i8** %116)
  %118 = load i8**, i8*** %9, align 8
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %12, align 8
  %121 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %12, align 8
  %124 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @set_sig_mkey_segment(i8* %119, i32 %122, i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = load i8**, i8*** %9, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr i8, i8* %131, i64 4
  store i8* %132, i8** %130, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = add i64 %135, 0
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 4
  %138 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %139 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %138, i32 0, i32 0
  %140 = load i8**, i8*** %9, align 8
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i8**, i8*** %11, align 8
  %144 = call i32 @handle_post_send_edge(i32* %139, i8** %140, i32 %142, i8** %143)
  %145 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %146 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %12, align 8
  %147 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %15, align 8
  %150 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %151 = load i8**, i8*** %9, align 8
  %152 = load i32*, i32** %10, align 8
  %153 = load i8**, i8*** %11, align 8
  %154 = call i32 @set_sig_data_segment(%struct.ib_send_wr* %145, i32 %148, %struct.ib_sig_attrs* %149, %struct.mlx5_ib_qp* %150, i8** %151, i32* %152, i8** %153)
  store i32 %154, i32* %19, align 4
  %155 = load i32, i32* %19, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %98
  %158 = load i32, i32* %19, align 4
  store i32 %158, i32* %6, align 4
  br label %164

159:                                              ; preds = %98
  %160 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %13, align 8
  %161 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %160, i32 0, i32 0
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  store i32 0, i32* %163, align 4
  store i32 0, i32* %6, align 4
  br label %164

164:                                              ; preds = %159, %157, %82
  %165 = load i32, i32* %6, align 4
  ret i32 %165
}

declare dso_local %struct.ib_reg_wr* @reg_wr(%struct.ib_send_wr*) #1

declare dso_local %struct.mlx5_ib_mr* @to_mmr(i32) #1

declare dso_local %struct.TYPE_10__* @get_pd(%struct.mlx5_ib_qp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_sig_umr_segment(i8*, i32) #1

declare dso_local i32 @handle_post_send_edge(i32*, i8**, i32, i8**) #1

declare dso_local i32 @set_sig_mkey_segment(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_sig_data_segment(%struct.ib_send_wr*, i32, %struct.ib_sig_attrs*, %struct.mlx5_ib_qp*, i8**, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
