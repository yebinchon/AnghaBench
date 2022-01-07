; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_i7core_inject_section_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_i7core_inject_section_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mem_ctl_info = type { %struct.i7core_pvt* }
%struct.i7core_pvt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @i7core_inject_section_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i7core_inject_section_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mem_ctl_info*, align 8
  %11 = alloca %struct.i7core_pvt*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.mem_ctl_info* @to_mci(%struct.device* %14)
  store %struct.mem_ctl_info* %15, %struct.mem_ctl_info** %10, align 8
  %16 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %17 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %16, i32 0, i32 0
  %18 = load %struct.i7core_pvt*, %struct.i7core_pvt** %17, align 8
  store %struct.i7core_pvt* %18, %struct.i7core_pvt** %11, align 8
  %19 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %20 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %26 = call i32 @disable_inject(%struct.mem_ctl_info* %25)
  br label %27

27:                                               ; preds = %24, %4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @kstrtoul(i8* %28, i32 10, i64* %12)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %12, align 8
  %34 = icmp ugt i64 %33, 3
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %27
  %36 = load i64, i64* @EIO, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %44

38:                                               ; preds = %32
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  %41 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local %struct.mem_ctl_info* @to_mci(%struct.device*) #1

declare dso_local i32 @disable_inject(%struct.mem_ctl_info*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
