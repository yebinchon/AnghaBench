; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_algs.c_cvm_crypto_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_algs.c_cvm_crypto_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.cpt_vf** }
%struct.cpt_vf = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@dev_handle = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [40 x i8] c"Error in registering crypto algorithms\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_crypto_init(%struct.cpt_vf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpt_vf*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.cpt_vf* %0, %struct.cpt_vf** %3, align 8
  %6 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %7 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev_handle, i32 0, i32 0), align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %11 = load %struct.cpt_vf**, %struct.cpt_vf*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev_handle, i32 0, i32 1), align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.cpt_vf*, %struct.cpt_vf** %11, i64 %12
  store %struct.cpt_vf* %10, %struct.cpt_vf** %13, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev_handle, i32 0, i32 0), align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev_handle, i32 0, i32 0), align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = call i64 (...) @cav_register_algs()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @cav_register_algs(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
