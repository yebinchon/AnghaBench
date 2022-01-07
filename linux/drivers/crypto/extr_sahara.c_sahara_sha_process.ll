; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_sha_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { i64, i32, i32, i32, i32, i64*, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }
%struct.ahash_request = type { i64 }
%struct.sahara_sha_reqctx = type { i32, i64, i32, i64, i64 }

@dev_ptr = common dso_local global %struct.sahara_dev* null, align 8
@SAHARA_REG_DAR = common dso_local global i32 0, align 4
@SAHARA_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SHA timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @sahara_sha_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_sha_process(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.sahara_dev*, align 8
  %5 = alloca %struct.sahara_sha_reqctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %8 = load %struct.sahara_dev*, %struct.sahara_dev** @dev_ptr, align 8
  store %struct.sahara_dev* %8, %struct.sahara_dev** %4, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %10 = call %struct.sahara_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %9)
  store %struct.sahara_sha_reqctx* %10, %struct.sahara_sha_reqctx** %5, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %12 = call i32 @sahara_sha_prepare_request(%struct.ahash_request* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %145

17:                                               ; preds = %1
  %18 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %19 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %24 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %25 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %26 = call i32 @sahara_sha_hw_data_descriptor_create(%struct.sahara_dev* %23, %struct.sahara_sha_reqctx* %24, %struct.ahash_request* %25, i32 0)
  %27 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %28 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %27, i32 0, i32 6
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %34 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  br label %71

35:                                               ; preds = %17
  %36 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %37 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %40 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %43 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memcpy(i64 %38, i64 %41, i32 %44)
  %46 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %47 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %48 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %49 = call i32 @sahara_sha_hw_context_descriptor_create(%struct.sahara_dev* %46, %struct.sahara_sha_reqctx* %47, %struct.ahash_request* %48, i32 0)
  %50 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %51 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %50, i32 0, i32 5
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %56 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %55, i32 0, i32 6
  %57 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %57, i64 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 %54, i64* %60, align 8
  %61 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %62 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %63 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %64 = call i32 @sahara_sha_hw_data_descriptor_create(%struct.sahara_dev* %61, %struct.sahara_sha_reqctx* %62, %struct.ahash_request* %63, i32 1)
  %65 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %66 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %65, i32 0, i32 6
  %67 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %67, i64 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %35, %22
  %72 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %73 = call i32 @sahara_dump_descriptors(%struct.sahara_dev* %72)
  %74 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %75 = call i32 @sahara_dump_links(%struct.sahara_dev* %74)
  %76 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %77 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %76, i32 0, i32 4
  %78 = call i32 @reinit_completion(i32* %77)
  %79 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %80 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %81 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %80, i32 0, i32 5
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @SAHARA_REG_DAR, align 4
  %86 = call i32 @sahara_write(%struct.sahara_dev* %79, i64 %84, i32 %85)
  %87 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %88 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %87, i32 0, i32 4
  %89 = load i32, i32* @SAHARA_TIMEOUT_MS, align 4
  %90 = call i32 @msecs_to_jiffies(i32 %89)
  %91 = call i64 @wait_for_completion_timeout(i32* %88, i32 %90)
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %71
  %95 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %96 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* @ETIMEDOUT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %145

101:                                              ; preds = %71
  %102 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %103 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %108 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %111 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %114 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @DMA_TO_DEVICE, align 4
  %117 = call i32 @dma_unmap_sg(i32 %109, i32 %112, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %106, %101
  %119 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %120 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %123 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %126 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @memcpy(i64 %121, i64 %124, i32 %127)
  %129 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %130 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %118
  %134 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %135 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %138 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.sahara_sha_reqctx*, %struct.sahara_sha_reqctx** %5, align 8
  %141 = getelementptr inbounds %struct.sahara_sha_reqctx, %struct.sahara_sha_reqctx* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @memcpy(i64 %136, i64 %139, i32 %142)
  br label %144

144:                                              ; preds = %133, %118
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %94, %15
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.sahara_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @sahara_sha_prepare_request(%struct.ahash_request*) #1

declare dso_local i32 @sahara_sha_hw_data_descriptor_create(%struct.sahara_dev*, %struct.sahara_sha_reqctx*, %struct.ahash_request*, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @sahara_sha_hw_context_descriptor_create(%struct.sahara_dev*, %struct.sahara_sha_reqctx*, %struct.ahash_request*, i32) #1

declare dso_local i32 @sahara_dump_descriptors(%struct.sahara_dev*) #1

declare dso_local i32 @sahara_dump_links(%struct.sahara_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @sahara_write(%struct.sahara_dev*, i64, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
