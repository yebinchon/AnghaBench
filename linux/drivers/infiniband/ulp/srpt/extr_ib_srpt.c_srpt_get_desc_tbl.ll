; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_get_desc_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_get_desc_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_recv_ioctx = type { i32 }
%struct.srpt_send_ioctx = type { %struct.scatterlist, %struct.srpt_recv_ioctx*, %struct.TYPE_3__ }
%struct.scatterlist = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.srp_cmd = type { i32, i32, i32 }
%struct.srp_direct_buf = type { i32 }
%struct.srp_indirect_buf = type { %struct.srp_direct_buf*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.srp_imm_buf = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@SRP_DATA_DESC_DIRECT = common dso_local global i32 0, align 4
@SRP_DATA_DESC_INDIRECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"received unsupported SRP_CMD request type (%u out + %u in != %u / %zu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SRP_DATA_DESC_IMM = common dso_local global i32 0, align 4
@srp_max_req_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Immediate data (length %d + %d) exceeds request size %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Received too few data - %d < %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Received invalid write request\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Internal error - the receive buffers are not aligned properly.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srpt_recv_ioctx*, %struct.srpt_send_ioctx*, %struct.srp_cmd*, i32*, %struct.scatterlist**, i32*, i32*, i32)* @srpt_get_desc_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srpt_get_desc_tbl(%struct.srpt_recv_ioctx* %0, %struct.srpt_send_ioctx* %1, %struct.srp_cmd* %2, i32* %3, %struct.scatterlist** %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.srpt_recv_ioctx*, align 8
  %11 = alloca %struct.srpt_send_ioctx*, align 8
  %12 = alloca %struct.srp_cmd*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.scatterlist**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.srp_direct_buf*, align 8
  %19 = alloca %struct.srp_indirect_buf*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.srp_imm_buf*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.srpt_recv_ioctx* %0, %struct.srpt_recv_ioctx** %10, align 8
  store %struct.srpt_send_ioctx* %1, %struct.srpt_send_ioctx** %11, align 8
  store %struct.srp_cmd* %2, %struct.srp_cmd** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.scatterlist** %4, %struct.scatterlist*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32*, i32** %16, align 8
  %31 = icmp ne i32* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %36 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 15
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %8
  %41 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %42 = load i32*, i32** %13, align 8
  store i32 %41, i32* %42, align 4
  br label %56

43:                                               ; preds = %8
  %44 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %45 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @DMA_TO_DEVICE, align 4
  %51 = load i32*, i32** %13, align 8
  store i32 %50, i32* %51, align 4
  br label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @DMA_NONE, align 4
  %54 = load i32*, i32** %13, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %40
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %11, align 8
  %60 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %63 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 15
  %66 = load i32, i32* @SRP_DATA_DESC_DIRECT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %56
  %69 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %70 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 4
  %73 = load i32, i32* @SRP_DATA_DESC_DIRECT, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %68, %56
  %76 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %77 = call i8* @srpt_get_desc_buf(%struct.srp_cmd* %76)
  %78 = bitcast i8* %77 to %struct.srp_direct_buf*
  store %struct.srp_direct_buf* %78, %struct.srp_direct_buf** %18, align 8
  %79 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %18, align 8
  %80 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @be32_to_cpu(i32 %81)
  %83 = load i32*, i32** %16, align 8
  store i32 %82, i32* %83, align 4
  %84 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %11, align 8
  %85 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %18, align 8
  %86 = load %struct.scatterlist**, %struct.scatterlist*** %14, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @srpt_alloc_rw_ctxs(%struct.srpt_send_ioctx* %84, %struct.srp_direct_buf* %85, i32 1, %struct.scatterlist** %86, i32* %87)
  store i32 %88, i32* %9, align 4
  br label %236

89:                                               ; preds = %68
  %90 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %91 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 15
  %94 = load i32, i32* @SRP_DATA_DESC_INDIRECT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %98 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 4
  %101 = load i32, i32* @SRP_DATA_DESC_INDIRECT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %153

103:                                              ; preds = %96, %89
  %104 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %105 = call i8* @srpt_get_desc_buf(%struct.srp_cmd* %104)
  %106 = bitcast i8* %105 to %struct.srp_indirect_buf*
  store %struct.srp_indirect_buf* %106, %struct.srp_indirect_buf** %19, align 8
  %107 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %19, align 8
  %108 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @be32_to_cpu(i32 %110)
  %112 = sext i32 %111 to i64
  %113 = udiv i64 %112, 4
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %20, align 4
  %115 = load i32, i32* %20, align 4
  %116 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %117 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %120 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %118, %121
  %123 = icmp sgt i32 %115, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %103
  %125 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %126 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %129 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %19, align 8
  %132 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @be32_to_cpu(i32 %134)
  %136 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %130, i32 %135, i64 4)
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %9, align 4
  br label %236

139:                                              ; preds = %103
  %140 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %19, align 8
  %141 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @be32_to_cpu(i32 %142)
  %144 = load i32*, i32** %16, align 8
  store i32 %143, i32* %144, align 4
  %145 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %11, align 8
  %146 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %19, align 8
  %147 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %146, i32 0, i32 0
  %148 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %147, align 8
  %149 = load i32, i32* %20, align 4
  %150 = load %struct.scatterlist**, %struct.scatterlist*** %14, align 8
  %151 = load i32*, i32** %15, align 8
  %152 = call i32 @srpt_alloc_rw_ctxs(%struct.srpt_send_ioctx* %145, %struct.srp_direct_buf* %148, i32 %149, %struct.scatterlist** %150, i32* %151)
  store i32 %152, i32* %9, align 4
  br label %236

153:                                              ; preds = %96
  %154 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %155 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = ashr i32 %156, 4
  %158 = load i32, i32* @SRP_DATA_DESC_IMM, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %234

160:                                              ; preds = %153
  %161 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %162 = call i8* @srpt_get_desc_buf(%struct.srp_cmd* %161)
  %163 = bitcast i8* %162 to %struct.srp_imm_buf*
  store %struct.srp_imm_buf* %163, %struct.srp_imm_buf** %21, align 8
  %164 = load %struct.srp_cmd*, %struct.srp_cmd** %12, align 8
  %165 = bitcast %struct.srp_cmd* %164 to i8*
  %166 = load i32, i32* %17, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr i8, i8* %165, i64 %167
  store i8* %168, i8** %22, align 8
  %169 = load %struct.srp_imm_buf*, %struct.srp_imm_buf** %21, align 8
  %170 = getelementptr inbounds %struct.srp_imm_buf, %struct.srp_imm_buf* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @be32_to_cpu(i32 %171)
  store i32 %172, i32* %23, align 4
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* %23, align 4
  %175 = add nsw i32 %173, %174
  store i32 %175, i32* %24, align 4
  %176 = load i32, i32* %24, align 4
  %177 = load i32, i32* @srp_max_req_size, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %160
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %23, align 4
  %182 = load i32, i32* @srp_max_req_size, align 4
  %183 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %180, i32 %181, i32 %182)
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %9, align 4
  br label %236

186:                                              ; preds = %160
  %187 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %10, align 8
  %188 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %24, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %186
  %193 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %10, align 8
  %194 = getelementptr inbounds %struct.srpt_recv_ioctx, %struct.srpt_recv_ioctx* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %24, align 4
  %197 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %195, i32 %196)
  %198 = load i32, i32* @EIO, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %9, align 4
  br label %236

200:                                              ; preds = %186
  %201 = load %struct.srp_imm_buf*, %struct.srp_imm_buf** %21, align 8
  %202 = getelementptr inbounds %struct.srp_imm_buf, %struct.srp_imm_buf* %201, i64 1
  %203 = bitcast %struct.srp_imm_buf* %202 to i8*
  %204 = load i8*, i8** %22, align 8
  %205 = icmp ugt i8* %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %9, align 4
  br label %236

210:                                              ; preds = %200
  %211 = load i32, i32* %23, align 4
  %212 = load i32*, i32** %16, align 8
  store i32 %211, i32* %212, align 4
  %213 = load %struct.srpt_recv_ioctx*, %struct.srpt_recv_ioctx** %10, align 8
  %214 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %11, align 8
  %215 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %214, i32 0, i32 1
  store %struct.srpt_recv_ioctx* %213, %struct.srpt_recv_ioctx** %215, align 8
  %216 = load i8*, i8** %22, align 8
  %217 = ptrtoint i8* %216 to i64
  %218 = and i64 %217, 511
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %210
  %221 = call i32 @pr_warn_once(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %9, align 4
  br label %236

224:                                              ; preds = %210
  %225 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %11, align 8
  %226 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %225, i32 0, i32 0
  %227 = load i8*, i8** %22, align 8
  %228 = load i32, i32* %23, align 4
  %229 = call i32 @sg_init_one(%struct.scatterlist* %226, i8* %227, i32 %228)
  %230 = load %struct.srpt_send_ioctx*, %struct.srpt_send_ioctx** %11, align 8
  %231 = getelementptr inbounds %struct.srpt_send_ioctx, %struct.srpt_send_ioctx* %230, i32 0, i32 0
  %232 = load %struct.scatterlist**, %struct.scatterlist*** %14, align 8
  store %struct.scatterlist* %231, %struct.scatterlist** %232, align 8
  %233 = load i32*, i32** %15, align 8
  store i32 1, i32* %233, align 4
  store i32 0, i32* %9, align 4
  br label %236

234:                                              ; preds = %153
  %235 = load i32*, i32** %16, align 8
  store i32 0, i32* %235, align 4
  store i32 0, i32* %9, align 4
  br label %236

236:                                              ; preds = %234, %224, %220, %206, %192, %179, %139, %124, %75
  %237 = load i32, i32* %9, align 4
  ret i32 %237
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @srpt_get_desc_buf(%struct.srp_cmd*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @srpt_alloc_rw_ctxs(%struct.srpt_send_ioctx*, %struct.srp_direct_buf*, i32, %struct.scatterlist**, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_warn_once(i8*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
