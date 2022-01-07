; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_algs.c_virtio_crypto_algs_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/virtio/extr_virtio_crypto_algs.c_virtio_crypto_algs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.virtio_crypto = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@algs_lock = common dso_local global i32 0, align 4
@virtio_crypto_algs = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Registered algo %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtio_crypto_algs_register(%struct.virtio_crypto* %0) #0 {
  %2 = alloca %struct.virtio_crypto*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.virtio_crypto* %0, %struct.virtio_crypto** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = call i32 @mutex_lock(i32* @algs_lock)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %71, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @virtio_crypto_algs, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %74

13:                                               ; preds = %8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @virtio_crypto_algs, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @virtio_crypto_algs, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.virtio_crypto*, %struct.virtio_crypto** %2, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @virtcrypto_algo_is_supported(%struct.virtio_crypto* %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %13
  br label %71

32:                                               ; preds = %13
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @virtio_crypto_algs, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @virtio_crypto_algs, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = call i32 @crypto_register_alg(%struct.TYPE_7__* %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %75

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %32
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @virtio_crypto_algs, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load %struct.virtio_crypto*, %struct.virtio_crypto** %2, align 8
  %60 = getelementptr inbounds %struct.virtio_crypto, %struct.virtio_crypto* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @virtio_crypto_algs, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_info(i32* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %51, %31
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %8

74:                                               ; preds = %8
  br label %75

75:                                               ; preds = %74, %49
  %76 = call i32 @mutex_unlock(i32* @algs_lock)
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @virtcrypto_algo_is_supported(%struct.virtio_crypto*, i32, i32) #1

declare dso_local i32 @crypto_register_alg(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
