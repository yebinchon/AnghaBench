; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_core.c_virtcrypto_dataq_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_core.c_virtcrypto_dataq_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.virtio_crypto* }
%struct.virtio_crypto = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.virtio_crypto_request = type { i32 (%struct.virtio_crypto_request*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @virtcrypto_dataq_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtcrypto_dataq_callback(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtio_crypto*, align 8
  %4 = alloca %struct.virtio_crypto_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %8 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %9 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.virtio_crypto*, %struct.virtio_crypto** %11, align 8
  store %struct.virtio_crypto* %12, %struct.virtio_crypto** %3, align 8
  %13 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %14 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %17 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  br label %25

25:                                               ; preds = %64, %1
  %26 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %27 = call i32 @virtqueue_disable_cb(%struct.virtqueue* %26)
  br label %28

28:                                               ; preds = %53, %25
  %29 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %30 = call %struct.virtio_crypto_request* @virtqueue_get_buf(%struct.virtqueue* %29, i32* %6)
  store %struct.virtio_crypto_request* %30, %struct.virtio_crypto_request** %4, align 8
  %31 = icmp ne %struct.virtio_crypto_request* %30, null
  br i1 %31, label %32, label %63

32:                                               ; preds = %28
  %33 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %34 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.virtio_crypto_request*, %struct.virtio_crypto_request** %4, align 8
  %43 = getelementptr inbounds %struct.virtio_crypto_request, %struct.virtio_crypto_request* %42, i32 0, i32 0
  %44 = load i32 (%struct.virtio_crypto_request*, i32)*, i32 (%struct.virtio_crypto_request*, i32)** %43, align 8
  %45 = icmp ne i32 (%struct.virtio_crypto_request*, i32)* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %32
  %47 = load %struct.virtio_crypto_request*, %struct.virtio_crypto_request** %4, align 8
  %48 = getelementptr inbounds %struct.virtio_crypto_request, %struct.virtio_crypto_request* %47, i32 0, i32 0
  %49 = load i32 (%struct.virtio_crypto_request*, i32)*, i32 (%struct.virtio_crypto_request*, i32)** %48, align 8
  %50 = load %struct.virtio_crypto_request*, %struct.virtio_crypto_request** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 %49(%struct.virtio_crypto_request* %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %32
  %54 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %55 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  br label %28

63:                                               ; preds = %28
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %66 = call i32 @virtqueue_enable_cb(%struct.virtqueue* %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br i1 %68, label %25, label %69

69:                                               ; preds = %64
  %70 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %71 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @virtqueue_disable_cb(%struct.virtqueue*) #1

declare dso_local %struct.virtio_crypto_request* @virtqueue_get_buf(%struct.virtqueue*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @virtqueue_enable_cb(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
