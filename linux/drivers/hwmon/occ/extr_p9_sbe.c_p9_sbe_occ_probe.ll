; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_p9_sbe.c_p9_sbe_occ_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_p9_sbe.c_p9_sbe_occ_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.occ = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.p9_sbe_occ = type { %struct.occ, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@p9_sbe_occ_send_cmd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"p9_occ\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @p9_sbe_occ_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_sbe_occ_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.occ*, align 8
  %6 = alloca %struct.p9_sbe_occ*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.p9_sbe_occ* @devm_kzalloc(%struct.TYPE_2__* %8, i32 32, i32 %9)
  store %struct.p9_sbe_occ* %10, %struct.p9_sbe_occ** %6, align 8
  %11 = load %struct.p9_sbe_occ*, %struct.p9_sbe_occ** %6, align 8
  %12 = icmp ne %struct.p9_sbe_occ* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.p9_sbe_occ*, %struct.p9_sbe_occ** %6, align 8
  %22 = getelementptr inbounds %struct.p9_sbe_occ, %struct.p9_sbe_occ* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.p9_sbe_occ*, %struct.p9_sbe_occ** %6, align 8
  %24 = getelementptr inbounds %struct.p9_sbe_occ, %struct.p9_sbe_occ* %23, i32 0, i32 0
  store %struct.occ* %24, %struct.occ** %5, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.occ*, %struct.occ** %5, align 8
  %28 = getelementptr inbounds %struct.occ, %struct.occ* %27, i32 0, i32 3
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.occ*, %struct.occ** %5, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.occ* %30)
  %32 = load %struct.occ*, %struct.occ** %5, align 8
  %33 = getelementptr inbounds %struct.occ, %struct.occ* %32, i32 0, i32 0
  store i32 500, i32* %33, align 8
  %34 = load %struct.occ*, %struct.occ** %5, align 8
  %35 = getelementptr inbounds %struct.occ, %struct.occ* %34, i32 0, i32 1
  store i32 32, i32* %35, align 4
  %36 = load i32, i32* @p9_sbe_occ_send_cmd, align 4
  %37 = load %struct.occ*, %struct.occ** %5, align 8
  %38 = getelementptr inbounds %struct.occ, %struct.occ* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.occ*, %struct.occ** %5, align 8
  %40 = call i32 @occ_setup(%struct.occ* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @ESHUTDOWN, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %16
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %16
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.p9_sbe_occ* @devm_kzalloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.occ*) #1

declare dso_local i32 @occ_setup(%struct.occ*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
