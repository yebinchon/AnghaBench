; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_dev_rr_to_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_dev_rr_to_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_i3c_master = type { i64 }
%struct.i3c_device_info = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_i3c_master*, i32, %struct.i3c_device_info*)* @cdns_i3c_master_dev_rr_to_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_i3c_master_dev_rr_to_info(%struct.cdns_i3c_master* %0, i32 %1, %struct.i3c_device_info* %2) #0 {
  %4 = alloca %struct.cdns_i3c_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i3c_device_info*, align 8
  %7 = alloca i32, align 4
  store %struct.cdns_i3c_master* %0, %struct.cdns_i3c_master** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.i3c_device_info* %2, %struct.i3c_device_info** %6, align 8
  %8 = load %struct.i3c_device_info*, %struct.i3c_device_info** %6, align 8
  %9 = call i32 @memset(%struct.i3c_device_info* %8, i32 0, i32 16)
  %10 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %11 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @DEV_ID_RR0(i32 %13)
  %15 = add nsw i64 %12, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @DEV_ID_RR0_GET_DEV_ADDR(i32 %17)
  %19 = load %struct.i3c_device_info*, %struct.i3c_device_info** %6, align 8
  %20 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %22 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @DEV_ID_RR2(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.i3c_device_info*, %struct.i3c_device_info** %6, align 8
  %30 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 8
  %33 = load %struct.i3c_device_info*, %struct.i3c_device_info** %6, align 8
  %34 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 16
  %37 = load %struct.i3c_device_info*, %struct.i3c_device_info** %6, align 8
  %38 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %40 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @DEV_ID_RR1(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = call i32 @readl(i64 %44)
  %46 = shl i32 %45, 16
  %47 = load %struct.i3c_device_info*, %struct.i3c_device_info** %6, align 8
  %48 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  ret void
}

declare dso_local i32 @memset(%struct.i3c_device_info*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @DEV_ID_RR0(i32) #1

declare dso_local i32 @DEV_ID_RR0_GET_DEV_ADDR(i32) #1

declare dso_local i64 @DEV_ID_RR2(i32) #1

declare dso_local i64 @DEV_ID_RR1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
