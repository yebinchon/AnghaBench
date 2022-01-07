; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_netlink.c_ipoib_changelink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_netlink.c_ipoib_changelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@IFLA_IPOIB_MODE = common dso_local global i64 0, align 8
@IPOIB_MODE_DATAGRAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"datagram\0A\00", align 1
@IPOIB_MODE_CONNECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"connected\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IFLA_IPOIB_UMCAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ipoib_changelink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_changelink(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %13 = load i64, i64* @IFLA_IPOIB_MODE, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %4
  %18 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %19 = load i64, i64* @IFLA_IPOIB_MODE, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = call i64 @nla_get_u16(%struct.nlattr* %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @IPOIB_MODE_DATAGRAM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @ipoib_set_mode(%struct.net_device* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %11, align 4
  br label %40

29:                                               ; preds = %17
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @IPOIB_MODE_CONNECTED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i32 @ipoib_set_mode(%struct.net_device* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %35, i32* %11, align 4
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %61

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %4
  %46 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %47 = load i64, i64* @IFLA_IPOIB_UMCAST, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %53 = load i64, i64* @IFLA_IPOIB_UMCAST, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %52, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i64 @nla_get_u16(%struct.nlattr* %55)
  store i64 %56, i64* %10, align 8
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @ipoib_set_umcast(%struct.net_device* %57, i64 %58)
  br label %60

60:                                               ; preds = %51, %45
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i64 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @ipoib_set_mode(%struct.net_device*, i8*) #1

declare dso_local i32 @ipoib_set_umcast(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
