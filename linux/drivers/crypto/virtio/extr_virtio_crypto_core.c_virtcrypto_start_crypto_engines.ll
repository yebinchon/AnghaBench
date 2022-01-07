; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_core.c_virtcrypto_start_crypto_engines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_core.c_virtcrypto_start_crypto_engines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_crypto = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_crypto*)* @virtcrypto_start_crypto_engines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtcrypto_start_crypto_engines(%struct.virtio_crypto* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_crypto*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.virtio_crypto* %0, %struct.virtio_crypto** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %35, %1
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %9 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %6
  %13 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %14 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %12
  %22 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %23 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @crypto_engine_start(i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %39

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %12
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %6

38:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %65

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %62, %39
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %4, align 8
  %43 = icmp uge i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %46 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load %struct.virtio_crypto*, %struct.virtio_crypto** %3, align 8
  %55 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @crypto_engine_exit(i64 %60)
  br label %62

62:                                               ; preds = %53, %44
  br label %40

63:                                               ; preds = %40
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %38
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @crypto_engine_start(i64) #1

declare dso_local i32 @crypto_engine_exit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
