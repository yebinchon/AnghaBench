; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_hi3660-mailbox.c_hi3660_mbox_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_hi3660-mailbox.c_hi3660_mbox_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.hi3660_mbox = type { %struct.TYPE_2__, %struct.mbox_chan*, %struct.device*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32*, %struct.mbox_chan*, %struct.device* }
%struct.mbox_chan = type { i8* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@MBOX_CHAN_MAX = common dso_local global i64 0, align 8
@hi3660_mbox_ops = common dso_local global i32 0, align 4
@hi3660_mbox_xlate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to register mailbox %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Mailbox enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hi3660_mbox_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3660_mbox_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hi3660_mbox*, align 8
  %6 = alloca %struct.mbox_chan*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.hi3660_mbox* @devm_kzalloc(%struct.device* %12, i32 64, i32 %13)
  store %struct.hi3660_mbox* %14, %struct.hi3660_mbox** %5, align 8
  %15 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %5, align 8
  %16 = icmp ne %struct.hi3660_mbox* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %99

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %7, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.resource*, %struct.resource** %7, align 8
  %26 = call i32 @devm_ioremap_resource(%struct.device* %24, %struct.resource* %25)
  %27 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %5, align 8
  %28 = getelementptr inbounds %struct.hi3660_mbox, %struct.hi3660_mbox* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %5, align 8
  %30 = getelementptr inbounds %struct.hi3660_mbox, %struct.hi3660_mbox* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %5, align 8
  %36 = getelementptr inbounds %struct.hi3660_mbox, %struct.hi3660_mbox* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %99

39:                                               ; preds = %20
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %5, align 8
  %42 = getelementptr inbounds %struct.hi3660_mbox, %struct.hi3660_mbox* %41, i32 0, i32 2
  store %struct.device* %40, %struct.device** %42, align 8
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %5, align 8
  %45 = getelementptr inbounds %struct.hi3660_mbox, %struct.hi3660_mbox* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store %struct.device* %43, %struct.device** %46, align 8
  %47 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %5, align 8
  %48 = getelementptr inbounds %struct.hi3660_mbox, %struct.hi3660_mbox* %47, i32 0, i32 1
  %49 = load %struct.mbox_chan*, %struct.mbox_chan** %48, align 8
  %50 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %5, align 8
  %51 = getelementptr inbounds %struct.hi3660_mbox, %struct.hi3660_mbox* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store %struct.mbox_chan* %49, %struct.mbox_chan** %52, align 8
  %53 = load i64, i64* @MBOX_CHAN_MAX, align 8
  %54 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %5, align 8
  %55 = getelementptr inbounds %struct.hi3660_mbox, %struct.hi3660_mbox* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %5, align 8
  %58 = getelementptr inbounds %struct.hi3660_mbox, %struct.hi3660_mbox* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32* @hi3660_mbox_ops, i32** %59, align 8
  %60 = load i32, i32* @hi3660_mbox_xlate, align 4
  %61 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %5, align 8
  %62 = getelementptr inbounds %struct.hi3660_mbox, %struct.hi3660_mbox* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 8
  %64 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %5, align 8
  %65 = getelementptr inbounds %struct.hi3660_mbox, %struct.hi3660_mbox* %64, i32 0, i32 1
  %66 = load %struct.mbox_chan*, %struct.mbox_chan** %65, align 8
  store %struct.mbox_chan* %66, %struct.mbox_chan** %6, align 8
  store i64 0, i64* %8, align 8
  br label %67

67:                                               ; preds = %78, %39
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @MBOX_CHAN_MAX, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i64, i64* %8, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %74, i64 %75
  %77 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %76, i32 0, i32 0
  store i8* %73, i8** %77, align 8
  br label %78

78:                                               ; preds = %71
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %67

81:                                               ; preds = %67
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %5, align 8
  %84 = getelementptr inbounds %struct.hi3660_mbox, %struct.hi3660_mbox* %83, i32 0, i32 0
  %85 = call i32 @devm_mbox_controller_register(%struct.device* %82, %struct.TYPE_2__* %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %2, align 4
  br label %99

93:                                               ; preds = %81
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = load %struct.hi3660_mbox*, %struct.hi3660_mbox** %5, align 8
  %96 = call i32 @platform_set_drvdata(%struct.platform_device* %94, %struct.hi3660_mbox* %95)
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @dev_info(%struct.device* %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %93, %88, %34, %17
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.hi3660_mbox* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_mbox_controller_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hi3660_mbox*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
