; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_query_qp_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_query_qp_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i32 }
%struct.mlx5_qp_context = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@query_qp_out = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qpc = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_QPT_UC = common dso_local global i64 0, align 8
@MLX5_QP_STATE_SQ_DRAINING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, %struct.ib_qp_attr*)* @query_qp_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_qp_attr(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1, %struct.ib_qp_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_qp_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %6, align 8
  store %struct.ib_qp_attr* %2, %struct.ib_qp_attr** %7, align 8
  %13 = load i32, i32* @query_qp_out, align 4
  %14 = call i32 @MLX5_ST_SZ_BYTES(i32 %13)
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kzalloc(i32 %15, i32 %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %219

23:                                               ; preds = %3
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @mlx5_core_qp_query(i32 %26, i32* %30, i32* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %215

37:                                               ; preds = %23
  %38 = load i32, i32* @query_qp_out, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* @qpc, align 4
  %41 = call i64 @MLX5_ADDR_OF(i32 %38, i32* %39, i32 %40)
  %42 = inttoptr i64 %41 to %struct.mlx5_qp_context*
  store %struct.mlx5_qp_context* %42, %struct.mlx5_qp_context** %9, align 8
  %43 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %44 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be32_to_cpu(i32 %45)
  %47 = ashr i32 %46, 28
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @to_ib_qp_state(i32 %48)
  %50 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %53 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 5
  %56 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %57 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %59 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be32_to_cpu(i32 %60)
  %62 = ashr i32 %61, 11
  %63 = and i32 %62, 3
  %64 = call i32 @to_ib_mig_state(i32 %63)
  %65 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %66 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %65, i32 0, i32 20
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %68 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be32_to_cpu(i32 %69)
  %71 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %72 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %74 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be32_to_cpu(i32 %75)
  %77 = and i32 %76, 16777215
  %78 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %79 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %81 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @be32_to_cpu(i32 %82)
  %84 = and i32 %83, 16777215
  %85 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %86 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %88 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @be32_to_cpu(i32 %89)
  %91 = and i32 %90, 16777215
  %92 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %93 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %95 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @be32_to_cpu(i32 %96)
  %98 = call i32 @to_ib_qp_access_flags(i32 %97)
  %99 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %100 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %99, i32 0, i32 19
  store i32 %98, i32* %100, align 4
  %101 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %102 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @IB_QPT_RC, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %37
  %108 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %109 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @IB_QPT_UC, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %139

114:                                              ; preds = %107, %37
  %115 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %116 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %117 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %116, i32 0, i32 18
  %118 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %119 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %118, i32 0, i32 3
  %120 = call i32 @to_rdma_ah_attr(%struct.mlx5_ib_dev* %115, i32* %117, %struct.TYPE_8__* %119)
  %121 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %122 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %123 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %122, i32 0, i32 15
  %124 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %125 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %124, i32 0, i32 1
  %126 = call i32 @to_rdma_ah_attr(%struct.mlx5_ib_dev* %121, i32* %123, %struct.TYPE_8__* %125)
  %127 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %128 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @be16_to_cpu(i32 %130)
  %132 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %133 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %132, i32 0, i32 17
  store i8* %131, i8** %133, align 8
  %134 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %135 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %134, i32 0, i32 15
  %136 = call i32 @rdma_ah_get_port_num(i32* %135)
  %137 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %138 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %137, i32 0, i32 16
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %114, %107
  %140 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %141 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @be16_to_cpu(i32 %143)
  %145 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %146 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %145, i32 0, i32 14
  store i8* %144, i8** %146, align 8
  %147 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %148 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %152 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %151, i32 0, i32 13
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @MLX5_QP_STATE_SQ_DRAINING, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %158 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 4
  %159 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %160 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @be32_to_cpu(i32 %161)
  %163 = ashr i32 %162, 21
  %164 = and i32 %163, 7
  %165 = shl i32 1, %164
  %166 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %167 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %166, i32 0, i32 6
  store i32 %165, i32* %167, align 8
  %168 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %169 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @be32_to_cpu(i32 %170)
  %172 = ashr i32 %171, 21
  %173 = and i32 %172, 7
  %174 = shl i32 1, %173
  %175 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %176 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %175, i32 0, i32 7
  store i32 %174, i32* %176, align 4
  %177 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %178 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @be32_to_cpu(i32 %179)
  %181 = ashr i32 %180, 24
  %182 = and i32 %181, 31
  %183 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %184 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %183, i32 0, i32 8
  store i32 %182, i32* %184, align 8
  %185 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %186 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = ashr i32 %188, 3
  %190 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %191 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %190, i32 0, i32 9
  store i32 %189, i32* %191, align 4
  %192 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %193 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @be32_to_cpu(i32 %194)
  %196 = ashr i32 %195, 16
  %197 = and i32 %196, 7
  %198 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %199 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %198, i32 0, i32 10
  store i32 %197, i32* %199, align 8
  %200 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %201 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @be32_to_cpu(i32 %202)
  %204 = ashr i32 %203, 13
  %205 = and i32 %204, 7
  %206 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %207 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %206, i32 0, i32 11
  store i32 %205, i32* %207, align 4
  %208 = load %struct.mlx5_qp_context*, %struct.mlx5_qp_context** %9, align 8
  %209 = getelementptr inbounds %struct.mlx5_qp_context, %struct.mlx5_qp_context* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = ashr i32 %211, 3
  %213 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %214 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %213, i32 0, i32 12
  store i32 %212, i32* %214, align 8
  br label %215

215:                                              ; preds = %139, %36
  %216 = load i32*, i32** %11, align 8
  %217 = call i32 @kfree(i32* %216)
  %218 = load i32, i32* %12, align 4
  store i32 %218, i32* %4, align 4
  br label %219

219:                                              ; preds = %215, %20
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_core_qp_query(i32, i32*, i32*, i32) #1

declare dso_local i64 @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @to_ib_qp_state(i32) #1

declare dso_local i32 @to_ib_mig_state(i32) #1

declare dso_local i32 @to_ib_qp_access_flags(i32) #1

declare dso_local i32 @to_rdma_ah_attr(%struct.mlx5_ib_dev*, i32*, %struct.TYPE_8__*) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @rdma_ah_get_port_num(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
