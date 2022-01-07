; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_prepare_fpdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_prepare_fpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.siw_qp = type { %struct.siw_iwarp_tx }
%struct.siw_iwarp_tx = type { i64, i64, i32, i32, i32, %struct.TYPE_10__, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_12__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.siw_wqe = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@iwarp_pktinfo = common dso_local global %struct.TYPE_11__* null, align 8
@DDP_FLAG_TAGGED = common dso_local global i32 0, align 4
@MPA_CRC_SIZE = common dso_local global i64 0, align 8
@DDP_FLAG_LAST = common dso_local global i32 0, align 4
@MPA_HDR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siw_qp*, %struct.siw_wqe*)* @siw_prepare_fpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siw_prepare_fpdu(%struct.siw_qp* %0, %struct.siw_wqe* %1) #0 {
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca %struct.siw_wqe*, align 8
  %5 = alloca %struct.siw_iwarp_tx*, align 8
  %6 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %3, align 8
  store %struct.siw_wqe* %1, %struct.siw_wqe** %4, align 8
  %7 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %8 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %7, i32 0, i32 0
  store %struct.siw_iwarp_tx* %8, %struct.siw_iwarp_tx** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @iwarp_pktinfo, align 8
  %10 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %11 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = call i64 @__rdmap_get_opcode(%struct.TYPE_12__* %12)
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %18 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %20 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %19, i32 0, i32 7
  store i64 0, i64* %20, align 8
  %21 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %22 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DDP_FLAG_TAGGED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %2
  %30 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %31 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cpu_to_be32(i32 %32)
  %34 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %35 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  br label %52

38:                                               ; preds = %2
  %39 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %40 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %44 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = call i32 @cpu_to_be64(i32 %46)
  %48 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %49 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %38, %29
  %53 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %54 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %57 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %55, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %63 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load i64, i64* @MPA_CRC_SIZE, align 8
  %67 = add nsw i64 %65, %66
  %68 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %69 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %52
  %73 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %74 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %77 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MPA_CRC_SIZE, align 8
  %80 = add nsw i64 %78, %79
  %81 = sub nsw i64 %75, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @DDP_FLAG_LAST, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %86 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %84
  store i32 %90, i32* %88, align 4
  %91 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %92 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %91, i32 0, i32 2
  store i32 0, i32* %92, align 8
  br label %106

93:                                               ; preds = %52
  %94 = load i32, i32* @DDP_FLAG_LAST, align 4
  %95 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %96 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %94
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 0, %101
  %103 = and i32 %102, 3
  %104 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %105 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %93, %72
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %109 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %111 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = load i64, i64* @MPA_HDR_SIZE, align 8
  %117 = sub nsw i64 %115, %116
  %118 = call i32 @htons(i64 %117)
  %119 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %120 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  store i32 %118, i32* %122, align 4
  %123 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %124 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %106
  %128 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %129 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @crypto_shash_init(i64 %130)
  %132 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %133 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %132, i32 0, i32 6
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %136 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %135, i32 0, i32 5
  %137 = bitcast %struct.TYPE_10__* %136 to i32*
  %138 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %139 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @crypto_shash_update(i64 %134, i32* %137, i64 %140)
  %142 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %5, align 8
  %143 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %142, i32 0, i32 4
  store i32 1, i32* %143, align 8
  br label %144

144:                                              ; preds = %127, %106
  ret void
}

declare dso_local i64 @__rdmap_get_opcode(%struct.TYPE_12__*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @crypto_shash_init(i64) #1

declare dso_local i32 @crypto_shash_update(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
