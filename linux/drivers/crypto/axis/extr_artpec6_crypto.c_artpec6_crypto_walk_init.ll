; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_walk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_walk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_crypto_walk = type { i64, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.artpec6_crypto_walk*, %struct.scatterlist*)* @artpec6_crypto_walk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artpec6_crypto_walk_init(%struct.artpec6_crypto_walk* %0, %struct.scatterlist* %1) #0 {
  %3 = alloca %struct.artpec6_crypto_walk*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  store %struct.artpec6_crypto_walk* %0, %struct.artpec6_crypto_walk** %3, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %4, align 8
  %5 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %6 = load %struct.artpec6_crypto_walk*, %struct.artpec6_crypto_walk** %3, align 8
  %7 = getelementptr inbounds %struct.artpec6_crypto_walk, %struct.artpec6_crypto_walk* %6, i32 0, i32 1
  store %struct.scatterlist* %5, %struct.scatterlist** %7, align 8
  %8 = load %struct.artpec6_crypto_walk*, %struct.artpec6_crypto_walk** %3, align 8
  %9 = getelementptr inbounds %struct.artpec6_crypto_walk, %struct.artpec6_crypto_walk* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
