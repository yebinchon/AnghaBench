; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_submit_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_submit_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i64, i64, i64, i32, %struct.sdma_txreq**, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8** }
%struct.sdma_txreq = type { i32, i64, i64, %struct.sdma_desc* }
%struct.sdma_desc = type { i32* }

@SDMA_AHG_APPLY_UPDATE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sdma_engine*, %struct.sdma_txreq*)* @submit_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @submit_tx(%struct.sdma_engine* %0, %struct.sdma_txreq* %1) #0 {
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca %struct.sdma_txreq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sdma_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %3, align 8
  store %struct.sdma_txreq* %1, %struct.sdma_txreq** %4, align 8
  %11 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %12 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %11, i32 0, i32 3
  %13 = load %struct.sdma_desc*, %struct.sdma_desc** %12, align 8
  store %struct.sdma_desc* %13, %struct.sdma_desc** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %15 = call i32 @ahg_mode(%struct.sdma_txreq* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %17 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %20 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %18, %21
  store i64 %22, i64* %6, align 8
  %23 = load %struct.sdma_desc*, %struct.sdma_desc** %7, align 8
  %24 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_le64(i32 %27)
  %29 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %30 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %29, i32 0, i32 6
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* %28, i8** %36, align 8
  %37 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %38 = load %struct.sdma_desc*, %struct.sdma_desc** %7, align 8
  %39 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @add_gen(%struct.sdma_engine* %37, i32 %42)
  %44 = call i8* @cpu_to_le64(i32 %43)
  %45 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %46 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %45, i32 0, i32 6
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  store i8* %44, i8** %52, align 8
  %53 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %54 = load %struct.sdma_desc*, %struct.sdma_desc** %7, align 8
  %55 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sdma_desc*, %struct.sdma_desc** %7, align 8
  %60 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %66 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %65, i32 0, i32 6
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = call i32 @trace_hfi1_sdma_descriptor(%struct.sdma_engine* %53, i32 %58, i32 %63, i64 %64, %struct.TYPE_2__* %69)
  %71 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %72 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %76 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = and i64 %74, %77
  store i64 %78, i64* %6, align 8
  %79 = load %struct.sdma_desc*, %struct.sdma_desc** %7, align 8
  %80 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %79, i32 1
  store %struct.sdma_desc* %80, %struct.sdma_desc** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @SDMA_AHG_APPLY_UPDATE1, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %2
  %85 = load i32, i32* %9, align 4
  %86 = ashr i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %84, %2
  store i32 1, i32* %5, align 4
  br label %88

88:                                               ; preds = %160, %87
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %91 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %165

94:                                               ; preds = %88
  %95 = load %struct.sdma_desc*, %struct.sdma_desc** %7, align 8
  %96 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @cpu_to_le64(i32 %99)
  %101 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %102 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %101, i32 0, i32 6
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  store i8* %100, i8** %108, align 8
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %94
  %112 = load %struct.sdma_desc*, %struct.sdma_desc** %7, align 8
  %113 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %8, align 4
  br label %127

119:                                              ; preds = %94
  %120 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %121 = load %struct.sdma_desc*, %struct.sdma_desc** %7, align 8
  %122 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @add_gen(%struct.sdma_engine* %120, i32 %125)
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %119, %111
  %128 = load i32, i32* %10, align 4
  %129 = call i8* @cpu_to_le64(i32 %128)
  %130 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %131 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %130, i32 0, i32 6
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i64, i64* %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 1
  store i8* %129, i8** %137, align 8
  %138 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %139 = load %struct.sdma_desc*, %struct.sdma_desc** %7, align 8
  %140 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i64, i64* %6, align 8
  %146 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %147 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %146, i32 0, i32 6
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i64, i64* %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %149
  %151 = call i32 @trace_hfi1_sdma_descriptor(%struct.sdma_engine* %138, i32 %143, i32 %144, i64 %145, %struct.TYPE_2__* %150)
  %152 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %153 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %153, align 8
  %156 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %157 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = and i64 %155, %158
  store i64 %159, i64* %6, align 8
  br label %160

160:                                              ; preds = %127
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  %163 = load %struct.sdma_desc*, %struct.sdma_desc** %7, align 8
  %164 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %163, i32 1
  store %struct.sdma_desc* %164, %struct.sdma_desc** %7, align 8
  br label %88

165:                                              ; preds = %88
  %166 = load i64, i64* %6, align 8
  %167 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %168 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  %169 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %170 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %171 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %170, i32 0, i32 4
  %172 = load %struct.sdma_txreq**, %struct.sdma_txreq*** %171, align 8
  %173 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %174 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %174, align 8
  %177 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %178 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = and i64 %175, %179
  %181 = getelementptr inbounds %struct.sdma_txreq*, %struct.sdma_txreq** %172, i64 %180
  store %struct.sdma_txreq* %169, %struct.sdma_txreq** %181, align 8
  %182 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %183 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %186 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = sub nsw i32 %187, %184
  store i32 %188, i32* %186, align 8
  %189 = load i64, i64* %6, align 8
  ret i64 %189
}

declare dso_local i32 @ahg_mode(%struct.sdma_txreq*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @add_gen(%struct.sdma_engine*, i32) #1

declare dso_local i32 @trace_hfi1_sdma_descriptor(%struct.sdma_engine*, i32, i32, i64, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
