; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ud.c_return_cnp_16B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_ud.c_return_cnp_16B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { i32 }
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

@HFI1_PKT_TYPE_16B = common dso_local global i32 0, align 4
@SIZE_OF_LT = common dso_local global i32 0, align 4
@SIZE_OF_CRC = common dso_local global i32 0, align 4
@LRH_16B_DWORDS = common dso_local global i32 0, align 4
@OPA_16B_L4_IB_GLOBAL = common dso_local global i32 0, align 4
@OPA_16B_L4_IB_LOCAL = common dso_local global i32 0, align 4
@IB_OPCODE_CNP = common dso_local global i32 0, align 4
@PBC_PACKET_BYPASS = common dso_local global i32 0, align 4
@PBC_INSERT_BYPASS_ICRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @return_cnp_16B(%struct.hfi1_ibport* %0, %struct.rvt_qp* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.ib_grh* %7) #0 {
  %9 = alloca %struct.hfi1_ibport*, align 8
  %10 = alloca %struct.rvt_qp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_grh*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.hfi1_opa_header, align 8
  %26 = alloca %struct.ib_other_headers*, align 8
  %27 = alloca %struct.pio_buf*, align 8
  %28 = alloca %struct.send_context*, align 8
  %29 = alloca %struct.hfi1_pportdata*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.ib_grh*, align 8
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %9, align 8
  store %struct.rvt_qp* %1, %struct.rvt_qp** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.ib_grh* %7, %struct.ib_grh** %16, align 8
  store i32 0, i32* %18, align 4
  store i32 7, i32* %22, align 4
  %32 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %33 = load i32, i32* %15, align 4
  %34 = call %struct.send_context* @qp_to_send_context(%struct.rvt_qp* %32, i32 %33)
  store %struct.send_context* %34, %struct.send_context** %28, align 8
  %35 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %9, align 8
  %36 = call %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport* %35)
  store %struct.hfi1_pportdata* %36, %struct.hfi1_pportdata** %29, align 8
  %37 = load i32, i32* @HFI1_PKT_TYPE_16B, align 4
  %38 = getelementptr inbounds %struct.hfi1_opa_header, %struct.hfi1_opa_header* %25, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* %22, align 4
  %40 = shl i32 %39, 2
  %41 = call i32 @hfi1_get_16b_padding(i32 %40, i32 0)
  %42 = load i32, i32* @SIZE_OF_LT, align 4
  %43 = add nsw i32 %41, %42
  %44 = ashr i32 %43, 2
  %45 = load i32, i32* @SIZE_OF_CRC, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %30, align 4
  %47 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %48 = icmp ne %struct.ib_grh* %47, null
  br i1 %48, label %49, label %89

49:                                               ; preds = %8
  %50 = getelementptr inbounds %struct.hfi1_opa_header, %struct.hfi1_opa_header* %25, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store %struct.ib_grh* %53, %struct.ib_grh** %31, align 8
  %54 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %55 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ib_grh*, %struct.ib_grh** %31, align 8
  %58 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* @LRH_16B_DWORDS, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* %30, align 4
  %63 = add nsw i32 %61, %62
  %64 = shl i32 %63, 2
  %65 = call i32 @cpu_to_be16(i32 %64)
  %66 = load %struct.ib_grh*, %struct.ib_grh** %31, align 8
  %67 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ib_grh*, %struct.ib_grh** %31, align 8
  %69 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %68, i32 0, i32 0
  store i32 255, i32* %69, align 4
  %70 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %71 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ib_grh*, %struct.ib_grh** %31, align 8
  %74 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %76 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ib_grh*, %struct.ib_grh** %31, align 8
  %79 = getelementptr inbounds %struct.ib_grh, %struct.ib_grh* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = getelementptr inbounds %struct.hfi1_opa_header, %struct.hfi1_opa_header* %25, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store %struct.ib_other_headers* %83, %struct.ib_other_headers** %26, align 8
  %84 = load i32, i32* @OPA_16B_L4_IB_GLOBAL, align 4
  store i32 %84, i32* %24, align 4
  %85 = load i32, i32* %22, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, 5
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %22, align 4
  br label %94

89:                                               ; preds = %8
  %90 = getelementptr inbounds %struct.hfi1_opa_header, %struct.hfi1_opa_header* %25, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store %struct.ib_other_headers* %92, %struct.ib_other_headers** %26, align 8
  %93 = load i32, i32* @OPA_16B_L4_IB_LOCAL, align 4
  store i32 %93, i32* %24, align 4
  br label %94

94:                                               ; preds = %89, %49
  %95 = load i32, i32* @IB_OPCODE_CNP, align 4
  %96 = shl i32 %95, 24
  %97 = or i32 %96, 65536
  %98 = load i32, i32* %22, align 4
  %99 = shl i32 %98, 2
  %100 = call i32 @hfi1_get_16b_padding(i32 %99, i32 0)
  %101 = shl i32 %100, 20
  %102 = or i32 %97, %101
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %19, align 4
  %104 = call i8* @cpu_to_be32(i32 %103)
  %105 = load %struct.ib_other_headers*, %struct.ib_other_headers** %26, align 8
  %106 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  store i8* %104, i8** %108, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i8* @cpu_to_be32(i32 %109)
  %111 = load %struct.ib_other_headers*, %struct.ib_other_headers** %26, align 8
  %112 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %111, i32 0, i32 0
  %113 = load i8**, i8*** %112, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  store i8* %110, i8** %114, align 8
  %115 = load %struct.ib_other_headers*, %struct.ib_other_headers** %26, align 8
  %116 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %115, i32 0, i32 0
  %117 = load i8**, i8*** %116, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 2
  store i8* null, i8** %118, align 8
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* %30, align 4
  %121 = add nsw i32 %119, %120
  %122 = ashr i32 %121, 1
  store i32 %122, i32* %23, align 4
  %123 = getelementptr inbounds %struct.hfi1_opa_header, %struct.hfi1_opa_header* %25, i32 0, i32 0
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %23, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %24, align 4
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @hfi1_make_16b_hdr(%struct.TYPE_10__* %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 1, i32 0, i32 %128, i32 %129)
  %131 = load i32, i32* %22, align 4
  %132 = add nsw i32 2, %131
  %133 = load i32, i32* %30, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %20, align 4
  %135 = load i32, i32* @PBC_PACKET_BYPASS, align 4
  %136 = load i32, i32* @PBC_INSERT_BYPASS_ICRC, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %18, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %18, align 4
  %140 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %29, align 8
  %141 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %140, i32 0, i32 0
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @sc_to_vlt(%struct.TYPE_9__* %142, i32 %143)
  store i32 %144, i32* %21, align 4
  %145 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %29, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load %struct.rvt_qp*, %struct.rvt_qp** %10, align 8
  %148 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* %20, align 4
  %152 = call i32 @create_pbc(%struct.hfi1_pportdata* %145, i32 %146, i32 %149, i32 %150, i32 %151)
  store i32 %152, i32* %17, align 4
  %153 = load %struct.send_context*, %struct.send_context** %28, align 8
  %154 = icmp ne %struct.send_context* %153, null
  br i1 %154, label %155, label %181

155:                                              ; preds = %94
  %156 = load %struct.send_context*, %struct.send_context** %28, align 8
  %157 = load i32, i32* %20, align 4
  %158 = call %struct.pio_buf* @sc_buffer_alloc(%struct.send_context* %156, i32 %157, i32* null, i32* null)
  store %struct.pio_buf* %158, %struct.pio_buf** %27, align 8
  %159 = load %struct.pio_buf*, %struct.pio_buf** %27, align 8
  %160 = call i32 @IS_ERR_OR_NULL(%struct.pio_buf* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %180, label %162

162:                                              ; preds = %155
  %163 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %29, align 8
  %164 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %163, i32 0, i32 0
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @trace_pio_output_ibhdr(%struct.TYPE_9__* %165, %struct.hfi1_opa_header* %25, i32 %166)
  %168 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %29, align 8
  %169 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %168, i32 0, i32 0
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32 (%struct.TYPE_9__*, %struct.pio_buf*, i32, %struct.hfi1_opa_header*, i32)*, i32 (%struct.TYPE_9__*, %struct.pio_buf*, i32, %struct.hfi1_opa_header*, i32)** %171, align 8
  %173 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %29, align 8
  %174 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %173, i32 0, i32 0
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = load %struct.pio_buf*, %struct.pio_buf** %27, align 8
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %22, align 4
  %179 = call i32 %172(%struct.TYPE_9__* %175, %struct.pio_buf* %176, i32 %177, %struct.hfi1_opa_header* %25, i32 %178)
  br label %180

180:                                              ; preds = %162, %155
  br label %181

181:                                              ; preds = %180, %94
  ret void
}

declare dso_local %struct.send_context* @qp_to_send_context(%struct.rvt_qp*, i32) #1

declare dso_local %struct.hfi1_pportdata* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local i32 @hfi1_get_16b_padding(i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @hfi1_make_16b_hdr(%struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sc_to_vlt(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @create_pbc(%struct.hfi1_pportdata*, i32, i32, i32, i32) #1

declare dso_local %struct.pio_buf* @sc_buffer_alloc(%struct.send_context*, i32, i32*, i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.pio_buf*) #1

declare dso_local i32 @trace_pio_output_ibhdr(%struct.TYPE_9__*, %struct.hfi1_opa_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
