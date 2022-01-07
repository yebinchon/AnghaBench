; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_geode-aes.c_geode_aes_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_geode-aes.c_geode_aes_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"geode-aes\00", align 1
@_iobase = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@AES_INTR_PENDING = common dso_local global i32 0, align 4
@AES_INTR_MASK = common dso_local global i32 0, align 4
@AES_INTR_REG = common dso_local global i32 0, align 4
@geode_alg = common dso_local global i32 0, align 4
@geode_ecb_alg = common dso_local global i32 0, align 4
@geode_cbc_alg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"GEODE AES engine enabled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"GEODE AES initialization failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @geode_aes_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geode_aes_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call i32 @pci_enable_device(%struct.pci_dev* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %73

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @pci_request_regions(%struct.pci_dev* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %66

19:                                               ; preds = %13
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32* @pci_iomap(%struct.pci_dev* %20, i32 0, i32 0)
  store i32* %21, i32** @_iobase, align 8
  %22 = load i32*, i32** @_iobase, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %63

27:                                               ; preds = %19
  %28 = call i32 @spin_lock_init(i32* @lock)
  %29 = load i32, i32* @AES_INTR_PENDING, align 4
  %30 = load i32, i32* @AES_INTR_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32*, i32** @_iobase, align 8
  %33 = load i32, i32* @AES_INTR_REG, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @iowrite32(i32 %31, i32* %35)
  %37 = call i32 @crypto_register_alg(i32* @geode_alg)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %59

41:                                               ; preds = %27
  %42 = call i32 @crypto_register_alg(i32* @geode_ecb_alg)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %57

46:                                               ; preds = %41
  %47 = call i32 @crypto_register_alg(i32* @geode_cbc_alg)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %55

51:                                               ; preds = %46
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = call i32 @dev_notice(i32* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %73

55:                                               ; preds = %50
  %56 = call i32 @crypto_unregister_alg(i32* @geode_ecb_alg)
  br label %57

57:                                               ; preds = %55, %45
  %58 = call i32 @crypto_unregister_alg(i32* @geode_alg)
  br label %59

59:                                               ; preds = %57, %40
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = load i32*, i32** @_iobase, align 8
  %62 = call i32 @pci_iounmap(%struct.pci_dev* %60, i32* %61)
  br label %63

63:                                               ; preds = %59, %24
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = call i32 @pci_release_regions(%struct.pci_dev* %64)
  br label %66

66:                                               ; preds = %63, %18
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = call i32 @pci_disable_device(%struct.pci_dev* %67)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %66, %51, %11
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32* @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @crypto_register_alg(i32*) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

declare dso_local i32 @crypto_unregister_alg(i32*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
