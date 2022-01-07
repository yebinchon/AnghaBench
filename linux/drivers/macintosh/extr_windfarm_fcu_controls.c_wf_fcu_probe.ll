; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wf_fcu_priv = type { i32, %struct.i2c_client*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"wf_fcu: Initialization failed !\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"wf_fcu: Failed to find fans for your machine\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wf_fcu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_fcu_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wf_fcu_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.wf_fcu_priv* @kzalloc(i32 24, i32 %7)
  store %struct.wf_fcu_priv* %8, %struct.wf_fcu_priv** %6, align 8
  %9 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %6, align 8
  %10 = icmp ne %struct.wf_fcu_priv* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %62

14:                                               ; preds = %2
  %15 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %6, align 8
  %16 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %15, i32 0, i32 3
  %17 = call i32 @kref_init(i32* %16)
  %18 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %6, align 8
  %19 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %18, i32 0, i32 2
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %6, align 8
  %22 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %21, i32 0, i32 0
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %6, align 8
  %26 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %25, i32 0, i32 1
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %6, align 8
  %28 = call i64 @wf_fcu_init_chip(%struct.wf_fcu_priv* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %14
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %6, align 8
  %33 = call i32 @kfree(%struct.wf_fcu_priv* %32)
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %62

36:                                               ; preds = %14
  %37 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %6, align 8
  %38 = call i32 @wf_fcu_lookup_fans(%struct.wf_fcu_priv* %37)
  %39 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %6, align 8
  %40 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %39, i32 0, i32 0
  %41 = call i64 @list_empty(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %6, align 8
  %45 = call i32 @wf_fcu_default_fans(%struct.wf_fcu_priv* %44)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %6, align 8
  %48 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %47, i32 0, i32 0
  %49 = call i64 @list_empty(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %6, align 8
  %54 = call i32 @kfree(%struct.wf_fcu_priv* %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %62

57:                                               ; preds = %46
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %6, align 8
  %61 = call i32 @dev_set_drvdata(i32* %59, %struct.wf_fcu_priv* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %51, %30, %11
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.wf_fcu_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @wf_fcu_init_chip(%struct.wf_fcu_priv*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.wf_fcu_priv*) #1

declare dso_local i32 @wf_fcu_lookup_fans(%struct.wf_fcu_priv*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @wf_fcu_default_fans(%struct.wf_fcu_priv*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.wf_fcu_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
