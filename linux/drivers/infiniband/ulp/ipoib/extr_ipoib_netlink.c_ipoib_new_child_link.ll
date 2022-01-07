; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_netlink.c_ipoib_new_child_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_netlink.c_ipoib_new_child_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i64, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32 }

@IFLA_LINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ARPHRD_INFINIBAND = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@IPOIB_FLAG_SUBINTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"child creation disallowed for child devices\0A\00", align 1
@IFLA_IPOIB_PKEY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"no pkey specified, using parent pkey\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to initialize pkey device\0A\00", align 1
@IPOIB_RTNL_CHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ipoib_new_child_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_new_child_link(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.ipoib_dev_priv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %16 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %17 = load i64, i64* @IFLA_LINK, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %123

24:                                               ; preds = %5
  %25 = load %struct.net*, %struct.net** %7, align 8
  %26 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %27 = load i64, i64* @IFLA_LINK, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = call i32 @nla_get_u32(%struct.nlattr* %29)
  %31 = call %struct.net_device* @__dev_get_by_index(%struct.net* %25, i32 %30)
  store %struct.net_device* %31, %struct.net_device** %12, align 8
  %32 = load %struct.net_device*, %struct.net_device** %12, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.net_device*, %struct.net_device** %12, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ARPHRD_INFINIBAND, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %24
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %123

43:                                               ; preds = %34
  %44 = load %struct.net_device*, %struct.net_device** %12, align 8
  %45 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %44)
  store %struct.ipoib_dev_priv* %45, %struct.ipoib_dev_priv** %13, align 8
  %46 = load i32, i32* @IPOIB_FLAG_SUBINTERFACE, align 4
  %47 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %48 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %47, i32 0, i32 3
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %53 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %123

56:                                               ; preds = %43
  %57 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %58 = icmp ne %struct.nlattr** %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %61 = load i64, i64* @IFLA_IPOIB_PKEY, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = icmp ne %struct.nlattr* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %59, %56
  %66 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %67 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %69 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %14, align 4
  br label %77

71:                                               ; preds = %59
  %72 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %73 = load i64, i64* @IFLA_IPOIB_PKEY, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i32 @nla_get_u16(%struct.nlattr* %75)
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %71, %65
  %78 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %79 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %82 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.net_device*, %struct.net_device** %8, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.net_device*, %struct.net_device** %8, align 8
  %88 = call i32 @ipoib_intf_init(i32 %80, i32 %83, i32 %86, %struct.net_device* %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %77
  %92 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %93 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %6, align 4
  br label %123

95:                                               ; preds = %77
  %96 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %13, align 8
  %97 = load %struct.net_device*, %struct.net_device** %8, align 8
  %98 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %97)
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @IPOIB_RTNL_CHILD, align 4
  %101 = call i32 @__ipoib_vlan_add(%struct.ipoib_dev_priv* %96, %struct.ipoib_dev_priv* %98, i32 %99, i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %6, align 4
  br label %123

106:                                              ; preds = %95
  %107 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %108 = icmp ne %struct.nlattr** %107, null
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load %struct.net_device*, %struct.net_device** %8, align 8
  %111 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %112 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %113 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %114 = call i32 @ipoib_changelink(%struct.net_device* %110, %struct.nlattr** %111, %struct.nlattr** %112, %struct.netlink_ext_ack* %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load %struct.net_device*, %struct.net_device** %8, align 8
  %119 = call i32 @unregister_netdevice(%struct.net_device* %118)
  %120 = load i32, i32* %15, align 4
  store i32 %120, i32* %6, align 4
  br label %123

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %106
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %122, %117, %104, %91, %51, %40, %21
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @ipoib_intf_init(i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @__ipoib_vlan_add(%struct.ipoib_dev_priv*, %struct.ipoib_dev_priv*, i32, i32) #1

declare dso_local i32 @ipoib_changelink(%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
