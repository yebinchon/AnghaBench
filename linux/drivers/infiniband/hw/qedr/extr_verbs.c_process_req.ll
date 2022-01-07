; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_process_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_process_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.qedr_qp = type { %struct.TYPE_8__, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.qedr_cq = type { i32 }
%struct.ib_wc = type { i32, i32, i32, i32, i32*, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.qedr_qp*, %struct.qedr_cq*, i32, %struct.ib_wc*, i64, i32, i32)* @process_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_req(%struct.qedr_dev* %0, %struct.qedr_qp* %1, %struct.qedr_cq* %2, i32 %3, %struct.ib_wc* %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.qedr_dev*, align 8
  %10 = alloca %struct.qedr_qp*, align 8
  %11 = alloca %struct.qedr_cq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_wc*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.qedr_dev* %0, %struct.qedr_dev** %9, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %10, align 8
  store %struct.qedr_cq* %2, %struct.qedr_cq** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.ib_wc* %4, %struct.ib_wc** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %163, %8
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %23 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %14, align 8
  %27 = icmp ne i64 %25, %26
  br label %28

28:                                               ; preds = %21, %18
  %29 = phi i1 [ false, %18 ], [ %27, %21 ]
  br i1 %29, label %30, label %167

30:                                               ; preds = %28
  %31 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %32 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %35 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %47 = call i32 @qedr_chk_if_fmr(%struct.qedr_qp* %46)
  br label %144

48:                                               ; preds = %42, %30
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %51 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %53 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %52, i32 0, i32 7
  store i64 0, i64* %53, align 8
  %54 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %55 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %57 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %60 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %62 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %61, i32 0, i32 2
  %63 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %64 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %63, i32 0, i32 4
  store i32* %62, i32** %64, align 8
  %65 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %66 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %69 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %76 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %78 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %81 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %88 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %90 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %136 [
    i32 130, label %92
    i32 133, label %105
    i32 132, label %105
    i32 129, label %108
    i32 131, label %123
    i32 128, label %123
  ]

92:                                               ; preds = %48
  %93 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %94 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %97 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %104 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  br label %137

105:                                              ; preds = %48, %48
  %106 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %107 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %106, i32 0, i32 2
  store i32 8, i32* %107, align 8
  br label %137

108:                                              ; preds = %48
  %109 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %110 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %113 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %137

123:                                              ; preds = %48, %48
  %124 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %125 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %124, i32 0, i32 1
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %128 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %135 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  br label %137

136:                                              ; preds = %48
  br label %137

137:                                              ; preds = %136, %123, %108, %105, %92
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %12, align 4
  %140 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %141 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %140, i32 1
  store %struct.ib_wc* %141, %struct.ib_wc** %13, align 8
  %142 = load i64, i64* %17, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %17, align 8
  br label %144

144:                                              ; preds = %137, %45
  br label %145

145:                                              ; preds = %158, %144
  %146 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %147 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %146, i32 0, i32 1
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %150 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %154, align 8
  %157 = icmp ne i32 %155, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %145
  %159 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %160 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = call i32 @qed_chain_consume(i32* %161)
  br label %145

163:                                              ; preds = %145
  %164 = load %struct.qedr_qp*, %struct.qedr_qp** %10, align 8
  %165 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %164, i32 0, i32 0
  %166 = call i32 @qedr_inc_sw_cons(%struct.TYPE_8__* %165)
  br label %18

167:                                              ; preds = %28
  %168 = load i64, i64* %17, align 8
  %169 = trunc i64 %168 to i32
  ret i32 %169
}

declare dso_local i32 @qedr_chk_if_fmr(%struct.qedr_qp*) #1

declare dso_local i32 @qed_chain_consume(i32*) #1

declare dso_local i32 @qedr_inc_sw_cons(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
