; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_aead_edesc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_aead_edesc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.talitos_edesc = type { i32 }
%struct.aead_request = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.talitos_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.talitos_edesc* (%struct.aead_request*, i32*, i32, i32)* @aead_edesc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.talitos_edesc* @aead_edesc_alloc(%struct.aead_request* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.talitos_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %15 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %14)
  store %struct.crypto_aead* %15, %struct.crypto_aead** %9, align 8
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %17 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %19 = call %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead* %18)
  store %struct.talitos_ctx* %19, %struct.talitos_ctx** %11, align 8
  %20 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %21 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %23 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32 [ 0, %27 ], [ %29, %28 ]
  %32 = sub i32 %24, %31
  store i32 %32, i32* %13, align 4
  %33 = load %struct.talitos_ctx*, %struct.talitos_ctx** %11, align 8
  %34 = getelementptr inbounds %struct.talitos_ctx, %struct.talitos_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %37 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %40 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %44 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %51 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call %struct.talitos_edesc* @talitos_edesc_alloc(i32 %35, i32 %38, i32 %41, i32* %42, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %53, i32 %54)
  ret %struct.talitos_edesc* %55
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local %struct.talitos_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local %struct.talitos_edesc* @talitos_edesc_alloc(i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
