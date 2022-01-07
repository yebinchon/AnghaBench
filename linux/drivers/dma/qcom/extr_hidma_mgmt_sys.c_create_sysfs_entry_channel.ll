; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_mgmt_sys.c_create_sysfs_entry_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_mgmt_sys.c_create_sysfs_entry_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_mgmt_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.kobject = type { i32 }
%struct.hidma_chan_attr = type { i32, %struct.TYPE_6__, %struct.hidma_mgmt_dev* }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@show_values_channel = common dso_local global i32 0, align 4
@set_values_channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidma_mgmt_dev*, i8*, i32, i32, %struct.kobject*)* @create_sysfs_entry_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_sysfs_entry_channel(%struct.hidma_mgmt_dev* %0, i8* %1, i32 %2, i32 %3, %struct.kobject* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hidma_mgmt_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kobject*, align 8
  %12 = alloca %struct.hidma_chan_attr*, align 8
  %13 = alloca i8*, align 8
  store %struct.hidma_mgmt_dev* %0, %struct.hidma_mgmt_dev** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.kobject* %4, %struct.kobject** %11, align 8
  %14 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %7, align 8
  %15 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.hidma_chan_attr* @devm_kmalloc(i32* %17, i32 40, i32 %18)
  store %struct.hidma_chan_attr* %19, %struct.hidma_chan_attr** %12, align 8
  %20 = load %struct.hidma_chan_attr*, %struct.hidma_chan_attr** %12, align 8
  %21 = icmp ne %struct.hidma_chan_attr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %72

25:                                               ; preds = %5
  %26 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %7, align 8
  %27 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @devm_kstrdup(i32* %29, i8* %30, i32 %31)
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %72

38:                                               ; preds = %25
  %39 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %7, align 8
  %40 = load %struct.hidma_chan_attr*, %struct.hidma_chan_attr** %12, align 8
  %41 = getelementptr inbounds %struct.hidma_chan_attr, %struct.hidma_chan_attr* %40, i32 0, i32 2
  store %struct.hidma_mgmt_dev* %39, %struct.hidma_mgmt_dev** %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.hidma_chan_attr*, %struct.hidma_chan_attr** %12, align 8
  %44 = getelementptr inbounds %struct.hidma_chan_attr, %struct.hidma_chan_attr* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load %struct.hidma_chan_attr*, %struct.hidma_chan_attr** %12, align 8
  %47 = getelementptr inbounds %struct.hidma_chan_attr, %struct.hidma_chan_attr* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i8* %45, i8** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.hidma_chan_attr*, %struct.hidma_chan_attr** %12, align 8
  %52 = getelementptr inbounds %struct.hidma_chan_attr, %struct.hidma_chan_attr* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 8
  %55 = load i32, i32* @show_values_channel, align 4
  %56 = load %struct.hidma_chan_attr*, %struct.hidma_chan_attr** %12, align 8
  %57 = getelementptr inbounds %struct.hidma_chan_attr, %struct.hidma_chan_attr* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @set_values_channel, align 4
  %60 = load %struct.hidma_chan_attr*, %struct.hidma_chan_attr** %12, align 8
  %61 = getelementptr inbounds %struct.hidma_chan_attr, %struct.hidma_chan_attr* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = load %struct.hidma_chan_attr*, %struct.hidma_chan_attr** %12, align 8
  %64 = getelementptr inbounds %struct.hidma_chan_attr, %struct.hidma_chan_attr* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = call i32 @sysfs_attr_init(%struct.TYPE_7__* %65)
  %67 = load %struct.kobject*, %struct.kobject** %11, align 8
  %68 = load %struct.hidma_chan_attr*, %struct.hidma_chan_attr** %12, align 8
  %69 = getelementptr inbounds %struct.hidma_chan_attr, %struct.hidma_chan_attr* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = call i32 @sysfs_create_file(%struct.kobject* %67, %struct.TYPE_7__* %70)
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %38, %35, %22
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.hidma_chan_attr* @devm_kmalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_kstrdup(i32*, i8*, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_7__*) #1

declare dso_local i32 @sysfs_create_file(%struct.kobject*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
