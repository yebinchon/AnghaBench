; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_handle_q_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_handle_q_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32 }
%struct.i40iw_mem_reg_req = type { i32, i32, i32 }
%struct.i40iw_pbl = type { i32, %struct.i40iw_cq_mr, %struct.i40iw_qp_mr, %struct.i40iw_mr*, %struct.i40iw_pble_alloc }
%struct.i40iw_cq_mr = type { i8*, %struct.i40iw_hmc_pble }
%struct.i40iw_hmc_pble = type { i8*, i64 }
%struct.i40iw_qp_mr = type { %struct.i40iw_hmc_pble, i8*, %struct.i40iw_hmc_pble }
%struct.i40iw_mr = type { i8**, i64, i32 }
%struct.i40iw_pble_alloc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@I40IW_LEVEL_1 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IW_MEMREG_TYPE_QP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, %struct.i40iw_mem_reg_req*, %struct.i40iw_pbl*, i32)* @i40iw_handle_q_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_handle_q_mem(%struct.i40iw_device* %0, %struct.i40iw_mem_reg_req* %1, %struct.i40iw_pbl* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_device*, align 8
  %7 = alloca %struct.i40iw_mem_reg_req*, align 8
  %8 = alloca %struct.i40iw_pbl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40iw_pble_alloc*, align 8
  %11 = alloca %struct.i40iw_mr*, align 8
  %12 = alloca %struct.i40iw_qp_mr*, align 8
  %13 = alloca %struct.i40iw_cq_mr*, align 8
  %14 = alloca %struct.i40iw_hmc_pble*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %6, align 8
  store %struct.i40iw_mem_reg_req* %1, %struct.i40iw_mem_reg_req** %7, align 8
  store %struct.i40iw_pbl* %2, %struct.i40iw_pbl** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %8, align 8
  %21 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %20, i32 0, i32 4
  store %struct.i40iw_pble_alloc* %21, %struct.i40iw_pble_alloc** %10, align 8
  %22 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %8, align 8
  %23 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %22, i32 0, i32 3
  %24 = load %struct.i40iw_mr*, %struct.i40iw_mr** %23, align 8
  store %struct.i40iw_mr* %24, %struct.i40iw_mr** %11, align 8
  %25 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %8, align 8
  %26 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %25, i32 0, i32 2
  store %struct.i40iw_qp_mr* %26, %struct.i40iw_qp_mr** %12, align 8
  %27 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %8, align 8
  %28 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %27, i32 0, i32 1
  store %struct.i40iw_cq_mr* %28, %struct.i40iw_cq_mr** %13, align 8
  %29 = load %struct.i40iw_mr*, %struct.i40iw_mr** %11, align 8
  %30 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  store i8** %31, i8*** %15, align 8
  store i32 1, i32* %19, align 4
  %32 = load %struct.i40iw_mem_reg_req*, %struct.i40iw_mem_reg_req** %7, align 8
  %33 = getelementptr inbounds %struct.i40iw_mem_reg_req, %struct.i40iw_mem_reg_req* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.i40iw_mem_reg_req*, %struct.i40iw_mem_reg_req** %7, align 8
  %36 = getelementptr inbounds %struct.i40iw_mem_reg_req, %struct.i40iw_mem_reg_req* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = load %struct.i40iw_mem_reg_req*, %struct.i40iw_mem_reg_req** %7, align 8
  %40 = getelementptr inbounds %struct.i40iw_mem_reg_req, %struct.i40iw_mem_reg_req* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %18, align 4
  %43 = load %struct.i40iw_mr*, %struct.i40iw_mr** %11, align 8
  %44 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %16, align 4
  %46 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %47 = load %struct.i40iw_mr*, %struct.i40iw_mr** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @i40iw_setup_pbles(%struct.i40iw_device* %46, %struct.i40iw_mr* %47, i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %4
  %53 = load i32, i32* %17, align 4
  store i32 %53, i32* %5, align 4
  br label %215

54:                                               ; preds = %4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %10, align 8
  %59 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @I40IW_LEVEL_1, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %65 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %10, align 8
  %68 = call i32 @i40iw_free_pble(i32 %66, %struct.i40iw_pble_alloc* %67)
  %69 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %8, align 8
  %70 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %215

73:                                               ; preds = %57, %54
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %10, align 8
  %78 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8**
  store i8** %81, i8*** %15, align 8
  br label %82

82:                                               ; preds = %76, %73
  %83 = load %struct.i40iw_mr*, %struct.i40iw_mr** %11, align 8
  %84 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IW_MEMREG_TYPE_QP, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %163

88:                                               ; preds = %82
  %89 = load %struct.i40iw_qp_mr*, %struct.i40iw_qp_mr** %12, align 8
  %90 = getelementptr inbounds %struct.i40iw_qp_mr, %struct.i40iw_qp_mr* %89, i32 0, i32 2
  store %struct.i40iw_hmc_pble* %90, %struct.i40iw_hmc_pble** %14, align 8
  %91 = load i8**, i8*** %15, align 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.i40iw_qp_mr*, %struct.i40iw_qp_mr** %12, align 8
  %97 = getelementptr inbounds %struct.i40iw_qp_mr, %struct.i40iw_qp_mr* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %122

100:                                              ; preds = %88
  %101 = load i8**, i8*** %15, align 8
  %102 = load %struct.i40iw_mem_reg_req*, %struct.i40iw_mem_reg_req** %7, align 8
  %103 = getelementptr inbounds %struct.i40iw_mem_reg_req, %struct.i40iw_mem_reg_req* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @i40iw_check_mem_contiguous(i8** %101, i32 %104, i32 %105)
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %19, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %100
  %110 = load i8**, i8*** %15, align 8
  %111 = load %struct.i40iw_mem_reg_req*, %struct.i40iw_mem_reg_req** %7, align 8
  %112 = getelementptr inbounds %struct.i40iw_mem_reg_req, %struct.i40iw_mem_reg_req* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %110, i64 %114
  %116 = load %struct.i40iw_mem_reg_req*, %struct.i40iw_mem_reg_req** %7, align 8
  %117 = getelementptr inbounds %struct.i40iw_mem_reg_req, %struct.i40iw_mem_reg_req* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @i40iw_check_mem_contiguous(i8** %115, i32 %118, i32 %119)
  store i32 %120, i32* %19, align 4
  br label %121

121:                                              ; preds = %109, %100
  br label %122

122:                                              ; preds = %121, %88
  %123 = load i32, i32* %19, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %145, label %125

125:                                              ; preds = %122
  %126 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %10, align 8
  %127 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.i40iw_hmc_pble*, %struct.i40iw_hmc_pble** %14, align 8
  %131 = getelementptr inbounds %struct.i40iw_hmc_pble, %struct.i40iw_hmc_pble* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  %132 = load %struct.i40iw_qp_mr*, %struct.i40iw_qp_mr** %12, align 8
  %133 = getelementptr inbounds %struct.i40iw_qp_mr, %struct.i40iw_qp_mr* %132, i32 0, i32 0
  store %struct.i40iw_hmc_pble* %133, %struct.i40iw_hmc_pble** %14, align 8
  %134 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %10, align 8
  %135 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.i40iw_mem_reg_req*, %struct.i40iw_mem_reg_req** %7, align 8
  %139 = getelementptr inbounds %struct.i40iw_mem_reg_req, %struct.i40iw_mem_reg_req* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %137, %141
  %143 = load %struct.i40iw_hmc_pble*, %struct.i40iw_hmc_pble** %14, align 8
  %144 = getelementptr inbounds %struct.i40iw_hmc_pble, %struct.i40iw_hmc_pble* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  br label %162

145:                                              ; preds = %122
  %146 = load i8**, i8*** %15, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 0
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.i40iw_hmc_pble*, %struct.i40iw_hmc_pble** %14, align 8
  %150 = getelementptr inbounds %struct.i40iw_hmc_pble, %struct.i40iw_hmc_pble* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  %151 = load %struct.i40iw_qp_mr*, %struct.i40iw_qp_mr** %12, align 8
  %152 = getelementptr inbounds %struct.i40iw_qp_mr, %struct.i40iw_qp_mr* %151, i32 0, i32 0
  store %struct.i40iw_hmc_pble* %152, %struct.i40iw_hmc_pble** %14, align 8
  %153 = load i8**, i8*** %15, align 8
  %154 = load %struct.i40iw_mem_reg_req*, %struct.i40iw_mem_reg_req** %7, align 8
  %155 = getelementptr inbounds %struct.i40iw_mem_reg_req, %struct.i40iw_mem_reg_req* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %153, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.i40iw_hmc_pble*, %struct.i40iw_hmc_pble** %14, align 8
  %161 = getelementptr inbounds %struct.i40iw_hmc_pble, %struct.i40iw_hmc_pble* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %145, %125
  br label %199

163:                                              ; preds = %82
  %164 = load %struct.i40iw_cq_mr*, %struct.i40iw_cq_mr** %13, align 8
  %165 = getelementptr inbounds %struct.i40iw_cq_mr, %struct.i40iw_cq_mr* %164, i32 0, i32 1
  store %struct.i40iw_hmc_pble* %165, %struct.i40iw_hmc_pble** %14, align 8
  %166 = load i8**, i8*** %15, align 8
  %167 = load i32, i32* %18, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.i40iw_cq_mr*, %struct.i40iw_cq_mr** %13, align 8
  %172 = getelementptr inbounds %struct.i40iw_cq_mr, %struct.i40iw_cq_mr* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %163
  %176 = load i8**, i8*** %15, align 8
  %177 = load %struct.i40iw_mem_reg_req*, %struct.i40iw_mem_reg_req** %7, align 8
  %178 = getelementptr inbounds %struct.i40iw_mem_reg_req, %struct.i40iw_mem_reg_req* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %16, align 4
  %181 = call i32 @i40iw_check_mem_contiguous(i8** %176, i32 %179, i32 %180)
  store i32 %181, i32* %19, align 4
  br label %182

182:                                              ; preds = %175, %163
  %183 = load i32, i32* %19, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %182
  %186 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %10, align 8
  %187 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.i40iw_hmc_pble*, %struct.i40iw_hmc_pble** %14, align 8
  %191 = getelementptr inbounds %struct.i40iw_hmc_pble, %struct.i40iw_hmc_pble* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  br label %198

192:                                              ; preds = %182
  %193 = load i8**, i8*** %15, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 0
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.i40iw_hmc_pble*, %struct.i40iw_hmc_pble** %14, align 8
  %197 = getelementptr inbounds %struct.i40iw_hmc_pble, %struct.i40iw_hmc_pble* %196, i32 0, i32 0
  store i8* %195, i8** %197, align 8
  br label %198

198:                                              ; preds = %192, %185
  br label %199

199:                                              ; preds = %198, %162
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %199
  %203 = load i32, i32* %19, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %202
  %206 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %207 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %10, align 8
  %210 = call i32 @i40iw_free_pble(i32 %208, %struct.i40iw_pble_alloc* %209)
  %211 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %8, align 8
  %212 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %211, i32 0, i32 0
  store i32 0, i32* %212, align 8
  br label %213

213:                                              ; preds = %205, %202, %199
  %214 = load i32, i32* %17, align 4
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %213, %63, %52
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32 @i40iw_setup_pbles(%struct.i40iw_device*, %struct.i40iw_mr*, i32) #1

declare dso_local i32 @i40iw_free_pble(i32, %struct.i40iw_pble_alloc*) #1

declare dso_local i32 @i40iw_check_mem_contiguous(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
