; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-main.c_fme_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-fme-main.c_fme_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@fme_feature_drvs = common dso_local global i32 0, align 4
@fme_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fme_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fme_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call i32 @fme_dev_init(%struct.platform_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = load i32, i32* @fme_feature_drvs, align 4
  %13 = call i32 @dfl_fpga_dev_feature_init(%struct.platform_device* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %28

17:                                               ; preds = %10
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = call i32 @dfl_fpga_dev_ops_register(%struct.platform_device* %18, i32* @fme_fops, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %25

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %33

25:                                               ; preds = %23
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = call i32 @dfl_fpga_dev_feature_uinit(%struct.platform_device* %26)
  br label %28

28:                                               ; preds = %25, %16
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = call i32 @fme_dev_destroy(%struct.platform_device* %29)
  br label %31

31:                                               ; preds = %28, %9
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %24
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @fme_dev_init(%struct.platform_device*) #1

declare dso_local i32 @dfl_fpga_dev_feature_init(%struct.platform_device*, i32) #1

declare dso_local i32 @dfl_fpga_dev_ops_register(%struct.platform_device*, i32*, i32) #1

declare dso_local i32 @dfl_fpga_dev_feature_uinit(%struct.platform_device*) #1

declare dso_local i32 @fme_dev_destroy(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
