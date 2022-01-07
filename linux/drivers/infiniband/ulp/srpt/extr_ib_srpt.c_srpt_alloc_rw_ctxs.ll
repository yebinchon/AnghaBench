; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_alloc_rw_ctxs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_alloc_rw_ctxs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_send_ioctx = type { i32, i32, %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx, %struct.srpt_rdma_ch*, i32 }
%struct.srpt_rw_ctx = type { i32, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32 }
%struct.srpt_rdma_ch = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.srp_direct_buf = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srpt_send_ioctx*, %struct.srp_direct_buf*, i32, %struct.scatterlist**, i32*)* @srpt_alloc_rw_ctxs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srpt_alloc_rw_ctxs(%struct.srpt_send_ioctx* %0, %struct.srp_direct_buf* %1, i32 %2, %struct.scatterlist** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.srpt_send_ioctx*, align 8
  %8 = alloca %struct.srp_direct_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.srpt_rdma_ch*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.srpt_rw_ctx*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.srpt_rw_ctx*, align 8
  store %struct.srpt_send_ioctx* %0, %struct.srpt_send_ioctx** %7, align 8
  store %struct.srp_direct_buf* %1, %struct.srp_direct_buf** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.scatterlist** %3, %struct.scatterlist*** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %7, align 8
  %24 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %23, i32 0, i32 5
  %25 = call i32 @target_reverse_dma_direction(i32* %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %7, align 8
  %27 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %26, i32 0, i32 4
  %28 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %27, align 8
  store %struct.srpt_rdma_ch* %28, %struct.srpt_rdma_ch** %13, align 8
  store %struct.scatterlist* null, %struct.scatterlist** %14, align 8
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %5
  %32 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %7, align 8
  %33 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %32, i32 0, i32 3
  %34 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %7, align 8
  %35 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %34, i32 0, i32 2
  store %struct.srpt_rw_ctx* %33, %struct.srpt_rw_ctx** %35, align 8
  br label %50

36:                                               ; preds = %5
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.srpt_rw_ctx* @kmalloc_array(i32 %37, i32 24, i32 %38)
  %40 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %7, align 8
  %41 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %40, i32 0, i32 2
  store %struct.srpt_rw_ctx* %39, %struct.srpt_rw_ctx** %41, align 8
  %42 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %7, align 8
  %43 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %42, i32 0, i32 2
  %44 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %43, align 8
  %45 = icmp ne %struct.srpt_rw_ctx* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %223

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %31
  %51 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %7, align 8
  %52 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %17, align 4
  br label %54

54:                                               ; preds = %166, %50
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %171

58:                                               ; preds = %54
  %59 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %7, align 8
  %60 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %59, i32 0, i32 2
  %61 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %60, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %61, i64 %63
  store %struct.srpt_rw_ctx* %64, %struct.srpt_rw_ctx** %18, align 8
  %65 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %8, align 8
  %66 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be64_to_cpu(i32 %67)
  store i32 %68, i32* %19, align 4
  %69 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %8, align 8
  %70 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @be32_to_cpu(i32 %71)
  store i32 %72, i32* %20, align 4
  %73 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %8, align 8
  %74 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be32_to_cpu(i32 %75)
  store i32 %76, i32* %21, align 4
  %77 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %18, align 8
  %78 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %77, i32 0, i32 1
  %79 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %18, align 8
  %80 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %79, i32 0, i32 0
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %83, 1
  %85 = icmp slt i32 %82, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @target_alloc_sgl(%struct.scatterlist** %78, i32* %80, i32 %81, i32 0, i32 %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %58
  br label %172

91:                                               ; preds = %58
  %92 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %18, align 8
  %93 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %92, i32 0, i32 2
  %94 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %13, align 8
  %95 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %13, align 8
  %98 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %18, align 8
  %103 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %102, i32 0, i32 1
  %104 = load %struct.scatterlist*, %struct.scatterlist** %103, align 8
  %105 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %18, align 8
  %106 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @rdma_rw_ctx_init(i32* %93, i32 %96, i32 %101, %struct.scatterlist* %104, i32 %107, i32 0, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %91
  %115 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %18, align 8
  %116 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %115, i32 0, i32 1
  %117 = load %struct.scatterlist*, %struct.scatterlist** %116, align 8
  %118 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %18, align 8
  %119 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @target_free_sgl(%struct.scatterlist* %117, i32 %120)
  br label %172

122:                                              ; preds = %91
  %123 = load i32, i32* %16, align 4
  %124 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %7, align 8
  %125 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %7, align 8
  %129 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %133 = icmp ne %struct.scatterlist* %132, null
  br i1 %133, label %134, label %148

134:                                              ; preds = %122
  %135 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sub i32 %136, 1
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %135, i64 %138
  %140 = call i32 @sg_unmark_end(%struct.scatterlist* %139)
  %141 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %142 = load i32, i32* %15, align 4
  %143 = add i32 %142, 1
  %144 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %18, align 8
  %145 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %144, i32 0, i32 1
  %146 = load %struct.scatterlist*, %struct.scatterlist** %145, align 8
  %147 = call i32 @sg_chain(%struct.scatterlist* %141, i32 %143, %struct.scatterlist* %146)
  br label %153

148:                                              ; preds = %122
  %149 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %18, align 8
  %150 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %149, i32 0, i32 1
  %151 = load %struct.scatterlist*, %struct.scatterlist** %150, align 8
  %152 = load %struct.scatterlist**, %struct.scatterlist*** %10, align 8
  store %struct.scatterlist* %151, %struct.scatterlist** %152, align 8
  br label %153

153:                                              ; preds = %148, %134
  %154 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %18, align 8
  %155 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %154, i32 0, i32 1
  %156 = load %struct.scatterlist*, %struct.scatterlist** %155, align 8
  store %struct.scatterlist* %156, %struct.scatterlist** %14, align 8
  %157 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %18, align 8
  %158 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %15, align 4
  %160 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %18, align 8
  %161 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32*, i32** %11, align 8
  %164 = load i32, i32* %163, align 4
  %165 = add i32 %164, %162
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %153
  %167 = load i32, i32* %17, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %17, align 4
  %169 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %8, align 8
  %170 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %169, i32 1
  store %struct.srp_direct_buf* %170, %struct.srp_direct_buf** %8, align 8
  br label %54

171:                                              ; preds = %54
  store i32 0, i32* %6, align 4
  br label %223

172:                                              ; preds = %114, %90
  br label %173

173:                                              ; preds = %177, %172
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %17, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %209

177:                                              ; preds = %173
  %178 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %7, align 8
  %179 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %178, i32 0, i32 2
  %180 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %179, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %180, i64 %182
  store %struct.srpt_rw_ctx* %183, %struct.srpt_rw_ctx** %22, align 8
  %184 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %22, align 8
  %185 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %184, i32 0, i32 2
  %186 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %13, align 8
  %187 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %13, align 8
  %190 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %189, i32 0, i32 0
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %22, align 8
  %195 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %194, i32 0, i32 1
  %196 = load %struct.scatterlist*, %struct.scatterlist** %195, align 8
  %197 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %22, align 8
  %198 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = call i32 @rdma_rw_ctx_destroy(i32* %185, i32 %188, i32 %193, %struct.scatterlist* %196, i32 %199, i32 %200)
  %202 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %22, align 8
  %203 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %202, i32 0, i32 1
  %204 = load %struct.scatterlist*, %struct.scatterlist** %203, align 8
  %205 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %22, align 8
  %206 = getelementptr inbounds %struct.srpt_rw_ctx, %struct.srpt_rw_ctx* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @target_free_sgl(%struct.scatterlist* %204, i32 %207)
  br label %173

209:                                              ; preds = %173
  %210 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %7, align 8
  %211 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %210, i32 0, i32 2
  %212 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %211, align 8
  %213 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %7, align 8
  %214 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %213, i32 0, i32 3
  %215 = icmp ne %struct.srpt_rw_ctx* %212, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %209
  %217 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %7, align 8
  %218 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %217, i32 0, i32 2
  %219 = load %struct.srpt_rw_ctx*, %struct.srpt_rw_ctx** %218, align 8
  %220 = call i32 @kfree(%struct.srpt_rw_ctx* %219)
  br label %221

221:                                              ; preds = %216, %209
  %222 = load i32, i32* %16, align 4
  store i32 %222, i32* %6, align 4
  br label %223

223:                                              ; preds = %221, %171, %46
  %224 = load i32, i32* %6, align 4
  ret i32 %224
}

declare dso_local i32 @target_reverse_dma_direction(i32*) #1

declare dso_local %struct.srpt_rw_ctx* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @target_alloc_sgl(%struct.scatterlist**, i32*, i32, i32, i32) #1

declare dso_local i32 @rdma_rw_ctx_init(i32*, i32, i32, %struct.scatterlist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @target_free_sgl(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_unmark_end(%struct.scatterlist*) #1

declare dso_local i32 @sg_chain(%struct.scatterlist*, i32, %struct.scatterlist*) #1

declare dso_local i32 @rdma_rw_ctx_destroy(i32*, i32, i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @kfree(%struct.srpt_rw_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
