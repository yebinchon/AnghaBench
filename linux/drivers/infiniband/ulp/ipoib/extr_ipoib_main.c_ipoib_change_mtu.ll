; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"mtu > %d will cause multicast packet drops.\0A\00", align 1
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@IPOIB_ENCAP_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"MTU must be smaller than the underlying link layer MTU - 4 (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ipoib_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %9)
  store %struct.ipoib_dev_priv* %10, %struct.ipoib_dev_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i64 @ipoib_cm_admin_enabled(%struct.net_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @ipoib_cm_max_mtu(%struct.net_device* %16)
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %110

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %31 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %110

38:                                               ; preds = %2
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ETH_MIN_MTU, align 4
  %41 = load i32, i32* @IPOIB_ENCAP_LEN, align 4
  %42 = add nsw i32 %40, %41
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %47 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @IPOIB_UD_MTU(i32 %48)
  %50 = icmp sgt i32 %45, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44, %38
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %110

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %57 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %59 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %62 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %54
  %66 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %67 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %68 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %66, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %65, %54
  %72 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %73 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %76 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @min(i32 %74, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %80 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %82, align 8
  %84 = icmp ne i32 (%struct.net_device*, i32)* %83, null
  br i1 %84, label %85, label %104

85:                                               ; preds = %71
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = call i32 @netif_carrier_ok(%struct.net_device* %86)
  store i32 %87, i32* %8, align 4
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = call i32 @netif_carrier_off(%struct.net_device* %88)
  %90 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %91 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %93, align 8
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 %94(%struct.net_device* %95, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %85
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = call i32 @netif_carrier_on(%struct.net_device* %101)
  br label %103

103:                                              ; preds = %100, %85
  br label %108

104:                                              ; preds = %71
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %103
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %51, %34, %19
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i64 @ipoib_cm_admin_enabled(%struct.net_device*) #1

declare dso_local i32 @ipoib_cm_max_mtu(%struct.net_device*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @IPOIB_UD_MTU(i32) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
