; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_stop_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_stop_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_core_device = type { %struct.crypto4xx_core_device*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto4xx_core_device*)* @crypto4xx_stop_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto4xx_stop_all(%struct.crypto4xx_core_device* %0) #0 {
  %2 = alloca %struct.crypto4xx_core_device*, align 8
  store %struct.crypto4xx_core_device* %0, %struct.crypto4xx_core_device** %2, align 8
  %3 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %2, align 8
  %4 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %3, i32 0, i32 0
  %5 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %4, align 8
  %6 = call i32 @crypto4xx_destroy_pdr(%struct.crypto4xx_core_device* %5)
  %7 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %2, align 8
  %8 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %7, i32 0, i32 0
  %9 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %8, align 8
  %10 = call i32 @crypto4xx_destroy_gdr(%struct.crypto4xx_core_device* %9)
  %11 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %2, align 8
  %12 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %11, i32 0, i32 0
  %13 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %12, align 8
  %14 = call i32 @crypto4xx_destroy_sdr(%struct.crypto4xx_core_device* %13)
  %15 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %2, align 8
  %16 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %15, i32 0, i32 0
  %17 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %16, align 8
  %18 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @iounmap(i32 %19)
  %21 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %2, align 8
  %22 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %21, i32 0, i32 0
  %23 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %22, align 8
  %24 = call i32 @kfree(%struct.crypto4xx_core_device* %23)
  %25 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %2, align 8
  %26 = call i32 @kfree(%struct.crypto4xx_core_device* %25)
  ret void
}

declare dso_local i32 @crypto4xx_destroy_pdr(%struct.crypto4xx_core_device*) #1

declare dso_local i32 @crypto4xx_destroy_gdr(%struct.crypto4xx_core_device*) #1

declare dso_local i32 @crypto4xx_destroy_sdr(%struct.crypto4xx_core_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.crypto4xx_core_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
