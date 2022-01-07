; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-pci.c_sp_get_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-pci.c_sp_get_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_device = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"could not enable MSI-X (%d), trying MSI\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"could not enable MSI (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sp_device*)* @sp_get_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_get_irqs(%struct.sp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sp_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.sp_device* %0, %struct.sp_device** %3, align 8
  %6 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %7 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %6, i32 0, i32 0
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %10 = call i32 @sp_get_msix_irqs(%struct.sp_device* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_notice(%struct.device* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %19 = call i32 @sp_get_msi_irq(%struct.sp_device* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %28

23:                                               ; preds = %14
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @dev_notice(%struct.device* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %22, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @sp_get_msix_irqs(%struct.sp_device*) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*, i32) #1

declare dso_local i32 @sp_get_msi_irq(%struct.sp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
