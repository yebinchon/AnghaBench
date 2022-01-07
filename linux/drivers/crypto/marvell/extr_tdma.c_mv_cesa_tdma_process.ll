; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_tdma_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_tdma_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_engine = type { i32, %struct.crypto_async_request*, %struct.TYPE_3__, i64 }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)*, i32 }
%struct.TYPE_3__ = type { i32*, %struct.mv_cesa_tdma_desc* }
%struct.mv_cesa_tdma_desc = type { i32, i64, %struct.mv_cesa_tdma_desc* }
%struct.mv_cesa_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*)* }

@CESA_TDMA_CUR = common dso_local global i64 0, align 8
@CESA_TDMA_END_OF_REQ = common dso_local global i32 0, align 4
@CESA_SA_INT_ACC0_IDMA_DONE = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv_cesa_tdma_process(%struct.mv_cesa_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.mv_cesa_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_async_request*, align 8
  %6 = alloca %struct.mv_cesa_tdma_desc*, align 8
  %7 = alloca %struct.mv_cesa_tdma_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_async_request*, align 8
  %11 = alloca %struct.mv_cesa_ctx*, align 8
  %12 = alloca i32, align 4
  store %struct.mv_cesa_engine* %0, %struct.mv_cesa_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.crypto_async_request* null, %struct.crypto_async_request** %5, align 8
  store %struct.mv_cesa_tdma_desc* null, %struct.mv_cesa_tdma_desc** %6, align 8
  store %struct.mv_cesa_tdma_desc* null, %struct.mv_cesa_tdma_desc** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %14 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CESA_TDMA_CUR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @readl(i64 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %20 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %21, align 8
  store %struct.mv_cesa_tdma_desc* %22, %struct.mv_cesa_tdma_desc** %6, align 8
  br label %23

23:                                               ; preds = %136, %2
  %24 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %6, align 8
  %25 = icmp ne %struct.mv_cesa_tdma_desc* %24, null
  br i1 %25, label %26, label %138

26:                                               ; preds = %23
  %27 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %28 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %6, align 8
  %31 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %30, i32 0, i32 2
  %32 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %31, align 8
  store %struct.mv_cesa_tdma_desc* %32, %struct.mv_cesa_tdma_desc** %7, align 8
  %33 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %34 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_bh(i32* %34)
  %36 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %6, align 8
  %37 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CESA_TDMA_END_OF_REQ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %125

42:                                               ; preds = %26
  store %struct.crypto_async_request* null, %struct.crypto_async_request** %10, align 8
  %43 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %44 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_bh(i32* %44)
  %46 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %47 = icmp ne %struct.crypto_async_request* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %50 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %49, i32 0, i32 1
  %51 = load %struct.crypto_async_request*, %struct.crypto_async_request** %50, align 8
  store %struct.crypto_async_request* %51, %struct.crypto_async_request** %5, align 8
  br label %55

52:                                               ; preds = %42
  %53 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %54 = call %struct.crypto_async_request* @mv_cesa_dequeue_req_locked(%struct.mv_cesa_engine* %53, %struct.crypto_async_request** %10)
  store %struct.crypto_async_request* %54, %struct.crypto_async_request** %5, align 8
  br label %55

55:                                               ; preds = %52, %48
  %56 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %6, align 8
  %57 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %56, i32 0, i32 2
  %58 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %57, align 8
  %59 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %60 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store %struct.mv_cesa_tdma_desc* %58, %struct.mv_cesa_tdma_desc** %61, align 8
  %62 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %6, align 8
  %63 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %62, i32 0, i32 2
  store %struct.mv_cesa_tdma_desc* null, %struct.mv_cesa_tdma_desc** %63, align 8
  %64 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %65 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %66, align 8
  %68 = icmp eq %struct.mv_cesa_tdma_desc* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %71 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %69, %55
  %74 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %75 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_bh(i32* %75)
  %77 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %78 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.mv_cesa_ctx* @crypto_tfm_ctx(i32 %79)
  store %struct.mv_cesa_ctx* %80, %struct.mv_cesa_ctx** %11, align 8
  %81 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %6, align 8
  %82 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %73
  %87 = load i32, i32* %4, align 4
  br label %90

88:                                               ; preds = %73
  %89 = load i32, i32* @CESA_SA_INT_ACC0_IDMA_DONE, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  store i32 %91, i32* %12, align 4
  %92 = load %struct.mv_cesa_ctx*, %struct.mv_cesa_ctx** %11, align 8
  %93 = getelementptr inbounds %struct.mv_cesa_ctx, %struct.mv_cesa_ctx* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %95, align 8
  %97 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 %96(%struct.crypto_async_request* %97, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load %struct.mv_cesa_ctx*, %struct.mv_cesa_ctx** %11, align 8
  %101 = getelementptr inbounds %struct.mv_cesa_ctx, %struct.mv_cesa_ctx* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32 (%struct.crypto_async_request*)*, i32 (%struct.crypto_async_request*)** %103, align 8
  %105 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %106 = call i32 %104(%struct.crypto_async_request* %105)
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %90
  %110 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %111 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %112 = call i32 @mv_cesa_engine_enqueue_complete_request(%struct.mv_cesa_engine* %110, %struct.crypto_async_request* %111)
  br label %113

113:                                              ; preds = %109, %90
  %114 = load %struct.crypto_async_request*, %struct.crypto_async_request** %10, align 8
  %115 = icmp ne %struct.crypto_async_request* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load %struct.crypto_async_request*, %struct.crypto_async_request** %10, align 8
  %118 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %117, i32 0, i32 0
  %119 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %118, align 8
  %120 = load %struct.crypto_async_request*, %struct.crypto_async_request** %10, align 8
  %121 = load i32, i32* @EINPROGRESS, align 4
  %122 = sub nsw i32 0, %121
  %123 = call i32 %119(%struct.crypto_async_request* %120, i32 %122)
  br label %124

124:                                              ; preds = %116, %113
  br label %125

125:                                              ; preds = %124, %26
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %6, align 8
  %130 = getelementptr inbounds %struct.mv_cesa_tdma_desc, %struct.mv_cesa_tdma_desc* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128, %125
  br label %138

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.mv_cesa_tdma_desc*, %struct.mv_cesa_tdma_desc** %7, align 8
  store %struct.mv_cesa_tdma_desc* %137, %struct.mv_cesa_tdma_desc** %6, align 8
  br label %23

138:                                              ; preds = %134, %23
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %143 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %142, i32 0, i32 0
  %144 = call i32 @spin_lock_bh(i32* %143)
  %145 = load %struct.crypto_async_request*, %struct.crypto_async_request** %5, align 8
  %146 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %147 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %146, i32 0, i32 1
  store %struct.crypto_async_request* %145, %struct.crypto_async_request** %147, align 8
  %148 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %3, align 8
  %149 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %148, i32 0, i32 0
  %150 = call i32 @spin_unlock_bh(i32* %149)
  br label %151

151:                                              ; preds = %141, %138
  %152 = load i32, i32* %9, align 4
  ret i32 %152
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.crypto_async_request* @mv_cesa_dequeue_req_locked(%struct.mv_cesa_engine*, %struct.crypto_async_request**) #1

declare dso_local %struct.mv_cesa_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @mv_cesa_engine_enqueue_complete_request(%struct.mv_cesa_engine*, %struct.crypto_async_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
