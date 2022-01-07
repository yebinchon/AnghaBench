; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_sig_data_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_set_sig_data_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_send_wr = type { i32 }
%struct.ib_mr = type { i32 }
%struct.ib_sig_attrs = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_ib_qp = type { i32 }
%struct.mlx5_bsf = type { i32 }
%struct.mlx5_ib_mr = type { i32, i64, i32, i64, %struct.TYPE_5__, i64, %struct.mlx5_ib_mr* }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_klm = type { i8*, i8*, i8* }
%struct.mlx5_stride_block_ctrl_seg = type { i8*, i8*, i8*, i8* }
%struct.mlx5_stride_block_entry = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [26 x i8] c"Bad block size given: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5_STRIDE_BLOCK_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_send_wr*, %struct.ib_mr*, %struct.ib_sig_attrs*, %struct.mlx5_ib_qp*, i8**, i32*, i8**)* @set_sig_data_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sig_data_segment(%struct.ib_send_wr* %0, %struct.ib_mr* %1, %struct.ib_sig_attrs* %2, %struct.mlx5_ib_qp* %3, i8** %4, i32* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_send_wr*, align 8
  %10 = alloca %struct.ib_mr*, align 8
  %11 = alloca %struct.ib_sig_attrs*, align 8
  %12 = alloca %struct.mlx5_ib_qp*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.mlx5_bsf*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.mlx5_ib_mr*, align 8
  %27 = alloca %struct.mlx5_ib_mr*, align 8
  %28 = alloca %struct.mlx5_klm*, align 8
  %29 = alloca %struct.mlx5_stride_block_ctrl_seg*, align 8
  %30 = alloca %struct.mlx5_stride_block_entry*, align 8
  %31 = alloca %struct.mlx5_stride_block_entry*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.ib_send_wr* %0, %struct.ib_send_wr** %9, align 8
  store %struct.ib_mr* %1, %struct.ib_mr** %10, align 8
  store %struct.ib_sig_attrs* %2, %struct.ib_sig_attrs** %11, align 8
  store %struct.mlx5_ib_qp* %3, %struct.mlx5_ib_qp** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i64 0, i64* %22, align 8
  store i32 0, i32* %23, align 4
  %34 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %35 = call %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr* %34)
  store %struct.mlx5_ib_mr* %35, %struct.mlx5_ib_mr** %26, align 8
  %36 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %26, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %36, i32 0, i32 6
  %38 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %37, align 8
  store %struct.mlx5_ib_mr* %38, %struct.mlx5_ib_mr** %27, align 8
  %39 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %27, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %17, align 4
  %42 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %27, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %18, align 4
  %46 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %27, align 8
  %47 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %19, align 8
  %49 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %27, align 8
  %50 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %7
  %54 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %27, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %20, align 4
  %57 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %27, align 8
  %58 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %21, align 4
  %61 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %27, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %22, align 8
  store i32 1, i32* %23, align 4
  br label %64

64:                                               ; preds = %53, %7
  %65 = load i32, i32* %23, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %21, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = load i64, i64* %19, align 8
  %73 = load i64, i64* %22, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %20, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %75, %64
  %80 = load i8**, i8*** %13, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = bitcast i8* %81 to %struct.mlx5_klm*
  store %struct.mlx5_klm* %82, %struct.mlx5_klm** %28, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call i8* @cpu_to_be32(i32 %83)
  %85 = load %struct.mlx5_klm*, %struct.mlx5_klm** %28, align 8
  %86 = getelementptr inbounds %struct.mlx5_klm, %struct.mlx5_klm* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %18, align 4
  %88 = call i8* @cpu_to_be32(i32 %87)
  %89 = load %struct.mlx5_klm*, %struct.mlx5_klm** %28, align 8
  %90 = getelementptr inbounds %struct.mlx5_klm, %struct.mlx5_klm* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load i64, i64* %19, align 8
  %92 = call i8* @cpu_to_be64(i64 %91)
  %93 = load %struct.mlx5_klm*, %struct.mlx5_klm** %28, align 8
  %94 = getelementptr inbounds %struct.mlx5_klm, %struct.mlx5_klm* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = call i32 @ALIGN(i32 24, i32 64)
  store i32 %95, i32* %25, align 4
  br label %179

96:                                               ; preds = %75, %71, %67
  %97 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %11, align 8
  %98 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %32, align 4
  %103 = load i8**, i8*** %13, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = bitcast i8* %104 to %struct.mlx5_stride_block_ctrl_seg*
  store %struct.mlx5_stride_block_ctrl_seg* %105, %struct.mlx5_stride_block_ctrl_seg** %29, align 8
  %106 = load %struct.mlx5_stride_block_ctrl_seg*, %struct.mlx5_stride_block_ctrl_seg** %29, align 8
  %107 = bitcast %struct.mlx5_stride_block_ctrl_seg* %106 to i8*
  %108 = getelementptr i8, i8* %107, i64 32
  %109 = bitcast i8* %108 to %struct.mlx5_stride_block_entry*
  store %struct.mlx5_stride_block_entry* %109, %struct.mlx5_stride_block_entry** %30, align 8
  %110 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %30, align 8
  %111 = bitcast %struct.mlx5_stride_block_entry* %110 to i8*
  %112 = getelementptr i8, i8* %111, i64 32
  %113 = bitcast i8* %112 to %struct.mlx5_stride_block_entry*
  store %struct.mlx5_stride_block_entry* %113, %struct.mlx5_stride_block_entry** %31, align 8
  %114 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %11, align 8
  %115 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @prot_field_size(i32 %117)
  store i32 %118, i32* %33, align 4
  %119 = load i32, i32* %33, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %96
  %122 = load i32, i32* %32, align 4
  %123 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %8, align 4
  br label %226

126:                                              ; preds = %96
  %127 = load i32, i32* %32, align 4
  %128 = load i32, i32* %33, align 4
  %129 = add nsw i32 %127, %128
  %130 = call i8* @cpu_to_be32(i32 %129)
  %131 = load %struct.mlx5_stride_block_ctrl_seg*, %struct.mlx5_stride_block_ctrl_seg** %29, align 8
  %132 = getelementptr inbounds %struct.mlx5_stride_block_ctrl_seg, %struct.mlx5_stride_block_ctrl_seg* %131, i32 0, i32 3
  store i8* %130, i8** %132, align 8
  %133 = load i32, i32* @MLX5_STRIDE_BLOCK_OP, align 4
  %134 = call i8* @cpu_to_be32(i32 %133)
  %135 = load %struct.mlx5_stride_block_ctrl_seg*, %struct.mlx5_stride_block_ctrl_seg** %29, align 8
  %136 = getelementptr inbounds %struct.mlx5_stride_block_ctrl_seg, %struct.mlx5_stride_block_ctrl_seg* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %32, align 4
  %139 = sdiv i32 %137, %138
  %140 = call i8* @cpu_to_be32(i32 %139)
  %141 = load %struct.mlx5_stride_block_ctrl_seg*, %struct.mlx5_stride_block_ctrl_seg** %29, align 8
  %142 = getelementptr inbounds %struct.mlx5_stride_block_ctrl_seg, %struct.mlx5_stride_block_ctrl_seg* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = call i8* @cpu_to_be16(i32 2)
  %144 = load %struct.mlx5_stride_block_ctrl_seg*, %struct.mlx5_stride_block_ctrl_seg** %29, align 8
  %145 = getelementptr inbounds %struct.mlx5_stride_block_ctrl_seg, %struct.mlx5_stride_block_ctrl_seg* %144, i32 0, i32 0
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* %32, align 4
  %147 = call i8* @cpu_to_be16(i32 %146)
  %148 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %30, align 8
  %149 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* %18, align 4
  %151 = call i8* @cpu_to_be32(i32 %150)
  %152 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %30, align 8
  %153 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  %154 = load i64, i64* %19, align 8
  %155 = call i8* @cpu_to_be64(i64 %154)
  %156 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %30, align 8
  %157 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = load i32, i32* %32, align 4
  %159 = call i8* @cpu_to_be16(i32 %158)
  %160 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %30, align 8
  %161 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  %162 = load i32, i32* %33, align 4
  %163 = call i8* @cpu_to_be16(i32 %162)
  %164 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %31, align 8
  %165 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %164, i32 0, i32 3
  store i8* %163, i8** %165, align 8
  %166 = load i32, i32* %21, align 4
  %167 = call i8* @cpu_to_be32(i32 %166)
  %168 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %31, align 8
  %169 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %168, i32 0, i32 2
  store i8* %167, i8** %169, align 8
  %170 = load i64, i64* %22, align 8
  %171 = call i8* @cpu_to_be64(i64 %170)
  %172 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %31, align 8
  %173 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  %174 = load i32, i32* %33, align 4
  %175 = call i8* @cpu_to_be16(i32 %174)
  %176 = load %struct.mlx5_stride_block_entry*, %struct.mlx5_stride_block_entry** %31, align 8
  %177 = getelementptr inbounds %struct.mlx5_stride_block_entry, %struct.mlx5_stride_block_entry* %176, i32 0, i32 0
  store i8* %175, i8** %177, align 8
  %178 = call i32 @ALIGN(i32 96, i32 64)
  store i32 %178, i32* %25, align 4
  br label %179

179:                                              ; preds = %126, %79
  %180 = load i32, i32* %25, align 4
  %181 = load i8**, i8*** %13, align 8
  %182 = load i8*, i8** %181, align 8
  %183 = sext i32 %180 to i64
  %184 = getelementptr i8, i8* %182, i64 %183
  store i8* %184, i8** %181, align 8
  %185 = load i32, i32* %25, align 4
  %186 = sdiv i32 %185, 16
  %187 = load i32*, i32** %14, align 8
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, %186
  store i32 %189, i32* %187, align 4
  %190 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %191 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %190, i32 0, i32 0
  %192 = load i8**, i8*** %13, align 8
  %193 = load i32*, i32** %14, align 8
  %194 = load i32, i32* %193, align 4
  %195 = load i8**, i8*** %15, align 8
  %196 = call i32 @handle_post_send_edge(i32* %191, i8** %192, i32 %194, i8** %195)
  %197 = load i8**, i8*** %13, align 8
  %198 = load i8*, i8** %197, align 8
  %199 = bitcast i8* %198 to %struct.mlx5_bsf*
  store %struct.mlx5_bsf* %199, %struct.mlx5_bsf** %16, align 8
  %200 = load %struct.ib_mr*, %struct.ib_mr** %10, align 8
  %201 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %11, align 8
  %202 = load %struct.mlx5_bsf*, %struct.mlx5_bsf** %16, align 8
  %203 = load i32, i32* %17, align 4
  %204 = call i32 @mlx5_set_bsf(%struct.ib_mr* %200, %struct.ib_sig_attrs* %201, %struct.mlx5_bsf* %202, i32 %203)
  store i32 %204, i32* %24, align 4
  %205 = load i32, i32* %24, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %179
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %8, align 4
  br label %226

210:                                              ; preds = %179
  %211 = load i8**, i8*** %13, align 8
  %212 = load i8*, i8** %211, align 8
  %213 = getelementptr i8, i8* %212, i64 4
  store i8* %213, i8** %211, align 8
  %214 = load i32*, i32** %14, align 8
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = add i64 %216, 0
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %214, align 4
  %219 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %220 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %219, i32 0, i32 0
  %221 = load i8**, i8*** %13, align 8
  %222 = load i32*, i32** %14, align 8
  %223 = load i32, i32* %222, align 4
  %224 = load i8**, i8*** %15, align 8
  %225 = call i32 @handle_post_send_edge(i32* %220, i8** %221, i32 %223, i8** %224)
  store i32 0, i32* %8, align 4
  br label %226

226:                                              ; preds = %210, %207, %121
  %227 = load i32, i32* %8, align 4
  ret i32 %227
}

declare dso_local %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @prot_field_size(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @handle_post_send_edge(i32*, i8**, i32, i8**) #1

declare dso_local i32 @mlx5_set_bsf(%struct.ib_mr*, %struct.ib_sig_attrs*, %struct.mlx5_bsf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
