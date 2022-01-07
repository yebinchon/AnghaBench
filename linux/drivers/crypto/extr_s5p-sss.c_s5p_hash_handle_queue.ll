; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_handle_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_handle_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_aes_dev = type { i32, %struct.ahash_request*, i32, i32, i32 }
%struct.ahash_request = type { i32 }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)* }
%struct.s5p_hash_reqctx = type { i32, i32, i32, i64, i64 }

@HASH_FLAGS_BUSY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"handling new req, op_update: %u, nbytes: %d\0A\00", align 1
@SSS_HASHIN_INDEPENDENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_aes_dev*, %struct.ahash_request*)* @s5p_hash_handle_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_hash_handle_queue(%struct.s5p_aes_dev* %0, %struct.ahash_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5p_aes_dev*, align 8
  %5 = alloca %struct.ahash_request*, align 8
  %6 = alloca %struct.crypto_async_request*, align 8
  %7 = alloca %struct.crypto_async_request*, align 8
  %8 = alloca %struct.s5p_hash_reqctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.s5p_aes_dev* %0, %struct.s5p_aes_dev** %4, align 8
  store %struct.ahash_request* %1, %struct.ahash_request** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %159, %2
  %13 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %14 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %13, i32 0, i32 2
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %18 = icmp ne %struct.ahash_request* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %21 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %20, i32 0, i32 4
  %22 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %23 = call i32 @ahash_enqueue_request(i32* %21, %struct.ahash_request* %22)
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %19, %12
  %25 = load i32, i32* @HASH_FLAGS_BUSY, align 4
  %26 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %27 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %26, i32 0, i32 3
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %32 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %31, i32 0, i32 2
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %3, align 4
  br label %165

36:                                               ; preds = %24
  %37 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %38 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %37, i32 0, i32 4
  %39 = call %struct.crypto_async_request* @crypto_get_backlog(i32* %38)
  store %struct.crypto_async_request* %39, %struct.crypto_async_request** %7, align 8
  %40 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %41 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %40, i32 0, i32 4
  %42 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %41)
  store %struct.crypto_async_request* %42, %struct.crypto_async_request** %6, align 8
  %43 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %44 = icmp ne %struct.crypto_async_request* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i32, i32* @HASH_FLAGS_BUSY, align 4
  %47 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %48 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %47, i32 0, i32 3
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %45, %36
  %51 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %52 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %51, i32 0, i32 2
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %56 = icmp ne %struct.crypto_async_request* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %3, align 4
  br label %165

59:                                               ; preds = %50
  %60 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %61 = icmp ne %struct.crypto_async_request* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %64 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %63, i32 0, i32 0
  %65 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %64, align 8
  %66 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %67 = load i32, i32* @EINPROGRESS, align 4
  %68 = sub nsw i32 0, %67
  %69 = call i32 %65(%struct.crypto_async_request* %66, i32 %68)
  br label %70

70:                                               ; preds = %62, %59
  %71 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %72 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %71)
  store %struct.ahash_request* %72, %struct.ahash_request** %5, align 8
  %73 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %74 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %75 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %74, i32 0, i32 1
  store %struct.ahash_request* %73, %struct.ahash_request** %75, align 8
  %76 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %77 = call %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request* %76)
  store %struct.s5p_hash_reqctx* %77, %struct.s5p_hash_reqctx** %8, align 8
  %78 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %79 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %80 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @s5p_hash_prepare_request(%struct.ahash_request* %78, i64 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %70
  %86 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %87 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85, %70
  br label %154

91:                                               ; preds = %85
  %92 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %93 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %96 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %99 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_dbg(i32 %94, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %97, i32 %100)
  %102 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %103 = load i32, i32* @SSS_HASHIN_INDEPENDENT, align 4
  %104 = call i32 @s5p_ahash_dma_init(%struct.s5p_aes_dev* %102, i32 %103)
  %105 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %106 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %91
  %110 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %111 = call i32 @s5p_hash_write_iv(%struct.ahash_request* %110)
  br label %112

112:                                              ; preds = %109, %91
  %113 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %114 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %147

117:                                              ; preds = %112
  %118 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %119 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %120 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %123 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @s5p_hash_xmit_dma(%struct.s5p_aes_dev* %118, i32 %121, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @EINPROGRESS, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp ne i32 %126, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %117
  %131 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %132 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %137 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %135
  %141 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %142 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %143 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @s5p_hash_xmit_dma(%struct.s5p_aes_dev* %141, i32 %144, i32 1)
  store i32 %145, i32* %10, align 4
  br label %146

146:                                              ; preds = %140, %135, %130, %117
  br label %153

147:                                              ; preds = %112
  %148 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %149 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %8, align 8
  %150 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @s5p_hash_xmit_dma(%struct.s5p_aes_dev* %148, i32 %151, i32 1)
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %147, %146
  br label %154

154:                                              ; preds = %153, %90
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @EINPROGRESS, align 4
  %157 = sub nsw i32 0, %156
  %158 = icmp ne i32 %155, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @s5p_hash_finish_req(%struct.ahash_request* %160, i32 %161)
  store %struct.ahash_request* null, %struct.ahash_request** %5, align 8
  br label %12

163:                                              ; preds = %154
  %164 = load i32, i32* %11, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %163, %57, %30
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ahash_enqueue_request(i32*, %struct.ahash_request*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.crypto_async_request* @crypto_get_backlog(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @s5p_hash_prepare_request(%struct.ahash_request*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @s5p_ahash_dma_init(%struct.s5p_aes_dev*, i32) #1

declare dso_local i32 @s5p_hash_write_iv(%struct.ahash_request*) #1

declare dso_local i32 @s5p_hash_xmit_dma(%struct.s5p_aes_dev*, i32, i32) #1

declare dso_local i32 @s5p_hash_finish_req(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
