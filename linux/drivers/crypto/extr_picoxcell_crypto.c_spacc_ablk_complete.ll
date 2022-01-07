; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_ablk_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_ablk_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spacc_req = type { i32, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32)* }
%struct.ablkcipher_request = type { i64, i64, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spacc_req*)* @spacc_ablk_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spacc_ablk_complete(%struct.spacc_req* %0) #0 {
  %2 = alloca %struct.spacc_req*, align 8
  %3 = alloca %struct.ablkcipher_request*, align 8
  store %struct.spacc_req* %0, %struct.spacc_req** %2, align 8
  %4 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %5 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = call %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.TYPE_3__* %6)
  store %struct.ablkcipher_request* %7, %struct.ablkcipher_request** %3, align 8
  %8 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %9 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %12 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %1
  %16 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %17 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %18 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %21 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %24 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %27 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @spacc_free_ddt(%struct.spacc_req* %16, i32 %19, i32 %22, i64 %25, i32 %28, i32 %29)
  %31 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %32 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %33 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %36 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %39 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %42 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %45 = call i32 @spacc_free_ddt(%struct.spacc_req* %31, i32 %34, i32 %37, i64 %40, i32 %43, i32 %44)
  br label %62

46:                                               ; preds = %1
  %47 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %48 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %49 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %52 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %55 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %58 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %61 = call i32 @spacc_free_ddt(%struct.spacc_req* %47, i32 %50, i32 %53, i64 %56, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %46, %15
  %63 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %64 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %66, align 8
  %68 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %69 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load %struct.spacc_req*, %struct.spacc_req** %2, align 8
  %72 = getelementptr inbounds %struct.spacc_req, %struct.spacc_req* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %67(%struct.TYPE_3__* %70, i32 %73)
  ret void
}

declare dso_local %struct.ablkcipher_request* @ablkcipher_request_cast(%struct.TYPE_3__*) #1

declare dso_local i32 @spacc_free_ddt(%struct.spacc_req*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
