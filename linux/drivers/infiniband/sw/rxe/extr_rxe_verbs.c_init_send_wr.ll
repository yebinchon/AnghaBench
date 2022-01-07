; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_init_send_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_init_send_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { i32 }
%struct.rxe_send_wr = type { i32, %struct.TYPE_20__, %struct.TYPE_17__, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.ib_send_wr = type { i32, %struct.TYPE_18__, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }

@IB_QPT_UD = common dso_local global i64 0, align 8
@IB_QPT_SMI = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_qp*, %struct.rxe_send_wr*, %struct.ib_send_wr*)* @init_send_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_send_wr(%struct.rxe_qp* %0, %struct.rxe_send_wr* %1, %struct.ib_send_wr* %2) #0 {
  %4 = alloca %struct.rxe_qp*, align 8
  %5 = alloca %struct.rxe_send_wr*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %4, align 8
  store %struct.rxe_send_wr* %1, %struct.rxe_send_wr** %5, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %6, align 8
  %7 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %8 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %11 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %13 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %16 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %18 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %21 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %23 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %26 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %28 = call i64 @qp_type(%struct.rxe_qp* %27)
  %29 = load i64, i64* @IB_QPT_UD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %3
  %32 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %33 = call i64 @qp_type(%struct.rxe_qp* %32)
  %34 = load i64, i64* @IB_QPT_SMI, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %38 = call i64 @qp_type(%struct.rxe_qp* %37)
  %39 = load i64, i64* @IB_QPT_GSI, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %36, %31, %3
  %42 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %43 = call %struct.TYPE_21__* @ud_wr(%struct.ib_send_wr* %42)
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %47 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  store i32 %45, i32* %49, align 4
  %50 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %51 = call %struct.TYPE_21__* @ud_wr(%struct.ib_send_wr* %50)
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %55 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  %58 = load %struct.rxe_qp*, %struct.rxe_qp** %4, align 8
  %59 = call i64 @qp_type(%struct.rxe_qp* %58)
  %60 = load i64, i64* @IB_QPT_GSI, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %41
  %63 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %64 = call %struct.TYPE_21__* @ud_wr(%struct.ib_send_wr* %63)
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %68 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %62, %41
  %72 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %73 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 129
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %78 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %82 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %76, %71
  br label %198

85:                                               ; preds = %36
  %86 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %87 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %196 [
    i32 131, label %89
    i32 133, label %97
    i32 132, label %97
    i32 129, label %114
    i32 128, label %122
    i32 136, label %130
    i32 135, label %130
    i32 134, label %163
    i32 130, label %171
  ]

89:                                               ; preds = %85
  %90 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %91 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %95 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  br label %97

97:                                               ; preds = %85, %85, %89
  %98 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %99 = call %struct.TYPE_12__* @rdma_wr(%struct.ib_send_wr* %98)
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %103 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  store i32 %101, i32* %105, align 4
  %106 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %107 = call %struct.TYPE_12__* @rdma_wr(%struct.ib_send_wr* %106)
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %111 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 4
  br label %197

114:                                              ; preds = %85
  %115 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %116 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %120 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  br label %197

122:                                              ; preds = %85
  %123 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %124 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %128 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  br label %197

130:                                              ; preds = %85, %85
  %131 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %132 = call %struct.TYPE_13__* @atomic_wr(%struct.ib_send_wr* %131)
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %136 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 3
  store i32 %134, i32* %138, align 4
  %139 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %140 = call %struct.TYPE_13__* @atomic_wr(%struct.ib_send_wr* %139)
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %144 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 2
  store i32 %142, i32* %146, align 4
  %147 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %148 = call %struct.TYPE_13__* @atomic_wr(%struct.ib_send_wr* %147)
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %152 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  store i32 %150, i32* %154, align 4
  %155 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %156 = call %struct.TYPE_13__* @atomic_wr(%struct.ib_send_wr* %155)
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %160 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  store i32 %158, i32* %162, align 4
  br label %197

163:                                              ; preds = %85
  %164 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %165 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %169 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  store i32 %167, i32* %170, align 4
  br label %197

171:                                              ; preds = %85
  %172 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %173 = call %struct.TYPE_22__* @reg_wr(%struct.ib_send_wr* %172)
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %177 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 2
  store i32 %175, i32* %179, align 4
  %180 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %181 = call %struct.TYPE_22__* @reg_wr(%struct.ib_send_wr* %180)
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %185 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 1
  store i32 %183, i32* %187, align 4
  %188 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %189 = call %struct.TYPE_22__* @reg_wr(%struct.ib_send_wr* %188)
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.rxe_send_wr*, %struct.rxe_send_wr** %5, align 8
  %193 = getelementptr inbounds %struct.rxe_send_wr, %struct.rxe_send_wr* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  store i32 %191, i32* %195, align 4
  br label %197

196:                                              ; preds = %85
  br label %197

197:                                              ; preds = %196, %171, %163, %130, %122, %114, %97
  br label %198

198:                                              ; preds = %197, %84
  ret void
}

declare dso_local i64 @qp_type(%struct.rxe_qp*) #1

declare dso_local %struct.TYPE_21__* @ud_wr(%struct.ib_send_wr*) #1

declare dso_local %struct.TYPE_12__* @rdma_wr(%struct.ib_send_wr*) #1

declare dso_local %struct.TYPE_13__* @atomic_wr(%struct.ib_send_wr*) #1

declare dso_local %struct.TYPE_22__* @reg_wr(%struct.ib_send_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
