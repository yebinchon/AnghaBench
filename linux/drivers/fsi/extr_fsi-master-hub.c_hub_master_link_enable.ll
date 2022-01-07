; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-hub.c_hub_master_link_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-hub.c_hub_master_link_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master = type { i32 }
%struct.fsi_master_hub = type { i32 }

@FSI_MSENP0 = common dso_local global i64 0, align 8
@FSI_LINK_ENABLE_SETUP_TIME = common dso_local global i32 0, align 4
@FSI_MENP0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master*, i32)* @hub_master_link_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_master_link_enable(%struct.fsi_master* %0, i32 %1) #0 {
  %3 = alloca %struct.fsi_master*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsi_master_hub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fsi_master* %0, %struct.fsi_master** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.fsi_master*, %struct.fsi_master** %3, align 8
  %11 = call %struct.fsi_master_hub* @to_fsi_master_hub(%struct.fsi_master* %10)
  store %struct.fsi_master_hub* %11, %struct.fsi_master_hub** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sdiv i32 %12, 32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = srem i32 %14, 32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = lshr i32 -2147483648, %16
  %18 = call i32 @cpu_to_be32(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %20 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* @FSI_MSENP0, align 8
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 4, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call i32 @fsi_device_write(i32 %21, i64 %26, i32* %8, i32 4)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @FSI_LINK_ENABLE_SETUP_TIME, align 4
  %29 = call i32 @mdelay(i32 %28)
  %30 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %31 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* @FSI_MENP0, align 8
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 4, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = call i32 @fsi_device_read(i32 %32, i64 %37, i32* %8, i32 4)
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local %struct.fsi_master_hub* @to_fsi_master_hub(%struct.fsi_master*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @fsi_device_write(i32, i64, i32*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @fsi_device_read(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
