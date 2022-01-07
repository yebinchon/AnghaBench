; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_common_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_common_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_crypto_req_common = type { i32* }
%struct.artpec6_crypto = type { i32 }

@artpec6_crypto_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.artpec6_crypto_req_common*)* @artpec6_crypto_common_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_common_destroy(%struct.artpec6_crypto_req_common* %0) #0 {
  %2 = alloca %struct.artpec6_crypto_req_common*, align 8
  %3 = alloca %struct.artpec6_crypto*, align 8
  store %struct.artpec6_crypto_req_common* %0, %struct.artpec6_crypto_req_common** %2, align 8
  %4 = load i32, i32* @artpec6_crypto_dev, align 4
  %5 = call %struct.artpec6_crypto* @dev_get_drvdata(i32 %4)
  store %struct.artpec6_crypto* %5, %struct.artpec6_crypto** %3, align 8
  %6 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %2, align 8
  %7 = call i32 @artpec6_crypto_dma_unmap_all(%struct.artpec6_crypto_req_common* %6)
  %8 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %2, align 8
  %9 = getelementptr inbounds %struct.artpec6_crypto_req_common, %struct.artpec6_crypto_req_common* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @artpec6_crypto_bounce_destroy(i32* %10)
  %12 = load %struct.artpec6_crypto*, %struct.artpec6_crypto** %3, align 8
  %13 = getelementptr inbounds %struct.artpec6_crypto, %struct.artpec6_crypto* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %2, align 8
  %16 = getelementptr inbounds %struct.artpec6_crypto_req_common, %struct.artpec6_crypto_req_common* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @kmem_cache_free(i32 %14, i32* %17)
  %19 = load %struct.artpec6_crypto_req_common*, %struct.artpec6_crypto_req_common** %2, align 8
  %20 = getelementptr inbounds %struct.artpec6_crypto_req_common, %struct.artpec6_crypto_req_common* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  ret i32 0
}

declare dso_local %struct.artpec6_crypto* @dev_get_drvdata(i32) #1

declare dso_local i32 @artpec6_crypto_dma_unmap_all(%struct.artpec6_crypto_req_common*) #1

declare dso_local i32 @artpec6_crypto_bounce_destroy(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
