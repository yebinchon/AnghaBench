; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_geode-aes.c_geode_aes_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_geode-aes.c_geode_aes_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@geode_alg = common dso_local global i32 0, align 4
@geode_ecb_alg = common dso_local global i32 0, align 4
@geode_cbc_alg = common dso_local global i32 0, align 4
@_iobase = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @geode_aes_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geode_aes_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = call i32 @crypto_unregister_alg(i32* @geode_alg)
  %4 = call i32 @crypto_unregister_alg(i32* @geode_ecb_alg)
  %5 = call i32 @crypto_unregister_alg(i32* @geode_cbc_alg)
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = load i32*, i32** @_iobase, align 8
  %8 = call i32 @pci_iounmap(%struct.pci_dev* %6, i32* %7)
  store i32* null, i32** @_iobase, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call i32 @pci_release_regions(%struct.pci_dev* %9)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = call i32 @pci_disable_device(%struct.pci_dev* %11)
  ret void
}

declare dso_local i32 @crypto_unregister_alg(i32*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
