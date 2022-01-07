; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.artpec6_crypto = type { i32, i32, i32 }

@hash_algos = common dso_local global i32 0, align 4
@crypto_algos = common dso_local global i32 0, align 4
@aead_algos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @artpec6_crypto_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.artpec6_crypto*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.artpec6_crypto* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.artpec6_crypto* %6, %struct.artpec6_crypto** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call i32 @platform_get_irq(%struct.platform_device* %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @hash_algos, align 4
  %10 = load i32, i32* @hash_algos, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = call i32 @crypto_unregister_ahashes(i32 %9, i32 %11)
  %13 = load i32, i32* @crypto_algos, align 4
  %14 = load i32, i32* @crypto_algos, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @crypto_unregister_skciphers(i32 %13, i32 %15)
  %17 = load i32, i32* @aead_algos, align 4
  %18 = load i32, i32* @aead_algos, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i32 @crypto_unregister_aeads(i32 %17, i32 %19)
  %21 = load %struct.artpec6_crypto*, %struct.artpec6_crypto** %3, align 8
  %22 = getelementptr inbounds %struct.artpec6_crypto, %struct.artpec6_crypto* %21, i32 0, i32 2
  %23 = call i32 @tasklet_disable(i32* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.artpec6_crypto*, %struct.artpec6_crypto** %3, align 8
  %28 = call i32 @devm_free_irq(i32* %25, i32 %26, %struct.artpec6_crypto* %27)
  %29 = load %struct.artpec6_crypto*, %struct.artpec6_crypto** %3, align 8
  %30 = getelementptr inbounds %struct.artpec6_crypto, %struct.artpec6_crypto* %29, i32 0, i32 2
  %31 = call i32 @tasklet_kill(i32* %30)
  %32 = load %struct.artpec6_crypto*, %struct.artpec6_crypto** %3, align 8
  %33 = getelementptr inbounds %struct.artpec6_crypto, %struct.artpec6_crypto* %32, i32 0, i32 1
  %34 = call i32 @del_timer_sync(i32* %33)
  %35 = load %struct.artpec6_crypto*, %struct.artpec6_crypto** %3, align 8
  %36 = call i32 @artpec6_crypto_disable_hw(%struct.artpec6_crypto* %35)
  %37 = load %struct.artpec6_crypto*, %struct.artpec6_crypto** %3, align 8
  %38 = getelementptr inbounds %struct.artpec6_crypto, %struct.artpec6_crypto* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kmem_cache_destroy(i32 %39)
  ret i32 0
}

declare dso_local %struct.artpec6_crypto* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @crypto_unregister_ahashes(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @crypto_unregister_skciphers(i32, i32) #1

declare dso_local i32 @crypto_unregister_aeads(i32, i32) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @devm_free_irq(i32*, i32, %struct.artpec6_crypto*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @artpec6_crypto_disable_hw(%struct.artpec6_crypto*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
