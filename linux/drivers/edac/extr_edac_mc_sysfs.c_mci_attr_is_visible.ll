; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc_sysfs.c_mci_attr_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc_sysfs.c_mci_attr_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.mem_ctl_info = type { i64, i64 }

@dev_attr_sdram_scrub_rate = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i32)* @mci_attr_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mci_attr_is_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.mem_ctl_info*, align 8
  %10 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.kobject*, %struct.kobject** %5, align 8
  %12 = call %struct.device* @kobj_to_dev(%struct.kobject* %11)
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.device*, %struct.device** %8, align 8
  %14 = call %struct.mem_ctl_info* @to_mci(%struct.device* %13)
  store %struct.mem_ctl_info* %14, %struct.mem_ctl_info** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.attribute*, %struct.attribute** %6, align 8
  %16 = icmp ne %struct.attribute* %15, getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev_attr_sdram_scrub_rate, i32 0, i32 0)
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.attribute*, %struct.attribute** %6, align 8
  %19 = getelementptr inbounds %struct.attribute, %struct.attribute* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  br label %41

21:                                               ; preds = %3
  %22 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %23 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @S_IRUGO, align 4
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %9, align 8
  %32 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @S_IWUSR, align 4
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.mem_ctl_info* @to_mci(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
