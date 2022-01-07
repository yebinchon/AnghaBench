; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_disable_inject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_disable_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i7core_pvt* }
%struct.i7core_pvt = type { %struct.TYPE_2__, i32** }
%struct.TYPE_2__ = type { i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@MC_CHANNEL_ERROR_INJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @disable_inject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disable_inject(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i7core_pvt*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  %5 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %6 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %5, i32 0, i32 0
  %7 = load %struct.i7core_pvt*, %struct.i7core_pvt** %6, align 8
  store %struct.i7core_pvt* %7, %struct.i7core_pvt** %4, align 8
  %8 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %9 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %12 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %11, i32 0, i32 1
  %13 = load i32**, i32*** %12, align 8
  %14 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %15 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32*, i32** %13, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %40

26:                                               ; preds = %1
  %27 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %28 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %31 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32*, i32** %29, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MC_CHANNEL_ERROR_INJECT, align 4
  %39 = call i32 @pci_write_config_dword(i32 %37, i32 %38, i32 0)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %26, %23
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
