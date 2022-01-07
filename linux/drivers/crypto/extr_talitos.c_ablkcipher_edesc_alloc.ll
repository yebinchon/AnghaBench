; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ablkcipher_edesc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_ablkcipher_edesc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_edesc = type { i32 }
%struct.ablkcipher_request = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.talitos_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.talitos_edesc* (%struct.ablkcipher_request*, i32)* @ablkcipher_edesc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.talitos_edesc* @ablkcipher_edesc_alloc(%struct.ablkcipher_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ablkcipher_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca %struct.talitos_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %9 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %8)
  store %struct.crypto_ablkcipher* %9, %struct.crypto_ablkcipher** %5, align 8
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %11 = call %struct.talitos_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %10)
  store %struct.talitos_ctx* %11, %struct.talitos_ctx** %6, align 8
  %12 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %13 = call i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.talitos_ctx*, %struct.talitos_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %18 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %21 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %24 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %27 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %3, align 8
  %31 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call %struct.talitos_edesc* @talitos_edesc_alloc(i32 %16, i32 %19, i32 %22, i32 %25, i32 0, i32 %28, i32 0, i32 %29, i32 0, i32 %33, i32 %34)
  ret %struct.talitos_edesc* %35
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.talitos_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @crypto_ablkcipher_ivsize(%struct.crypto_ablkcipher*) #1

declare dso_local %struct.talitos_edesc* @talitos_edesc_alloc(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
