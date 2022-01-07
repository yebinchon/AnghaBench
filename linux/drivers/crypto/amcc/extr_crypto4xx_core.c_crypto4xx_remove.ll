; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.crypto4xx_core_device = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @crypto4xx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.crypto4xx_core_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.crypto4xx_core_device* @dev_get_drvdata(%struct.device* %7)
  store %struct.crypto4xx_core_device* %8, %struct.crypto4xx_core_device** %4, align 8
  %9 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %10 = call i32 @ppc4xx_trng_remove(%struct.crypto4xx_core_device* %9)
  %11 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %12 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.device* %14)
  %16 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %17 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @irq_dispose_mapping(i32 %18)
  %20 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %21 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %20, i32 0, i32 2
  %22 = call i32 @tasklet_kill(i32* %21)
  %23 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %24 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @crypto4xx_unregister_alg(i32 %25)
  %27 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %28 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %27, i32 0, i32 0
  %29 = call i32 @mutex_destroy(i32* %28)
  %30 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %31 = call i32 @crypto4xx_stop_all(%struct.crypto4xx_core_device* %30)
  ret i32 0
}

declare dso_local %struct.crypto4xx_core_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ppc4xx_trng_remove(%struct.crypto4xx_core_device*) #1

declare dso_local i32 @free_irq(i32, %struct.device*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @crypto4xx_unregister_alg(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @crypto4xx_stop_all(%struct.crypto4xx_core_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
