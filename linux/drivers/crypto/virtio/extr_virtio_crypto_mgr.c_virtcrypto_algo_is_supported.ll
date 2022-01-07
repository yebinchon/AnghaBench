; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_mgr.c_virtcrypto_algo_is_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_mgr.c_virtcrypto_algo_is_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_crypto = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtcrypto_algo_is_supported(%struct.virtio_crypto* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtio_crypto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.virtio_crypto* %0, %struct.virtio_crypto** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = shl i32 1, %11
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ugt i32 %13, 31
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = sub i32 %16, 32
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.virtio_crypto*, %struct.virtio_crypto** %5, align 8
  %20 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %68

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %60 [
    i32 130, label %28
    i32 129, label %40
    i32 128, label %44
    i32 131, label %56
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.virtio_crypto*, %struct.virtio_crypto** %5, align 8
  %33 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  br label %39

35:                                               ; preds = %28
  %36 = load %struct.virtio_crypto*, %struct.virtio_crypto** %5, align 8
  %37 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %35, %31
  br label %60

40:                                               ; preds = %26
  %41 = load %struct.virtio_crypto*, %struct.virtio_crypto** %5, align 8
  %42 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  br label %60

44:                                               ; preds = %26
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.virtio_crypto*, %struct.virtio_crypto** %5, align 8
  %49 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  br label %55

51:                                               ; preds = %44
  %52 = load %struct.virtio_crypto*, %struct.virtio_crypto** %5, align 8
  %53 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %47
  br label %60

56:                                               ; preds = %26
  %57 = load %struct.virtio_crypto*, %struct.virtio_crypto** %5, align 8
  %58 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %26, %56, %55, %40, %39
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = shl i32 1, %62
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %68

67:                                               ; preds = %60
  store i32 1, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %66, %25
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
