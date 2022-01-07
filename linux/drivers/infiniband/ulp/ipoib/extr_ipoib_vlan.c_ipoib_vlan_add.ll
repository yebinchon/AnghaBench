; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_vlan.c_ipoib_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_vlan.c_ipoib_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.ipoib_dev_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NETREG_REGISTERED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s.%04x\00", align 1
@IPOIB_LEGACY_CHILD = common dso_local global i32 0, align 4
@NETREG_UNINITIALIZED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_vlan_add(%struct.net_device* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i16 %1, i16* %5, align 2
  %13 = load i32, i32* @IFNAMSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @CAP_NET_ADMIN, align 4
  %18 = call i32 @capable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %85

23:                                               ; preds = %2
  %24 = call i32 (...) @rtnl_trylock()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 (...) @restart_syscall()
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %85

28:                                               ; preds = %23
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NETREG_REGISTERED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = call i32 (...) @rtnl_unlock()
  %36 = load i32, i32* @EPERM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %85

38:                                               ; preds = %28
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %39)
  store %struct.ipoib_dev_priv* %40, %struct.ipoib_dev_priv** %6, align 8
  %41 = trunc i64 %14 to i32
  %42 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %43 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i16, i16* %5, align 2
  %48 = call i32 @snprintf(i8* %16, i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %46, i16 zeroext %47)
  %49 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %50 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %53 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.net_device* @ipoib_intf_alloc(i32 %51, i32 %54, i8* %16)
  store %struct.net_device* %55, %struct.net_device** %10, align 8
  %56 = load %struct.net_device*, %struct.net_device** %10, align 8
  %57 = call i64 @IS_ERR(%struct.net_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %38
  %60 = load %struct.net_device*, %struct.net_device** %10, align 8
  %61 = call i32 @PTR_ERR(%struct.net_device* %60)
  store i32 %61, i32* %11, align 4
  br label %82

62:                                               ; preds = %38
  %63 = load %struct.net_device*, %struct.net_device** %10, align 8
  %64 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %63)
  store %struct.ipoib_dev_priv* %64, %struct.ipoib_dev_priv** %7, align 8
  %65 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %66 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %67 = load i16, i16* %5, align 2
  %68 = load i32, i32* @IPOIB_LEGACY_CHILD, align 4
  %69 = call i32 @__ipoib_vlan_add(%struct.ipoib_dev_priv* %65, %struct.ipoib_dev_priv* %66, i16 zeroext %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %62
  %73 = load %struct.net_device*, %struct.net_device** %10, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NETREG_UNINITIALIZED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.net_device*, %struct.net_device** %10, align 8
  %80 = call i32 @free_netdev(%struct.net_device* %79)
  br label %81

81:                                               ; preds = %78, %72, %62
  br label %82

82:                                               ; preds = %81, %59
  %83 = call i32 (...) @rtnl_unlock()
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %85

85:                                               ; preds = %82, %34, %26, %20
  %86 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @capable(i32) #2

declare dso_local i32 @rtnl_trylock(...) #2

declare dso_local i32 @restart_syscall(...) #2

declare dso_local i32 @rtnl_unlock(...) #2

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i16 zeroext) #2

declare dso_local %struct.net_device* @ipoib_intf_alloc(i32, i32, i8*) #2

declare dso_local i64 @IS_ERR(%struct.net_device*) #2

declare dso_local i32 @PTR_ERR(%struct.net_device*) #2

declare dso_local i32 @__ipoib_vlan_add(%struct.ipoib_dev_priv*, %struct.ipoib_dev_priv*, i16 zeroext, i32) #2

declare dso_local i32 @free_netdev(%struct.net_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
