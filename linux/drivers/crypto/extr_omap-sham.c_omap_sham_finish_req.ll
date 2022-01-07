; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_finish_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_finish_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32)* }
%struct.omap_sham_reqctx = type { i32, %struct.TYPE_7__*, i64, %struct.omap_sham_dev* }
%struct.TYPE_7__ = type { i64 }
%struct.omap_sham_dev = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ahash_request*, i32)* }

@FLAGS_SGS_COPIED = common dso_local global i32 0, align 4
@FLAGS_SGS_ALLOCED = common dso_local global i32 0, align 4
@FLAGS_FINAL = common dso_local global i32 0, align 4
@FLAGS_ERROR = common dso_local global i32 0, align 4
@FLAGS_BUSY = common dso_local global i32 0, align 4
@FLAGS_CPU = common dso_local global i32 0, align 4
@FLAGS_DMA_READY = common dso_local global i32 0, align 4
@FLAGS_OUTPUT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*, i32)* @omap_sham_finish_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_sham_finish_req(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_sham_reqctx*, align 8
  %6 = alloca %struct.omap_sham_dev*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = call %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.omap_sham_reqctx* %8, %struct.omap_sham_reqctx** %5, align 8
  %9 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %5, align 8
  %10 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %9, i32 0, i32 3
  %11 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %10, align 8
  store %struct.omap_sham_dev* %11, %struct.omap_sham_dev** %6, align 8
  %12 = load i32, i32* @FLAGS_SGS_COPIED, align 4
  %13 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %14 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %5, align 8
  %19 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = call i64 @sg_virt(%struct.TYPE_7__* %20)
  %22 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %5, align 8
  %23 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %5, align 8
  %28 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = call i32 @get_order(i64 %30)
  %32 = call i32 @free_pages(i64 %21, i32 %31)
  br label %33

33:                                               ; preds = %17, %2
  %34 = load i32, i32* @FLAGS_SGS_ALLOCED, align 4
  %35 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %36 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %5, align 8
  %41 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = call i32 @kfree(%struct.TYPE_7__* %42)
  br label %44

44:                                               ; preds = %39, %33
  %45 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %5, align 8
  %46 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %45, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %46, align 8
  %47 = load i32, i32* @FLAGS_SGS_ALLOCED, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = load i32, i32* @FLAGS_SGS_COPIED, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = or i32 %48, %50
  %52 = xor i32 %51, -1
  %53 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %54 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %44
  %60 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %61 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32 (%struct.ahash_request*, i32)*, i32 (%struct.ahash_request*, i32)** %63, align 8
  %65 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %66 = call i32 %64(%struct.ahash_request* %65, i32 1)
  %67 = load i32, i32* @FLAGS_FINAL, align 4
  %68 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %69 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %68, i32 0, i32 0
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %74 = call i32 @omap_sham_finish(%struct.ahash_request* %73)
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %59
  br label %83

76:                                               ; preds = %44
  %77 = load i32, i32* @FLAGS_ERROR, align 4
  %78 = call i32 @BIT(i32 %77)
  %79 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %5, align 8
  %80 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %76, %75
  %84 = load i32, i32* @FLAGS_BUSY, align 4
  %85 = call i32 @BIT(i32 %84)
  %86 = load i32, i32* @FLAGS_FINAL, align 4
  %87 = call i32 @BIT(i32 %86)
  %88 = or i32 %85, %87
  %89 = load i32, i32* @FLAGS_CPU, align 4
  %90 = call i32 @BIT(i32 %89)
  %91 = or i32 %88, %90
  %92 = load i32, i32* @FLAGS_DMA_READY, align 4
  %93 = call i32 @BIT(i32 %92)
  %94 = or i32 %91, %93
  %95 = load i32, i32* @FLAGS_OUTPUT_READY, align 4
  %96 = call i32 @BIT(i32 %95)
  %97 = or i32 %94, %96
  %98 = xor i32 %97, -1
  %99 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %100 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %104 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @pm_runtime_mark_last_busy(i32 %105)
  %107 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %6, align 8
  %108 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @pm_runtime_put_autosuspend(i32 %109)
  %111 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %112 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %113, align 8
  %115 = icmp ne i32 (%struct.TYPE_6__*, i32)* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %83
  %117 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %118 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %119, align 8
  %121 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %122 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %121, i32 0, i32 0
  %123 = load i32, i32* %4, align 4
  %124 = call i32 %120(%struct.TYPE_6__* %122, i32 %123)
  br label %125

125:                                              ; preds = %116, %83
  ret void
}

declare dso_local %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i64 @sg_virt(%struct.TYPE_7__*) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @omap_sham_finish(%struct.ahash_request*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
