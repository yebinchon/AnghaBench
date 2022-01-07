; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_mgmt_sys.c_create_sysfs_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_mgmt_sys.c_create_sysfs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_mgmt_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.device_attribute = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@show_values = common dso_local global i32 0, align 4
@set_values = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidma_mgmt_dev*, i8*, i32)* @create_sysfs_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_sysfs_entry(%struct.hidma_mgmt_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hidma_mgmt_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_attribute*, align 8
  %9 = alloca i8*, align 8
  store %struct.hidma_mgmt_dev* %0, %struct.hidma_mgmt_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %5, align 8
  %11 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.device_attribute* @devm_kmalloc(i32* %13, i32 24, i32 %14)
  store %struct.device_attribute* %15, %struct.device_attribute** %8, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %17 = icmp ne %struct.device_attribute* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %58

21:                                               ; preds = %3
  %22 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %5, align 8
  %23 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @devm_kstrdup(i32* %25, i8* %26, i32 %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %58

34:                                               ; preds = %21
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %37 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %41 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @show_values, align 4
  %44 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %45 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @set_values, align 4
  %47 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %48 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %50 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %49, i32 0, i32 0
  %51 = call i32 @sysfs_attr_init(%struct.TYPE_4__* %50)
  %52 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %5, align 8
  %53 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %57 = call i32 @device_create_file(i32* %55, %struct.device_attribute* %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %34, %31, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.device_attribute* @devm_kmalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_kstrdup(i32*, i8*, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_4__*) #1

declare dso_local i32 @device_create_file(i32*, %struct.device_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
