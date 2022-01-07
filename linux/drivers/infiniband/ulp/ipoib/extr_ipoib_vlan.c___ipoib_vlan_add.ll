; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_vlan.c___ipoib_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_vlan.c___ipoib_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, %struct.net_device*, %struct.net_device* }
%struct.net_device = type { i64, i32 (%struct.net_device*)*, i32 }

@NETREG_REGISTERED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTUNIQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to initialize; error %i\00", align 1
@IPOIB_LEGACY_CHILD = common dso_local global i32 0, align 4
@dev_attr_parent = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ipoib_vlan_add(%struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %6, align 8
  store %struct.ipoib_dev_priv* %1, %struct.ipoib_dev_priv** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %13 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %12, i32 0, i32 2
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %10, align 8
  %15 = call i32 (...) @ASSERT_RTNL()
  %16 = load %struct.net_device*, %struct.net_device** %10, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  store i32 (%struct.net_device*)* @ipoib_intf_free, i32 (%struct.net_device*)** %17, align 8
  %18 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %19 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %18, i32 0, i32 2
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NETREG_REGISTERED, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 32768
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %97

35:                                               ; preds = %29
  %36 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %37 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %36, i32 0, i32 2
  %38 = load %struct.net_device*, %struct.net_device** %37, align 8
  %39 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %40 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %39, i32 0, i32 3
  store %struct.net_device* %38, %struct.net_device** %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %43 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %46 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %48 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %49 = call i32 @is_child_unique(%struct.ipoib_dev_priv* %47, %struct.ipoib_dev_priv* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %35
  %52 = load i32, i32* @ENOTUNIQ, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %11, align 4
  br label %97

54:                                               ; preds = %35
  %55 = load %struct.net_device*, %struct.net_device** %10, align 8
  %56 = call i32 @register_netdevice(%struct.net_device* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %97

63:                                               ; preds = %54
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @IPOIB_LEGACY_CHILD, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %63
  %68 = load %struct.net_device*, %struct.net_device** %10, align 8
  %69 = call i64 @ipoib_cm_add_mode_attr(%struct.net_device* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %90

72:                                               ; preds = %67
  %73 = load %struct.net_device*, %struct.net_device** %10, align 8
  %74 = call i64 @ipoib_add_pkey_attr(%struct.net_device* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %90

77:                                               ; preds = %72
  %78 = load %struct.net_device*, %struct.net_device** %10, align 8
  %79 = call i64 @ipoib_add_umcast_attr(%struct.net_device* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %90

82:                                               ; preds = %77
  %83 = load %struct.net_device*, %struct.net_device** %10, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 2
  %85 = call i64 @device_create_file(i32* %84, i32* @dev_attr_parent)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %90

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %63
  store i32 0, i32* %5, align 4
  br label %110

90:                                               ; preds = %87, %81, %76, %71
  %91 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %92 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %91, i32 0, i32 2
  %93 = load %struct.net_device*, %struct.net_device** %92, align 8
  %94 = call i32 @unregister_netdevice(%struct.net_device* %93)
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %110

97:                                               ; preds = %59, %51, %32
  %98 = load %struct.net_device*, %struct.net_device** %10, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 1
  %100 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %99, align 8
  %101 = icmp ne i32 (%struct.net_device*)* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.net_device*, %struct.net_device** %10, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 1
  %105 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %104, align 8
  %106 = load %struct.net_device*, %struct.net_device** %10, align 8
  %107 = call i32 %105(%struct.net_device* %106)
  br label %108

108:                                              ; preds = %102, %97
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %108, %90, %89
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @ipoib_intf_free(%struct.net_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @is_child_unique(%struct.ipoib_dev_priv*, %struct.ipoib_dev_priv*) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i64 @ipoib_cm_add_mode_attr(%struct.net_device*) #1

declare dso_local i64 @ipoib_add_pkey_attr(%struct.net_device*) #1

declare dso_local i64 @ipoib_add_umcast_attr(%struct.net_device*) #1

declare dso_local i64 @device_create_file(i32*, i32*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
