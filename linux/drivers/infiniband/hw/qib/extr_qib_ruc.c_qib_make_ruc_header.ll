; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_make_ruc_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_make_ruc_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_7__, %struct.qib_qp_priv* }
%struct.TYPE_7__ = type { i32 }
%struct.qib_qp_priv = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8**, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ib_other_headers = type { i8** }
%struct.qib_ibport = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@QIB_LRH_BTH = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@QIB_LRH_GRH = common dso_local global i32 0, align 4
@SIZE_OF_CRC = common dso_local global i32 0, align 4
@IB_MIG_MIGRATED = common dso_local global i64 0, align 8
@IB_BTH_MIG_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_make_ruc_header(%struct.rvt_qp* %0, %struct.ib_other_headers* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.ib_other_headers*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qib_qp_priv*, align 8
  %10 = alloca %struct.qib_ibport*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %5, align 8
  store %struct.ib_other_headers* %1, %struct.ib_other_headers** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %15 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %14, i32 0, i32 8
  %16 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %15, align 8
  store %struct.qib_qp_priv* %16, %struct.qib_qp_priv** %9, align 8
  %17 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %18 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %22 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.qib_ibport* @to_iport(i32 %20, i32 %23)
  store %struct.qib_ibport* %24, %struct.qib_ibport** %10, align 8
  %25 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %26 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 0, %27
  %29 = and i32 %28, 3
  store i32 %29, i32* %13, align 4
  %30 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %31 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %32, %33
  %35 = ashr i32 %34, 2
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* @QIB_LRH_BTH, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %38 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %37, i32 0, i32 5
  %39 = call i32 @rdma_ah_get_ah_flags(i32* %38)
  %40 = load i32, i32* @IB_AH_GRH, align 4
  %41 = and i32 %39, %40
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %4
  %45 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %46 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %9, align 8
  %47 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %53 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %52, i32 0, i32 5
  %54 = call i32 @rdma_ah_read_grh(i32* %53)
  %55 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %56 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i64 @qib_make_grh(%struct.qib_ibport* %45, i32* %51, i32 %54, i32 %57, i32 %58)
  %60 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %61 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load i32, i32* @QIB_LRH_GRH, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %44, %4
  %68 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %69 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %72 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %71, i32 0, i32 5
  %73 = call i32 @rdma_ah_get_sl(i32* %72)
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 12
  %78 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %79 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %78, i32 0, i32 5
  %80 = call i32 @rdma_ah_get_sl(i32* %79)
  %81 = shl i32 %80, 4
  %82 = or i32 %77, %81
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i8* @cpu_to_be16(i32 %85)
  %87 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %9, align 8
  %88 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %87, i32 0, i32 0
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  store i8* %86, i8** %92, align 8
  %93 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %94 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %93, i32 0, i32 5
  %95 = call i32 @rdma_ah_get_dlid(i32* %94)
  %96 = call i8* @cpu_to_be16(i32 %95)
  %97 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %9, align 8
  %98 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  store i8* %96, i8** %102, align 8
  %103 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %104 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* @SIZE_OF_CRC, align 4
  %109 = add nsw i32 %107, %108
  %110 = call i8* @cpu_to_be16(i32 %109)
  %111 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %9, align 8
  %112 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 2
  store i8* %110, i8** %116, align 8
  %117 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %118 = call %struct.TYPE_12__* @ppd_from_ibp(%struct.qib_ibport* %117)
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %122 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %121, i32 0, i32 5
  %123 = call i32 @rdma_ah_get_path_bits(i32* %122)
  %124 = or i32 %120, %123
  %125 = call i8* @cpu_to_be16(i32 %124)
  %126 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %9, align 8
  %127 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %126, i32 0, i32 0
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i8**, i8*** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 3
  store i8* %125, i8** %131, align 8
  %132 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %133 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %134 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @qib_get_pkey(%struct.qib_ibport* %132, i32 %135)
  %137 = load i32, i32* %7, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %13, align 4
  %140 = shl i32 %139, 20
  %141 = load i32, i32* %7, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %7, align 4
  %143 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %144 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @IB_MIG_MIGRATED, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %67
  %149 = load i32, i32* @IB_BTH_MIG_REQ, align 4
  %150 = load i32, i32* %7, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %148, %67
  %153 = load i32, i32* %7, align 4
  %154 = call i8* @cpu_to_be32(i32 %153)
  %155 = load %struct.ib_other_headers*, %struct.ib_other_headers** %6, align 8
  %156 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %155, i32 0, i32 0
  %157 = load i8**, i8*** %156, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 0
  store i8* %154, i8** %158, align 8
  %159 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %160 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i8* @cpu_to_be32(i32 %161)
  %163 = load %struct.ib_other_headers*, %struct.ib_other_headers** %6, align 8
  %164 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %163, i32 0, i32 0
  %165 = load i8**, i8*** %164, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 1
  store i8* %162, i8** %166, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i8* @cpu_to_be32(i32 %167)
  %169 = load %struct.ib_other_headers*, %struct.ib_other_headers** %6, align 8
  %170 = getelementptr inbounds %struct.ib_other_headers, %struct.ib_other_headers* %169, i32 0, i32 0
  %171 = load i8**, i8*** %170, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 2
  store i8* %168, i8** %172, align 8
  %173 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %174 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %173, i32 0, i32 1
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @this_cpu_inc(i32 %177)
  ret void
}

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rdma_ah_get_ah_flags(i32*) #1

declare dso_local i64 @qib_make_grh(%struct.qib_ibport*, i32*, i32, i32, i32) #1

declare dso_local i32 @rdma_ah_read_grh(i32*) #1

declare dso_local i32 @rdma_ah_get_sl(i32*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @rdma_ah_get_dlid(i32*) #1

declare dso_local %struct.TYPE_12__* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @rdma_ah_get_path_bits(i32*) #1

declare dso_local i32 @qib_get_pkey(%struct.qib_ibport*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @this_cpu_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
