; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_i7core_inject_enable_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_i7core_inject_enable_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mem_ctl_info = type { %struct.i7core_pvt* }
%struct.i7core_pvt = type { %struct.TYPE_2__, i32** }
%struct.TYPE_2__ = type { i64, i32 }

@MC_CHANNEL_ERROR_INJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Inject error read: 0x%018x\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @i7core_inject_enable_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i7core_inject_enable_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mem_ctl_info*, align 8
  %9 = alloca %struct.i7core_pvt*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.mem_ctl_info* @to_mci(%struct.device* %11)
  store %struct.mem_ctl_info* %12, %struct.mem_ctl_info** %8, align 8
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %8, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 0
  %15 = load %struct.i7core_pvt*, %struct.i7core_pvt** %14, align 8
  store %struct.i7core_pvt* %15, %struct.i7core_pvt** %9, align 8
  %16 = load %struct.i7core_pvt*, %struct.i7core_pvt** %9, align 8
  %17 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %16, i32 0, i32 1
  %18 = load i32**, i32*** %17, align 8
  %19 = load %struct.i7core_pvt*, %struct.i7core_pvt** %9, align 8
  %20 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32*, i32** %18, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

29:                                               ; preds = %3
  %30 = load %struct.i7core_pvt*, %struct.i7core_pvt** %9, align 8
  %31 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  %33 = load %struct.i7core_pvt*, %struct.i7core_pvt** %9, align 8
  %34 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32*, i32** %32, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MC_CHANNEL_ERROR_INJECT, align 4
  %42 = call i32 @pci_read_config_dword(i32 %40, i32 %41, i32* %10)
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 12
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %29
  %49 = load %struct.i7core_pvt*, %struct.i7core_pvt** %9, align 8
  %50 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %29
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.i7core_pvt*, %struct.i7core_pvt** %9, align 8
  %55 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %52, %28
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.mem_ctl_info* @to_mci(%struct.device*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
