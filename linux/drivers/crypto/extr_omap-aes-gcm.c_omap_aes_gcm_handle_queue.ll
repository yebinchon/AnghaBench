; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_gcm_handle_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-aes-gcm.c_omap_aes_gcm_handle_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_aes_dev = type { i32, %struct.aead_request*, %struct.omap_aes_ctx*, i32, i32 }
%struct.omap_aes_ctx = type { i32 }
%struct.aead_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)* }
%struct.omap_aes_reqctx = type { i32, %struct.omap_aes_dev* }

@FLAGS_BUSY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@FLAGS_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_aes_dev*, %struct.aead_request*)* @omap_aes_gcm_handle_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_aes_gcm_handle_queue(%struct.omap_aes_dev* %0, %struct.aead_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_aes_dev*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.omap_aes_ctx*, align 8
  %7 = alloca %struct.aead_request*, align 8
  %8 = alloca %struct.omap_aes_reqctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.omap_aes_dev* %0, %struct.omap_aes_dev** %4, align 8
  store %struct.aead_request* %1, %struct.aead_request** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %13 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %12, i32 0, i32 3
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %17 = icmp ne %struct.aead_request* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %20 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %19, i32 0, i32 4
  %21 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %22 = call i32 @aead_enqueue_request(i32* %20, %struct.aead_request* %21)
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %25 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FLAGS_BUSY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %32 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %31, i32 0, i32 3
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %3, align 4
  br label %131

36:                                               ; preds = %23
  %37 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %38 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %37, i32 0, i32 4
  %39 = call %struct.aead_request* @aead_get_backlog(i32* %38)
  store %struct.aead_request* %39, %struct.aead_request** %7, align 8
  %40 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %41 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %40, i32 0, i32 4
  %42 = call %struct.aead_request* @aead_dequeue_request(i32* %41)
  store %struct.aead_request* %42, %struct.aead_request** %5, align 8
  %43 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %44 = icmp ne %struct.aead_request* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i32, i32* @FLAGS_BUSY, align 4
  %47 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %48 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %36
  %52 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %53 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %52, i32 0, i32 3
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %57 = icmp ne %struct.aead_request* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %3, align 4
  br label %131

60:                                               ; preds = %51
  %61 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %62 = icmp ne %struct.aead_request* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %65 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %66, align 8
  %68 = load %struct.aead_request*, %struct.aead_request** %7, align 8
  %69 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %68, i32 0, i32 0
  %70 = load i32, i32* @EINPROGRESS, align 4
  %71 = sub nsw i32 0, %70
  %72 = call i32 %67(%struct.TYPE_2__* %69, i32 %71)
  br label %73

73:                                               ; preds = %63, %60
  %74 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %75 = call i32 @crypto_aead_reqtfm(%struct.aead_request* %74)
  %76 = call %struct.omap_aes_ctx* @crypto_aead_ctx(i32 %75)
  store %struct.omap_aes_ctx* %76, %struct.omap_aes_ctx** %6, align 8
  %77 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %78 = call %struct.omap_aes_reqctx* @aead_request_ctx(%struct.aead_request* %77)
  store %struct.omap_aes_reqctx* %78, %struct.omap_aes_reqctx** %8, align 8
  %79 = load %struct.omap_aes_ctx*, %struct.omap_aes_ctx** %6, align 8
  %80 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %81 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %80, i32 0, i32 2
  store %struct.omap_aes_ctx* %79, %struct.omap_aes_ctx** %81, align 8
  %82 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %83 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %8, align 8
  %84 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %83, i32 0, i32 1
  store %struct.omap_aes_dev* %82, %struct.omap_aes_dev** %84, align 8
  %85 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %86 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %87 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %86, i32 0, i32 1
  store %struct.aead_request* %85, %struct.aead_request** %87, align 8
  %88 = load i32, i32* @FLAGS_MODE_MASK, align 4
  %89 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %8, align 8
  %90 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %94 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @FLAGS_MODE_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = load %struct.omap_aes_reqctx*, %struct.omap_aes_reqctx** %8, align 8
  %100 = getelementptr inbounds %struct.omap_aes_reqctx, %struct.omap_aes_reqctx* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %98, %101
  %103 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %104 = getelementptr inbounds %struct.omap_aes_dev, %struct.omap_aes_dev* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %106 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %107 = call i32 @omap_aes_gcm_copy_buffers(%struct.omap_aes_dev* %105, %struct.aead_request* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %73
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %3, align 4
  br label %131

112:                                              ; preds = %73
  %113 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %114 = call i32 @omap_aes_write_ctrl(%struct.omap_aes_dev* %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %119 = call i32 @omap_aes_crypt_dma_start(%struct.omap_aes_dev* %118)
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @omap_aes_gcm_finish_req(%struct.omap_aes_dev* %124, i32 %125)
  %127 = load %struct.omap_aes_dev*, %struct.omap_aes_dev** %4, align 8
  %128 = call i32 @omap_aes_gcm_handle_queue(%struct.omap_aes_dev* %127, %struct.aead_request* null)
  br label %129

129:                                              ; preds = %123, %120
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %110, %58, %30
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @aead_enqueue_request(i32*, %struct.aead_request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.aead_request* @aead_get_backlog(i32*) #1

declare dso_local %struct.aead_request* @aead_dequeue_request(i32*) #1

declare dso_local %struct.omap_aes_ctx* @crypto_aead_ctx(i32) #1

declare dso_local i32 @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.omap_aes_reqctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @omap_aes_gcm_copy_buffers(%struct.omap_aes_dev*, %struct.aead_request*) #1

declare dso_local i32 @omap_aes_write_ctrl(%struct.omap_aes_dev*) #1

declare dso_local i32 @omap_aes_crypt_dma_start(%struct.omap_aes_dev*) #1

declare dso_local i32 @omap_aes_gcm_finish_req(%struct.omap_aes_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
