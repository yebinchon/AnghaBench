; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i32 }
%struct.ocrdma_hdr_wqe = type { i32, i32, i32, i32 }
%struct.ib_reg_wr = type { i32, i32, i32 }
%struct.ocrdma_ewqe_fr = type { i32, i32, i32, i32, i8*, i8* }
%struct.ocrdma_mr = type { i32*, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.ocrdma_pbl* }
%struct.ocrdma_pbl = type { %struct.ocrdma_pbe* }
%struct.ocrdma_pbe = type { i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@OCRDMA_WQE_ALIGN_BYTES = common dso_local global i32 0, align 4
@OCRDMA_FR_MR = common dso_local global i32 0, align 4
@OCRDMA_WQE_OPCODE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_WQE_STRIDE = common dso_local global i32 0, align 4
@OCRDMA_WQE_SIZE_SHIFT = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@OCRDMA_LKEY_FLAG_LOCAL_WR = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@OCRDMA_LKEY_FLAG_REMOTE_WR = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@OCRDMA_LKEY_FLAG_REMOTE_RD = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp*, %struct.ocrdma_hdr_wqe*, %struct.ib_reg_wr*)* @ocrdma_build_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_build_reg(%struct.ocrdma_qp* %0, %struct.ocrdma_hdr_wqe* %1, %struct.ib_reg_wr* %2) #0 {
  %4 = alloca %struct.ocrdma_qp*, align 8
  %5 = alloca %struct.ocrdma_hdr_wqe*, align 8
  %6 = alloca %struct.ib_reg_wr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocrdma_ewqe_fr*, align 8
  %9 = alloca %struct.ocrdma_mr*, align 8
  %10 = alloca %struct.ocrdma_pbl*, align 8
  %11 = alloca %struct.ocrdma_pbe*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %4, align 8
  store %struct.ocrdma_hdr_wqe* %1, %struct.ocrdma_hdr_wqe** %5, align 8
  store %struct.ib_reg_wr* %2, %struct.ib_reg_wr** %6, align 8
  %16 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %17 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %16, i64 1
  %18 = bitcast %struct.ocrdma_hdr_wqe* %17 to %struct.ocrdma_ewqe_fr*
  store %struct.ocrdma_ewqe_fr* %18, %struct.ocrdma_ewqe_fr** %8, align 8
  %19 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %20 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ocrdma_mr* @get_ocrdma_mr(i32 %21)
  store %struct.ocrdma_mr* %22, %struct.ocrdma_mr** %9, align 8
  %23 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %24 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.ocrdma_pbl*, %struct.ocrdma_pbl** %25, align 8
  store %struct.ocrdma_pbl* %26, %struct.ocrdma_pbl** %10, align 8
  store i32 48, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @OCRDMA_WQE_ALIGN_BYTES, align 4
  %29 = call i32 @roundup(i32 %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* @OCRDMA_FR_MR, align 4
  %31 = load i32, i32* @OCRDMA_WQE_OPCODE_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %34 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @OCRDMA_WQE_STRIDE, align 4
  %39 = sdiv i32 %37, %38
  %40 = load i32, i32* @OCRDMA_WQE_SIZE_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %43 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %47 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %3
  %53 = load i32, i32* @OCRDMA_LKEY_FLAG_LOCAL_WR, align 4
  %54 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %55 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %3
  %59 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %60 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @OCRDMA_LKEY_FLAG_REMOTE_WR, align 4
  %67 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %68 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %73 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* @OCRDMA_LKEY_FLAG_REMOTE_RD, align 4
  %80 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %81 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %71
  %85 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %86 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %89 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %91 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %5, align 8
  %95 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %97 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %101 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %99, %104
  store i32 %105, i32* %7, align 4
  %106 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %107 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @upper_32_bits(i32 %109)
  %111 = load %struct.ocrdma_ewqe_fr*, %struct.ocrdma_ewqe_fr** %8, align 8
  %112 = getelementptr inbounds %struct.ocrdma_ewqe_fr, %struct.ocrdma_ewqe_fr* %111, i32 0, i32 5
  store i8* %110, i8** %112, align 8
  %113 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %114 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ocrdma_ewqe_fr*, %struct.ocrdma_ewqe_fr** %8, align 8
  %118 = getelementptr inbounds %struct.ocrdma_ewqe_fr, %struct.ocrdma_ewqe_fr* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i8* @upper_32_bits(i32 %119)
  %121 = load %struct.ocrdma_ewqe_fr*, %struct.ocrdma_ewqe_fr** %8, align 8
  %122 = getelementptr inbounds %struct.ocrdma_ewqe_fr, %struct.ocrdma_ewqe_fr* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.ocrdma_ewqe_fr*, %struct.ocrdma_ewqe_fr** %8, align 8
  %125 = getelementptr inbounds %struct.ocrdma_ewqe_fr, %struct.ocrdma_ewqe_fr* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %127 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.ocrdma_ewqe_fr*, %struct.ocrdma_ewqe_fr** %8, align 8
  %130 = getelementptr inbounds %struct.ocrdma_ewqe_fr, %struct.ocrdma_ewqe_fr* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %132 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @get_encoded_page_size(i32 %134)
  %136 = load %struct.ocrdma_ewqe_fr*, %struct.ocrdma_ewqe_fr** %8, align 8
  %137 = getelementptr inbounds %struct.ocrdma_ewqe_fr, %struct.ocrdma_ewqe_fr* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load %struct.ocrdma_pbl*, %struct.ocrdma_pbl** %10, align 8
  %139 = getelementptr inbounds %struct.ocrdma_pbl, %struct.ocrdma_pbl* %138, i32 0, i32 0
  %140 = load %struct.ocrdma_pbe*, %struct.ocrdma_pbe** %139, align 8
  store %struct.ocrdma_pbe* %140, %struct.ocrdma_pbe** %11, align 8
  store i32 0, i32* %14, align 4
  br label %141

141:                                              ; preds = %187, %84
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %144 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %190

147:                                              ; preds = %141
  %148 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %149 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* @PAGE_MASK, align 4
  %157 = and i32 %155, %156
  %158 = call i8* @cpu_to_le32(i32 %157)
  %159 = load %struct.ocrdma_pbe*, %struct.ocrdma_pbe** %11, align 8
  %160 = getelementptr inbounds %struct.ocrdma_pbe, %struct.ocrdma_pbe* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = load i32, i32* %15, align 4
  %162 = call i8* @upper_32_bits(i32 %161)
  %163 = ptrtoint i8* %162 to i32
  %164 = call i8* @cpu_to_le32(i32 %163)
  %165 = load %struct.ocrdma_pbe*, %struct.ocrdma_pbe** %11, align 8
  %166 = getelementptr inbounds %struct.ocrdma_pbe, %struct.ocrdma_pbe* %165, i32 0, i32 0
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %13, align 4
  %169 = load %struct.ocrdma_pbe*, %struct.ocrdma_pbe** %11, align 8
  %170 = getelementptr inbounds %struct.ocrdma_pbe, %struct.ocrdma_pbe* %169, i32 1
  store %struct.ocrdma_pbe* %170, %struct.ocrdma_pbe** %11, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = load %struct.ocrdma_mr*, %struct.ocrdma_mr** %9, align 8
  %174 = getelementptr inbounds %struct.ocrdma_mr, %struct.ocrdma_mr* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = udiv i64 %177, 4
  %179 = icmp eq i64 %172, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %147
  %181 = load %struct.ocrdma_pbl*, %struct.ocrdma_pbl** %10, align 8
  %182 = getelementptr inbounds %struct.ocrdma_pbl, %struct.ocrdma_pbl* %181, i32 1
  store %struct.ocrdma_pbl* %182, %struct.ocrdma_pbl** %10, align 8
  %183 = load %struct.ocrdma_pbl*, %struct.ocrdma_pbl** %10, align 8
  %184 = getelementptr inbounds %struct.ocrdma_pbl, %struct.ocrdma_pbl* %183, i32 0, i32 0
  %185 = load %struct.ocrdma_pbe*, %struct.ocrdma_pbe** %184, align 8
  store %struct.ocrdma_pbe* %185, %struct.ocrdma_pbe** %11, align 8
  br label %186

186:                                              ; preds = %180, %147
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  br label %141

190:                                              ; preds = %141
  ret i32 0
}

declare dso_local %struct.ocrdma_mr* @get_ocrdma_mr(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @get_encoded_page_size(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
