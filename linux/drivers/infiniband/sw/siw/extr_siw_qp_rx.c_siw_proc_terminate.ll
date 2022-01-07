; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_proc_terminate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_proc_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.siw_qp = type { %struct.siw_rx_stream }
%struct.siw_rx_stream = type { i64*, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.sk_buff* }
%struct.TYPE_4__ = type { %struct.iwarp_terminate }
%struct.iwarp_terminate = type { i64, i64, i64, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%union.iwarp_hdr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"siw: got TERMINATE. layer %d, type %d, code %d\0A\00", align 1
@RDMAP_UNTAGGED_QN_TERMINATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"siw: rx bogus TERM [QN x%08x, MSN x%08x, MO x%08x]\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@RDMAP_TERMINATE = common dso_local global i32 0, align 4
@iwarp_pktinfo = common dso_local global %struct.TYPE_5__* null, align 8
@MPA_CRC_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"TERM reports RDMAP hdr type %u, len %u (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"TERM reports DDP hdr type %u, len %u (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_proc_terminate(%struct.siw_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca %struct.siw_rx_stream*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.iwarp_terminate*, align 8
  %7 = alloca %union.iwarp_hdr, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %3, align 8
  %11 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %12 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %11, i32 0, i32 0
  store %struct.siw_rx_stream* %12, %struct.siw_rx_stream** %4, align 8
  %13 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %14 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %13, i32 0, i32 7
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %5, align 8
  %16 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %17 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.iwarp_terminate* %18, %struct.iwarp_terminate** %6, align 8
  %19 = bitcast %union.iwarp_hdr* %7 to i32*
  store i32* %19, i32** %8, align 8
  store i32 4, i32* %10, align 4
  %20 = load %struct.iwarp_terminate*, %struct.iwarp_terminate** %6, align 8
  %21 = call i64 @__rdmap_term_layer(%struct.iwarp_terminate* %20)
  %22 = load %struct.iwarp_terminate*, %struct.iwarp_terminate** %6, align 8
  %23 = call i64 @__rdmap_term_etype(%struct.iwarp_terminate* %22)
  %24 = load %struct.iwarp_terminate*, %struct.iwarp_terminate** %6, align 8
  %25 = call i64 @__rdmap_term_ecode(%struct.iwarp_terminate* %24)
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %23, i64 %25)
  %27 = load %struct.iwarp_terminate*, %struct.iwarp_terminate** %6, align 8
  %28 = getelementptr inbounds %struct.iwarp_terminate, %struct.iwarp_terminate* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @be32_to_cpu(i32 %29)
  %31 = load i64, i64* @RDMAP_UNTAGGED_QN_TERMINATE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %52, label %33

33:                                               ; preds = %1
  %34 = load %struct.iwarp_terminate*, %struct.iwarp_terminate** %6, align 8
  %35 = getelementptr inbounds %struct.iwarp_terminate, %struct.iwarp_terminate* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @be32_to_cpu(i32 %36)
  %38 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %39 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @RDMAP_UNTAGGED_QN_TERMINATE, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %37, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %33
  %47 = load %struct.iwarp_terminate*, %struct.iwarp_terminate** %6, align 8
  %48 = getelementptr inbounds %struct.iwarp_terminate, %struct.iwarp_terminate* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @be32_to_cpu(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %46, %33, %1
  %53 = load %struct.iwarp_terminate*, %struct.iwarp_terminate** %6, align 8
  %54 = getelementptr inbounds %struct.iwarp_terminate, %struct.iwarp_terminate* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @be32_to_cpu(i32 %55)
  %57 = load %struct.iwarp_terminate*, %struct.iwarp_terminate** %6, align 8
  %58 = getelementptr inbounds %struct.iwarp_terminate, %struct.iwarp_terminate* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @be32_to_cpu(i32 %59)
  %61 = load %struct.iwarp_terminate*, %struct.iwarp_terminate** %6, align 8
  %62 = getelementptr inbounds %struct.iwarp_terminate, %struct.iwarp_terminate* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @be32_to_cpu(i32 %63)
  %65 = call i32 @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %56, i64 %60, i64 %64)
  %66 = load i32, i32* @ECONNRESET, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %224

68:                                               ; preds = %46
  %69 = load %struct.iwarp_terminate*, %struct.iwarp_terminate** %6, align 8
  %70 = getelementptr inbounds %struct.iwarp_terminate, %struct.iwarp_terminate* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @ECONNRESET, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %224

76:                                               ; preds = %68
  %77 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %78 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = icmp ult i64 %80, 4
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @ECONNRESET, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %224

85:                                               ; preds = %76
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @memset(i32* %86, i32 0, i32 4)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %90 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @skb_copy_bits(%struct.sk_buff* %88, i32 %91, i32* %92, i32 %93)
  %95 = bitcast %union.iwarp_hdr* %7 to %struct.TYPE_6__*
  %96 = call i32 @__rdmap_get_opcode(%struct.TYPE_6__* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @RDMAP_TERMINATE, align 4
  %99 = icmp uge i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %85
  br label %196

101:                                              ; preds = %85
  %102 = load i32, i32* %10, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %8, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %108 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %113 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %118 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %123 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %128 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** @iwarp_pktinfo, align 8
  %132 = load i32, i32* %9, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %10, align 4
  %138 = sub nsw i32 %136, %137
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @MPA_CRC_SIZE, align 4
  %141 = add nsw i32 %139, %140
  %142 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %143 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp sgt i32 %141, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %101
  %147 = load i32, i32* @ECONNRESET, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %224

149:                                              ; preds = %101
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %152 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @skb_copy_bits(%struct.sk_buff* %150, i32 %153, i32* %154, i32 %155)
  %157 = load %struct.iwarp_terminate*, %struct.iwarp_terminate** %6, align 8
  %158 = getelementptr inbounds %struct.iwarp_terminate, %struct.iwarp_terminate* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %149
  %162 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %163 = load i32, i32* %9, align 4
  %164 = bitcast %union.iwarp_hdr* %7 to %struct.TYPE_6__*
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @be16_to_cpu(i32 %166)
  %168 = load %struct.iwarp_terminate*, %struct.iwarp_terminate** %6, align 8
  %169 = getelementptr inbounds %struct.iwarp_terminate, %struct.iwarp_terminate* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %174 = call i32 @siw_dbg_qp(%struct.siw_qp* %162, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %163, i32 %167, i8* %173)
  br label %195

175:                                              ; preds = %149
  %176 = load %struct.iwarp_terminate*, %struct.iwarp_terminate** %6, align 8
  %177 = getelementptr inbounds %struct.iwarp_terminate, %struct.iwarp_terminate* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %194

180:                                              ; preds = %175
  %181 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %182 = load i32, i32* %9, align 4
  %183 = bitcast %union.iwarp_hdr* %7 to %struct.TYPE_6__*
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @be16_to_cpu(i32 %185)
  %187 = load %struct.iwarp_terminate*, %struct.iwarp_terminate** %6, align 8
  %188 = getelementptr inbounds %struct.iwarp_terminate, %struct.iwarp_terminate* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %193 = call i32 @siw_dbg_qp(%struct.siw_qp* %181, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %182, i32 %186, i8* %192)
  br label %194

194:                                              ; preds = %180, %175
  br label %195

195:                                              ; preds = %194, %161
  br label %196

196:                                              ; preds = %195, %100
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %199 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = sub nsw i32 %200, %197
  store i32 %201, i32* %199, align 8
  %202 = load i32, i32* %10, align 4
  %203 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %204 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, %202
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %209 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = load i32, i32* %10, align 4
  %213 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %214 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, %212
  store i32 %216, i32* %214, align 4
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %219 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = sub nsw i32 %220, %217
  store i32 %221, i32* %219, align 8
  %222 = load i32, i32* @ECONNRESET, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %2, align 4
  br label %224

224:                                              ; preds = %196, %146, %82, %73, %52
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i32 @pr_warn(i8*, i64, i64, i64) #1

declare dso_local i64 @__rdmap_term_layer(%struct.iwarp_terminate*) #1

declare dso_local i64 @__rdmap_term_etype(%struct.iwarp_terminate*) #1

declare dso_local i64 @__rdmap_term_ecode(%struct.iwarp_terminate*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @__rdmap_get_opcode(%struct.TYPE_6__*) #1

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, i32, i32, i8*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
