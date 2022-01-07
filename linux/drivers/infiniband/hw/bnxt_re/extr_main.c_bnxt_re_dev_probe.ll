; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_en_dev = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.bnxt = type { %struct.bnxt_en_dev* (%struct.net_device*)* }

@EINVAL = common dso_local global i32 0, align 4
@BNXT_EN_FLAG_ROCE_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s: probe error: RoCE is not supported on this device\00", align 1
@ROCE_DRV_MODULE_NAME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bnxt_en_dev* (%struct.net_device*)* @bnxt_re_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bnxt_en_dev* @bnxt_re_dev_probe(%struct.net_device* %0) #0 {
  %2 = alloca %struct.bnxt_en_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_en_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.bnxt* @netdev_priv(%struct.net_device* %7)
  store %struct.bnxt* %8, %struct.bnxt** %4, align 8
  %9 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 0
  %11 = load %struct.bnxt_en_dev* (%struct.net_device*)*, %struct.bnxt_en_dev* (%struct.net_device*)** %10, align 8
  %12 = icmp ne %struct.bnxt_en_dev* (%struct.net_device*)* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.bnxt_en_dev* @ERR_PTR(i32 %15)
  store %struct.bnxt_en_dev* %16, %struct.bnxt_en_dev** %2, align 8
  br label %70

17:                                               ; preds = %1
  %18 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 0
  %20 = load %struct.bnxt_en_dev* (%struct.net_device*)*, %struct.bnxt_en_dev* (%struct.net_device*)** %19, align 8
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call %struct.bnxt_en_dev* %20(%struct.net_device* %21)
  store %struct.bnxt_en_dev* %22, %struct.bnxt_en_dev** %5, align 8
  %23 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %5, align 8
  %24 = call i64 @IS_ERR(%struct.bnxt_en_dev* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %5, align 8
  store %struct.bnxt_en_dev* %27, %struct.bnxt_en_dev** %2, align 8
  br label %70

28:                                               ; preds = %17
  %29 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %5, align 8
  %30 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %29, i32 0, i32 1
  %31 = load %struct.pci_dev*, %struct.pci_dev** %30, align 8
  store %struct.pci_dev* %31, %struct.pci_dev** %6, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %33 = icmp ne %struct.pci_dev* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.bnxt_en_dev* @ERR_PTR(i32 %36)
  store %struct.bnxt_en_dev* %37, %struct.bnxt_en_dev** %2, align 8
  br label %70

38:                                               ; preds = %28
  %39 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %5, align 8
  %40 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BNXT_EN_FLAG_ROCE_CAP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %38
  %46 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = load i32, i32* @ROCE_DRV_MODULE_NAME, align 4
  %49 = call i32 @dev_info(i32* %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.bnxt_en_dev* @ERR_PTR(i32 %51)
  store %struct.bnxt_en_dev* %52, %struct.bnxt_en_dev** %2, align 8
  br label %70

53:                                               ; preds = %38
  %54 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @try_module_get(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.bnxt_en_dev* @ERR_PTR(i32 %64)
  store %struct.bnxt_en_dev* %65, %struct.bnxt_en_dev** %2, align 8
  br label %70

66:                                               ; preds = %53
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = call i32 @dev_hold(%struct.net_device* %67)
  %69 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %5, align 8
  store %struct.bnxt_en_dev* %69, %struct.bnxt_en_dev** %2, align 8
  br label %70

70:                                               ; preds = %66, %62, %45, %34, %26, %13
  %71 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %2, align 8
  ret %struct.bnxt_en_dev* %71
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.bnxt_en_dev* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.bnxt_en_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
