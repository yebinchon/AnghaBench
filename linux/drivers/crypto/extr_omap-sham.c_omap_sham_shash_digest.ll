; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_shash_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_shash_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@shash = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32, i32*, i32, i32*)* @omap_sham_shash_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_shash_digest(%struct.crypto_shash* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.crypto_shash*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.crypto_shash* %0, %struct.crypto_shash** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shash, align 8
  %12 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %13 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_4__* %11, %struct.crypto_shash* %12)
  %14 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shash, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.crypto_shash* %14, %struct.crypto_shash** %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shash, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @crypto_shash_digest(%struct.TYPE_4__* %17, i32* %18, i32 %19, i32* %20)
  ret i32 %21
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_4__*, %struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_4__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
