; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_core.c_virtcrypto_clear_crypto_engines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_core.c_virtcrypto_clear_crypto_engines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_crypto = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_crypto*)* @virtcrypto_clear_crypto_engines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtcrypto_clear_crypto_engines(%struct.virtio_crypto* %0) #0 {
  %2 = alloca %struct.virtio_crypto*, align 8
  %3 = alloca i64, align 8
  store %struct.virtio_crypto* %0, %struct.virtio_crypto** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %29, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.virtio_crypto*, %struct.virtio_crypto** %2, align 8
  %7 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %4
  %11 = load %struct.virtio_crypto*, %struct.virtio_crypto** %2, align 8
  %12 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = load %struct.virtio_crypto*, %struct.virtio_crypto** %2, align 8
  %21 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @crypto_engine_exit(i64 %26)
  br label %28

28:                                               ; preds = %19, %10
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %4

32:                                               ; preds = %4
  ret void
}

declare dso_local i32 @crypto_engine_exit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
