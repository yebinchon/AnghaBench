; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_alloc_bounce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_alloc_bounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_crypto_bounce_buffer = type { i32 }

@ARTPEC_CACHE_LINE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.artpec6_crypto_bounce_buffer* (i32)* @artpec6_crypto_alloc_bounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.artpec6_crypto_bounce_buffer* @artpec6_crypto_alloc_bounce(i32 %0) #0 {
  %2 = alloca %struct.artpec6_crypto_bounce_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.artpec6_crypto_bounce_buffer*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @ARTPEC_CACHE_LINE_MAX, align 4
  %8 = mul nsw i32 2, %7
  %9 = sext i32 %8 to i64
  %10 = add i64 4, %9
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.artpec6_crypto_bounce_buffer* @kzalloc(i64 %11, i32 %12)
  store %struct.artpec6_crypto_bounce_buffer* %13, %struct.artpec6_crypto_bounce_buffer** %6, align 8
  %14 = load %struct.artpec6_crypto_bounce_buffer*, %struct.artpec6_crypto_bounce_buffer** %6, align 8
  %15 = icmp ne %struct.artpec6_crypto_bounce_buffer* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.artpec6_crypto_bounce_buffer* null, %struct.artpec6_crypto_bounce_buffer** %2, align 8
  br label %27

17:                                               ; preds = %1
  %18 = load %struct.artpec6_crypto_bounce_buffer*, %struct.artpec6_crypto_bounce_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.artpec6_crypto_bounce_buffer, %struct.artpec6_crypto_bounce_buffer* %18, i64 1
  %20 = bitcast %struct.artpec6_crypto_bounce_buffer* %19 to i8*
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @ARTPEC_CACHE_LINE_MAX, align 4
  %23 = call i32 @PTR_ALIGN(i8* %21, i32 %22)
  %24 = load %struct.artpec6_crypto_bounce_buffer*, %struct.artpec6_crypto_bounce_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.artpec6_crypto_bounce_buffer, %struct.artpec6_crypto_bounce_buffer* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.artpec6_crypto_bounce_buffer*, %struct.artpec6_crypto_bounce_buffer** %6, align 8
  store %struct.artpec6_crypto_bounce_buffer* %26, %struct.artpec6_crypto_bounce_buffer** %2, align 8
  br label %27

27:                                               ; preds = %17, %16
  %28 = load %struct.artpec6_crypto_bounce_buffer*, %struct.artpec6_crypto_bounce_buffer** %2, align 8
  ret %struct.artpec6_crypto_bounce_buffer* %28
}

declare dso_local %struct.artpec6_crypto_bounce_buffer* @kzalloc(i64, i32) #1

declare dso_local i32 @PTR_ALIGN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
