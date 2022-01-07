; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_core.c_virtcrypto_free_unused_reqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_core.c_virtcrypto_free_unused_reqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_crypto = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.virtqueue* }
%struct.virtqueue = type { i32 }
%struct.virtio_crypto_request = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_crypto*)* @virtcrypto_free_unused_reqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtcrypto_free_unused_reqs(%struct.virtio_crypto* %0) #0 {
  %2 = alloca %struct.virtio_crypto*, align 8
  %3 = alloca %struct.virtio_crypto_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtqueue*, align 8
  store %struct.virtio_crypto* %0, %struct.virtio_crypto** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %35, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.virtio_crypto*, %struct.virtio_crypto** %2, align 8
  %9 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %6
  %13 = load %struct.virtio_crypto*, %struct.virtio_crypto** %2, align 8
  %14 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.virtqueue*, %struct.virtqueue** %19, align 8
  store %struct.virtqueue* %20, %struct.virtqueue** %5, align 8
  br label %21

21:                                               ; preds = %25, %12
  %22 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %23 = call %struct.virtio_crypto_request* @virtqueue_detach_unused_buf(%struct.virtqueue* %22)
  store %struct.virtio_crypto_request* %23, %struct.virtio_crypto_request** %3, align 8
  %24 = icmp ne %struct.virtio_crypto_request* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.virtio_crypto_request*, %struct.virtio_crypto_request** %3, align 8
  %27 = getelementptr inbounds %struct.virtio_crypto_request, %struct.virtio_crypto_request* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  %30 = load %struct.virtio_crypto_request*, %struct.virtio_crypto_request** %3, align 8
  %31 = getelementptr inbounds %struct.virtio_crypto_request, %struct.virtio_crypto_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @kfree(i32 %32)
  br label %21

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %6

38:                                               ; preds = %6
  ret void
}

declare dso_local %struct.virtio_crypto_request* @virtqueue_detach_unused_buf(%struct.virtqueue*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
