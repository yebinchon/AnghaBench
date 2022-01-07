; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_read_rom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_read_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_device = type { i32, i32, i32 }

@CSR_REGISTER_BASE = common dso_local global i32 0, align 4
@CSR_CONFIG_ROM = common dso_local global i32 0, align 4
@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@RCODE_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_device*, i32, i32, i32*)* @read_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_rom(%struct.fw_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.fw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fw_device* %0, %struct.fw_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @CSR_REGISTER_BASE, align 4
  %13 = load i32, i32* @CSR_CONFIG_ROM, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %15, 4
  %17 = add nsw i32 %14, %16
  store i32 %17, i32* %9, align 4
  %18 = call i32 (...) @smp_rmb()
  store i32 10, i32* %10, align 4
  br label %19

19:                                               ; preds = %44, %4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 100
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load %struct.fw_device*, %struct.fw_device** %5, align 8
  %24 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %27 = load %struct.fw_device*, %struct.fw_device** %5, align 8
  %28 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.fw_device*, %struct.fw_device** %5, align 8
  %32 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @fw_run_transaction(i32 %25, i32 %26, i32 %29, i32 %30, i32 %33, i32 %34, i32* %35, i32 4)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @RCODE_BUSY, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %47

41:                                               ; preds = %22
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @msleep(i32 %42)
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 10
  store i32 %46, i32* %10, align 4
  br label %19

47:                                               ; preds = %40, %19
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @be32_to_cpus(i32* %48)
  %50 = load i32, i32* %11, align 4
  ret i32 %50
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @fw_run_transaction(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @be32_to_cpus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
