; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_mr_wqe_pfault_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_mr_wqe_pfault_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_pagefault = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlx5_core_rsc_common = type { i64 }
%struct.mlx5_ib_qp = type { i32 }
%struct.mlx5_ib_srq = type { i32 }

@MLX5_PFAULT_REQUESTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"wqe page fault for missing resource %d\0A\00", align 1
@MLX5_RES_QP = common dso_local global i64 0, align 8
@MLX5_RES_SRQ = common dso_local global i64 0, align 8
@MLX5_RES_XSRQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"wqe page fault for unsupported type %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Error allocating memory for IO page fault handling.\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [75 x i8] c"Failed reading a WQE following page fault, error %d, wqe_index %x, qpn %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"PAGE FAULT completed. QP 0x%x resume_with_error=%d, type: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_pagefault*)* @mlx5_ib_mr_wqe_pfault_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_mr_wqe_pfault_handler(%struct.mlx5_ib_dev* %0, %struct.mlx5_pagefault* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_pagefault*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mlx5_core_rsc_common*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_ib_qp*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.mlx5_ib_srq*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_pagefault* %1, %struct.mlx5_pagefault** %4, align 8
  %18 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MLX5_PFAULT_REQUESTOR, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 1, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %27 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %28 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.mlx5_core_rsc_common* @odp_get_rsc(%struct.mlx5_ib_dev* %27, i32 %31, i32 %34)
  store %struct.mlx5_core_rsc_common* %35, %struct.mlx5_core_rsc_common** %12, align 8
  %36 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %12, align 8
  %37 = icmp ne %struct.mlx5_core_rsc_common* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %2
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %40 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %218

45:                                               ; preds = %2
  %46 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %12, align 8
  %47 = getelementptr inbounds %struct.mlx5_core_rsc_common, %struct.mlx5_core_rsc_common* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MLX5_RES_QP, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %12, align 8
  %53 = getelementptr inbounds %struct.mlx5_core_rsc_common, %struct.mlx5_core_rsc_common* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MLX5_RES_SRQ, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %12, align 8
  %59 = getelementptr inbounds %struct.mlx5_core_rsc_common, %struct.mlx5_core_rsc_common* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MLX5_RES_XSRQ, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %65 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %66 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_err(%struct.mlx5_ib_dev* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %198

69:                                               ; preds = %57, %51, %45
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i64 @__get_free_page(i32 %70)
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %77 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_err(%struct.mlx5_ib_dev* %76, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %198

78:                                               ; preds = %69
  %79 = load i8*, i8** %8, align 8
  store i8* %79, i8** %7, align 8
  %80 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %12, align 8
  %81 = getelementptr inbounds %struct.mlx5_core_rsc_common, %struct.mlx5_core_rsc_common* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MLX5_RES_QP, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %12, align 8
  %87 = call %struct.mlx5_ib_qp* @res_to_qp(%struct.mlx5_core_rsc_common* %86)
  br label %89

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %85
  %90 = phi %struct.mlx5_ib_qp* [ %87, %85 ], [ null, %88 ]
  store %struct.mlx5_ib_qp* %90, %struct.mlx5_ib_qp** %14, align 8
  %91 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %14, align 8
  %92 = icmp ne %struct.mlx5_ib_qp* %91, null
  br i1 %92, label %93, label %111

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %14, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = call i32 @mlx5_ib_read_user_wqe_sq(%struct.mlx5_ib_qp* %97, i32 %98, i8* %99, i32 %100, i64* %15)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %186

105:                                              ; preds = %96
  %106 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %107 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %108 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %14, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call i32 @mlx5_ib_mr_initiator_pfault_handler(%struct.mlx5_ib_dev* %106, %struct.mlx5_pagefault* %107, %struct.mlx5_ib_qp* %108, i8** %7, i8** %9, i64 %109)
  store i32 %110, i32* %16, align 4
  br label %153

111:                                              ; preds = %93, %89
  %112 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %14, align 8
  %113 = icmp ne %struct.mlx5_ib_qp* %112, null
  br i1 %113, label %114, label %132

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %114
  %118 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %14, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i8*, i8** %7, align 8
  %121 = load i32, i32* @PAGE_SIZE, align 4
  %122 = call i32 @mlx5_ib_read_user_wqe_rq(%struct.mlx5_ib_qp* %118, i32 %119, i8* %120, i32 %121, i64* %15)
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %186

126:                                              ; preds = %117
  %127 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %128 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %14, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = load i64, i64* %15, align 8
  %131 = call i32 @mlx5_ib_mr_responder_pfault_handler_rq(%struct.mlx5_ib_dev* %127, %struct.mlx5_ib_qp* %128, i8* %129, i8** %9, i64 %130)
  store i32 %131, i32* %16, align 4
  br label %152

132:                                              ; preds = %114, %111
  %133 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %14, align 8
  %134 = icmp ne %struct.mlx5_ib_qp* %133, null
  br i1 %134, label %151, label %135

135:                                              ; preds = %132
  %136 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %12, align 8
  %137 = call %struct.mlx5_ib_srq* @res_to_srq(%struct.mlx5_core_rsc_common* %136)
  store %struct.mlx5_ib_srq* %137, %struct.mlx5_ib_srq** %17, align 8
  %138 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %17, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load i8*, i8** %7, align 8
  %141 = load i32, i32* @PAGE_SIZE, align 4
  %142 = call i32 @mlx5_ib_read_user_wqe_srq(%struct.mlx5_ib_srq* %138, i32 %139, i8* %140, i32 %141, i64* %15)
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %186

146:                                              ; preds = %135
  %147 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %148 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %17, align 8
  %149 = load i64, i64* %15, align 8
  %150 = call i32 @mlx5_ib_mr_responder_pfault_handler_srq(%struct.mlx5_ib_dev* %147, %struct.mlx5_ib_srq* %148, i8** %7, i8** %9, i64 %149)
  store i32 %150, i32* %16, align 4
  br label %151

151:                                              ; preds = %146, %132
  br label %152

152:                                              ; preds = %151, %126
  br label %153

153:                                              ; preds = %152, %105
  %154 = load i32, i32* %16, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = load i8*, i8** %7, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = icmp uge i8* %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156, %153
  br label %198

161:                                              ; preds = %156
  %162 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %163 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %164 = load i8*, i8** %7, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i32 @pagefault_data_segments(%struct.mlx5_ib_dev* %162, %struct.mlx5_pagefault* %163, i8* %164, i8* %165, i64* %10, i64* %11, i32 %169)
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* @EAGAIN, align 4
  %173 = sub nsw i32 0, %172
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %161
  br label %185

176:                                              ; preds = %161
  %177 = load i32, i32* %16, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = load i64, i64* %11, align 8
  %181 = load i64, i64* %10, align 8
  %182 = icmp sgt i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %179, %176
  br label %198

184:                                              ; preds = %179
  br label %185

185:                                              ; preds = %184, %175
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %186

186:                                              ; preds = %185, %145, %125, %104
  %187 = load i32, i32* %16, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %186
  %190 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %194 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_err(%struct.mlx5_ib_dev* %190, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 %191, i32 %192, i32 %195)
  br label %197

197:                                              ; preds = %189, %186
  br label %198

198:                                              ; preds = %197, %183, %160, %75, %63
  %199 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %200 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @mlx5_ib_page_fault_resume(%struct.mlx5_ib_dev* %199, %struct.mlx5_pagefault* %200, i32 %201)
  %203 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %204 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %205 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %13, align 4
  %209 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %210 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (%struct.mlx5_ib_dev*, i8*, i32, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %203, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %207, i32 %208, i32 %211)
  %213 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %12, align 8
  %214 = call i32 @mlx5_core_res_put(%struct.mlx5_core_rsc_common* %213)
  %215 = load i8*, i8** %8, align 8
  %216 = ptrtoint i8* %215 to i64
  %217 = call i32 @free_page(i64 %216)
  br label %218

218:                                              ; preds = %198, %38
  ret void
}

declare dso_local %struct.mlx5_core_rsc_common* @odp_get_rsc(%struct.mlx5_ib_dev*, i32, i32) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32, ...) #1

declare dso_local i32 @mlx5_ib_err(%struct.mlx5_ib_dev*, i8*, ...) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local %struct.mlx5_ib_qp* @res_to_qp(%struct.mlx5_core_rsc_common*) #1

declare dso_local i32 @mlx5_ib_read_user_wqe_sq(%struct.mlx5_ib_qp*, i32, i8*, i32, i64*) #1

declare dso_local i32 @mlx5_ib_mr_initiator_pfault_handler(%struct.mlx5_ib_dev*, %struct.mlx5_pagefault*, %struct.mlx5_ib_qp*, i8**, i8**, i64) #1

declare dso_local i32 @mlx5_ib_read_user_wqe_rq(%struct.mlx5_ib_qp*, i32, i8*, i32, i64*) #1

declare dso_local i32 @mlx5_ib_mr_responder_pfault_handler_rq(%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, i8*, i8**, i64) #1

declare dso_local %struct.mlx5_ib_srq* @res_to_srq(%struct.mlx5_core_rsc_common*) #1

declare dso_local i32 @mlx5_ib_read_user_wqe_srq(%struct.mlx5_ib_srq*, i32, i8*, i32, i64*) #1

declare dso_local i32 @mlx5_ib_mr_responder_pfault_handler_srq(%struct.mlx5_ib_dev*, %struct.mlx5_ib_srq*, i8**, i8**, i64) #1

declare dso_local i32 @pagefault_data_segments(%struct.mlx5_ib_dev*, %struct.mlx5_pagefault*, i8*, i8*, i64*, i64*, i32) #1

declare dso_local i32 @mlx5_ib_page_fault_resume(%struct.mlx5_ib_dev*, %struct.mlx5_pagefault*, i32) #1

declare dso_local i32 @mlx5_core_res_put(%struct.mlx5_core_rsc_common*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
