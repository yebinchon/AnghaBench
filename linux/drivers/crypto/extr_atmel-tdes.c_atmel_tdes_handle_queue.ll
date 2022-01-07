; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_handle_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_handle_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_tdes_dev = type { i32, i32, %struct.atmel_tdes_ctx*, i32, i64, i32, i64, i32, %struct.ablkcipher_request*, i32, i32 }
%struct.atmel_tdes_ctx = type { %struct.atmel_tdes_dev* }
%struct.ablkcipher_request = type { i32, i32, i32 }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)* }
%struct.atmel_tdes_reqctx = type { i32 }

@TDES_FLAGS_BUSY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@TDES_FLAGS_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_tdes_dev*, %struct.ablkcipher_request*)* @atmel_tdes_handle_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_tdes_handle_queue(%struct.atmel_tdes_dev* %0, %struct.ablkcipher_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_tdes_dev*, align 8
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca %struct.crypto_async_request*, align 8
  %7 = alloca %struct.crypto_async_request*, align 8
  %8 = alloca %struct.atmel_tdes_ctx*, align 8
  %9 = alloca %struct.atmel_tdes_reqctx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.atmel_tdes_dev* %0, %struct.atmel_tdes_dev** %4, align 8
  store %struct.ablkcipher_request* %1, %struct.ablkcipher_request** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %14 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %13, i32 0, i32 9
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %18 = icmp ne %struct.ablkcipher_request* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %21 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %20, i32 0, i32 10
  %22 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %23 = call i32 @ablkcipher_enqueue_request(i32* %21, %struct.ablkcipher_request* %22)
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %26 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TDES_FLAGS_BUSY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %33 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %32, i32 0, i32 9
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %3, align 4
  br label %144

37:                                               ; preds = %24
  %38 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %39 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %38, i32 0, i32 10
  %40 = call %struct.crypto_async_request* @crypto_get_backlog(i32* %39)
  store %struct.crypto_async_request* %40, %struct.crypto_async_request** %7, align 8
  %41 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %42 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %41, i32 0, i32 10
  %43 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %42)
  store %struct.crypto_async_request* %43, %struct.crypto_async_request** %6, align 8
  %44 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %45 = icmp ne %struct.crypto_async_request* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32, i32* @TDES_FLAGS_BUSY, align 4
  %48 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %49 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %37
  %53 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %54 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %53, i32 0, i32 9
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %58 = icmp ne %struct.crypto_async_request* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %3, align 4
  br label %144

61:                                               ; preds = %52
  %62 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %63 = icmp ne %struct.crypto_async_request* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %66 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %65, i32 0, i32 0
  %67 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %66, align 8
  %68 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %69 = load i32, i32* @EINPROGRESS, align 4
  %70 = sub nsw i32 0, %69
  %71 = call i32 %67(%struct.crypto_async_request* %68, i32 %70)
  br label %72

72:                                               ; preds = %64, %61
  %73 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %74 = call %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request* %73)
  store %struct.ablkcipher_request* %74, %struct.ablkcipher_request** %5, align 8
  %75 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %76 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %77 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %76, i32 0, i32 8
  store %struct.ablkcipher_request* %75, %struct.ablkcipher_request** %77, align 8
  %78 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %79 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %82 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 8
  %83 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %84 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %83, i32 0, i32 6
  store i64 0, i64* %84, align 8
  %85 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %86 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %89 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  %90 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %91 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  %92 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %93 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %96 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %98 = call %struct.atmel_tdes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %97)
  store %struct.atmel_tdes_reqctx* %98, %struct.atmel_tdes_reqctx** %9, align 8
  %99 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %100 = call i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %99)
  %101 = call %struct.atmel_tdes_ctx* @crypto_ablkcipher_ctx(i32 %100)
  store %struct.atmel_tdes_ctx* %101, %struct.atmel_tdes_ctx** %8, align 8
  %102 = load i32, i32* @TDES_FLAGS_MODE_MASK, align 4
  %103 = load %struct.atmel_tdes_reqctx*, %struct.atmel_tdes_reqctx** %9, align 8
  %104 = getelementptr inbounds %struct.atmel_tdes_reqctx, %struct.atmel_tdes_reqctx* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %108 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @TDES_FLAGS_MODE_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  %113 = load %struct.atmel_tdes_reqctx*, %struct.atmel_tdes_reqctx** %9, align 8
  %114 = getelementptr inbounds %struct.atmel_tdes_reqctx, %struct.atmel_tdes_reqctx* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %112, %115
  %117 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %118 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.atmel_tdes_ctx*, %struct.atmel_tdes_ctx** %8, align 8
  %120 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %121 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %120, i32 0, i32 2
  store %struct.atmel_tdes_ctx* %119, %struct.atmel_tdes_ctx** %121, align 8
  %122 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %123 = load %struct.atmel_tdes_ctx*, %struct.atmel_tdes_ctx** %8, align 8
  %124 = getelementptr inbounds %struct.atmel_tdes_ctx, %struct.atmel_tdes_ctx* %123, i32 0, i32 0
  store %struct.atmel_tdes_dev* %122, %struct.atmel_tdes_dev** %124, align 8
  %125 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %126 = call i32 @atmel_tdes_write_ctrl(%struct.atmel_tdes_dev* %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %72
  %130 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %131 = call i32 @atmel_tdes_crypt_start(%struct.atmel_tdes_dev* %130)
  store i32 %131, i32* %11, align 4
  br label %132

132:                                              ; preds = %129, %72
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @atmel_tdes_finish_req(%struct.atmel_tdes_dev* %136, i32 %137)
  %139 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %140 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %139, i32 0, i32 1
  %141 = call i32 @tasklet_schedule(i32* %140)
  br label %142

142:                                              ; preds = %135, %132
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %59, %31
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ablkcipher_enqueue_request(i32*, %struct.ablkcipher_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.crypto_async_request* @crypto_get_backlog(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.atmel_tdes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local %struct.atmel_tdes_ctx* @crypto_ablkcipher_ctx(i32) #1

declare dso_local i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local i32 @atmel_tdes_write_ctrl(%struct.atmel_tdes_dev*) #1

declare dso_local i32 @atmel_tdes_crypt_start(%struct.atmel_tdes_dev*) #1

declare dso_local i32 @atmel_tdes_finish_req(%struct.atmel_tdes_dev*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
