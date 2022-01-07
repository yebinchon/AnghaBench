; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ud.c_return_cnp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ud.c_return_cnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { i64* }
%struct.rvt_qp = type { i32 }
%struct.ib_grh = type { i32, i32, i32, i32, i32 }
%struct.hfi1_opa_header = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.ib_other_headers, %struct.TYPE_7__ }
%struct.ib_other_headers = type { i8** }
%struct.TYPE_7__ = type { %struct.ib_other_headers, %struct.ib_grh }
%struct.pio_buf = type { i32 }
%struct.send_context = type { i32 }
%struct.hfi1_pportdata = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, %struct.pio_buf*, i32, %struct.hfi1_opa_header*, i32)* }

@HFI1_PKT_TYPE_9B = common dso_local global i32 0, align 4
@LRH_9B_DWORDS = common dso_local global i32 0, align 4
@SIZE_OF_CRC = common dso_local global i32 0, align 4
@HFI1_LRH_GRH = common dso_local global i64 0, align 8
@HFI1_LRH_BTH = common dso_local global i64 0, align 8
@IB_OPCODE_CNP = common dso_local global i32 0, align 4
@IB_BECN_SHIFT = common dso_local global i32 0, align 4
@PBC_DC_INFO_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @return_cnp(%struct.hfi1_ibport* %0, %struct.rvt_qp* %1, i32 %2, i64 %3, i32 %4, i32 %5, i64 %6, %struct.ib_grh* %7) #0 {
  %9 = alloca %struct.hfi1_ibport*, align 8
  %10 = alloca %struct.rvt_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.ib_grh*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.hfi1_opa_header, align 8
  %26 = alloca %struct.ib_other_headers*, align 8
  %27 = alloca %struct.pio_buf*, align 8
  %28 = alloca %struct.send_context*, align 8
  %29 = alloca %struct.hfi1_pportdata*, align 8
  %30 = alloca %struct.ib_grh*, align 8
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %9, align 8
  store %struct.rvt_qp* %1, %struct.rvt_qp** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store %struct.ib_grh* %7, %struct.ib_grh** %16, align 8
  store i32 0, i32* %18, align 4
  store i32 5, i32* %22, align 4
  %31 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %9, align 8
  %32 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %15, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %24, align 8
  %37 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %38 = load i64, i64* %15, align 8
  %39 = call %struct.send_context* @qp_to_send_context(%struct.rvt_qp* %37, i64 %38)
  store %struct.send_context* %39, %struct.send_context** %28, align 8
  %40 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %9, align 8
  %41 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %40)
  store %struct.hfi1_pportdata* %41, %struct.hfi1_pportdata** %29, align 8
  %42 = load i32, i32* @HFI1_PKT_TYPE_9B, align 4
  %43 = getelementptr inbounds %struct.hfi1_opa_header, %struct.hfi1_opa_header* %25, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %45 = icmp ne %struct.ib_grh* %44, null
  br i1 %45, label %46, label %86

46:                                               ; preds = %8
  %47 = getelementptr inbounds %struct.hfi1_opa_header, %struct.hfi1_opa_header* %25, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store %struct.ib_grh* %50, %struct.ib_grh** %30, align 8
  %51 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %52 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ib_grh*, %struct.ib_grh** %30, align 8
  %55 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %22, align 4
  %57 = load i32, i32* @LRH_9B_DWORDS, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* @SIZE_OF_CRC, align 4
  %60 = add nsw i32 %58, %59
  %61 = shl i32 %60, 2
  %62 = call i32 @cpu_to_be16(i32 %61)
  %63 = load %struct.ib_grh*, %struct.ib_grh** %30, align 8
  %64 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ib_grh*, %struct.ib_grh** %30, align 8
  %66 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %65, i32 0, i32 0
  store i32 255, i32* %66, align 4
  %67 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %68 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ib_grh*, %struct.ib_grh** %30, align 8
  %71 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %73 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ib_grh*, %struct.ib_grh** %30, align 8
  %76 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds %struct.hfi1_opa_header, %struct.hfi1_opa_header* %25, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store %struct.ib_other_headers* %80, %struct.ib_other_headers** %26, align 8
  %81 = load i64, i64* @HFI1_LRH_GRH, align 8
  store i64 %81, i64* %23, align 8
  %82 = load i32, i32* %22, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, 5
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %22, align 4
  br label %91

86:                                               ; preds = %8
  %87 = getelementptr inbounds %struct.hfi1_opa_header, %struct.hfi1_opa_header* %25, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store %struct.ib_other_headers* %89, %struct.ib_other_headers** %26, align 8
  %90 = load i64, i64* @HFI1_LRH_BTH, align 8
  store i64 %90, i64* %23, align 8
  br label %91

91:                                               ; preds = %86, %46
  %92 = load i64, i64* %15, align 8
  %93 = and i64 %92, 15
  %94 = shl i64 %93, 12
  %95 = load i64, i64* %24, align 8
  %96 = shl i64 %95, 4
  %97 = or i64 %94, %96
  %98 = load i64, i64* %23, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %23, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i32, i32* @IB_OPCODE_CNP, align 4
  %102 = shl i32 %101, 24
  %103 = sext i32 %102 to i64
  %104 = or i64 %100, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %19, align 4
  %107 = call i8* @cpu_to_be32(i32 %106)
  %108 = load %struct.ib_other_headers*, %struct.ib_other_headers** %26, align 8
  %109 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %108, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  store i8* %107, i8** %111, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @IB_BECN_SHIFT, align 4
  %114 = shl i32 1, %113
  %115 = or i32 %112, %114
  %116 = call i8* @cpu_to_be32(i32 %115)
  %117 = load %struct.ib_other_headers*, %struct.ib_other_headers** %26, align 8
  %118 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %117, i32 0, i32 0
  %119 = load i8**, i8*** %118, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 1
  store i8* %116, i8** %120, align 8
  %121 = load %struct.ib_other_headers*, %struct.ib_other_headers** %26, align 8
  %122 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %121, i32 0, i32 0
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 2
  store i8* null, i8** %124, align 8
  %125 = getelementptr inbounds %struct.hfi1_opa_header, %struct.hfi1_opa_header* %25, i32 0, i32 0
  %126 = load i64, i64* %23, align 8
  %127 = load i32, i32* %22, align 4
  %128 = load i32, i32* @SIZE_OF_CRC, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @hfi1_make_ib_hdr(%struct.TYPE_10__* %125, i64 %126, i32 %129, i32 %130, i32 %131)
  %133 = load i32, i32* %22, align 4
  %134 = add nsw i32 2, %133
  store i32 %134, i32* %20, align 4
  %135 = load i64, i64* %15, align 8
  %136 = call i32 @ib_is_sc5(i64 %135)
  %137 = load i32, i32* @PBC_DC_INFO_SHIFT, align 4
  %138 = shl i32 %136, %137
  %139 = load i32, i32* %18, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %18, align 4
  %141 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %29, align 8
  %142 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = load i64, i64* %15, align 8
  %145 = call i32 @sc_to_vlt(%struct.TYPE_9__* %143, i64 %144)
  store i32 %145, i32* %21, align 4
  %146 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %29, align 8
  %147 = load i32, i32* %18, align 4
  %148 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %149 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* %20, align 4
  %153 = call i32 @create_pbc(%struct.hfi1_pportdata* %146, i32 %147, i32 %150, i32 %151, i32 %152)
  store i32 %153, i32* %17, align 4
  %154 = load %struct.send_context*, %struct.send_context** %28, align 8
  %155 = icmp ne %struct.send_context* %154, null
  br i1 %155, label %156, label %182

156:                                              ; preds = %91
  %157 = load %struct.send_context*, %struct.send_context** %28, align 8
  %158 = load i32, i32* %20, align 4
  %159 = call %struct.pio_buf* @sc_buffer_alloc(%struct.send_context* %157, i32 %158, i32* null, i32* null)
  store %struct.pio_buf* %159, %struct.pio_buf** %27, align 8
  %160 = load %struct.pio_buf*, %struct.pio_buf** %27, align 8
  %161 = call i32 @IS_ERR_OR_NULL(%struct.pio_buf* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %181, label %163

163:                                              ; preds = %156
  %164 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %29, align 8
  %165 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %164, i32 0, i32 0
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load i64, i64* %15, align 8
  %168 = call i32 @trace_pio_output_ibhdr(%struct.TYPE_9__* %166, %struct.hfi1_opa_header* %25, i64 %167)
  %169 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %29, align 8
  %170 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %169, i32 0, i32 0
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32 (%struct.TYPE_9__*, %struct.pio_buf*, i32, %struct.hfi1_opa_header*, i32)*, i32 (%struct.TYPE_9__*, %struct.pio_buf*, i32, %struct.hfi1_opa_header*, i32)** %172, align 8
  %174 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %29, align 8
  %175 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %174, i32 0, i32 0
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = load %struct.pio_buf*, %struct.pio_buf** %27, align 8
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %22, align 4
  %180 = call i32 %173(%struct.TYPE_9__* %176, %struct.pio_buf* %177, i32 %178, %struct.hfi1_opa_header* %25, i32 %179)
  br label %181

181:                                              ; preds = %163, %156
  br label %182

182:                                              ; preds = %181, %91
  ret void
}

declare dso_local %struct.send_context* @qp_to_send_context(%struct.rvt_qp*, i64) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @hfi1_make_ib_hdr(%struct.TYPE_10__*, i64, i32, i32, i32) #1

declare dso_local i32 @ib_is_sc5(i64) #1

declare dso_local i32 @sc_to_vlt(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @create_pbc(%struct.hfi1_pportdata*, i32, i32, i32, i32) #1

declare dso_local %struct.pio_buf* @sc_buffer_alloc(%struct.send_context*, i32, i32*, i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.pio_buf*) #1

declare dso_local i32 @trace_pio_output_ibhdr(%struct.TYPE_9__*, %struct.hfi1_opa_header*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
