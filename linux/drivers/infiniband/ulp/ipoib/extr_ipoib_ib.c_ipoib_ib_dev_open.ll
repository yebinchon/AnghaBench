; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 (%struct.net_device*)* }

@IPOIB_PKEY_ASSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"P_Key 0x%04x is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@IPOIB_STOP_REAPER = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: Failed to open dev\0A\00", align 1
@IPOIB_FLAG_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_ib_dev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %5)
  store %struct.ipoib_dev_priv* %6, %struct.ipoib_dev_priv** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i32 @ipoib_pkey_dev_check_presence(%struct.net_device* %7)
  %9 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %10, i32 0, i32 1
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %1
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %16 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %20 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 32767
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %26)
  store i32 -1, i32* %2, align 4
  br label %73

28:                                               ; preds = %1
  %29 = load i32, i32* @IPOIB_STOP_REAPER, align 4
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %31 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %30, i32 0, i32 1
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  %33 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %37 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %36, i32 0, i32 2
  %38 = load i32, i32* @HZ, align 4
  %39 = call i32 @round_jiffies_relative(i32 %38)
  %40 = call i32 @queue_delayed_work(i32 %35, i32* %37, i32 %39)
  %41 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %42 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64 (%struct.net_device*)*, i64 (%struct.net_device*)** %44, align 8
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i64 %45(%struct.net_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %28
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %59

54:                                               ; preds = %28
  %55 = load i32, i32* @IPOIB_FLAG_INITIALIZED, align 4
  %56 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %57 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %56, i32 0, i32 1
  %58 = call i32 @set_bit(i32 %55, i32* %57)
  store i32 0, i32* %2, align 4
  br label %73

59:                                               ; preds = %49
  %60 = load i32, i32* @IPOIB_STOP_REAPER, align 4
  %61 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %62 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %61, i32 0, i32 1
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  %64 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %65 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %64, i32 0, i32 2
  %66 = call i32 @cancel_delayed_work(i32* %65)
  %67 = load i32, i32* @IPOIB_FLAG_INITIALIZED, align 4
  %68 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %69 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %68, i32 0, i32 1
  %70 = call i32 @set_bit(i32 %67, i32* %69)
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = call i32 @ipoib_ib_dev_stop(%struct.net_device* %71)
  store i32 -1, i32* %2, align 4
  br label %73

73:                                               ; preds = %59, %54, %14
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_pkey_dev_check_presence(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @ipoib_ib_dev_stop(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
