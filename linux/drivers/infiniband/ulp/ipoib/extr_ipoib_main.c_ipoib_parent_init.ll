; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_parent_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_parent_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i64, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ib_port_attr = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s: ib_query_port %d failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: ib_query_pkey port %d failed (ret = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: rdma_query_gid port %d failed (ret = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ipoib_parent_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_parent_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca %struct.ib_port_attr, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %7)
  store %struct.ipoib_dev_priv* %8, %struct.ipoib_dev_priv** %4, align 8
  %9 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %10 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %9, i32 0, i32 2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %13 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @ib_query_port(%struct.TYPE_8__* %11, i64 %14, %struct.ib_port_attr* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %20 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i8*, i32, i64, ...) @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %120

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ib_mtu_enum_to_int(i32 %31)
  %33 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %36 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %39 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %42 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %41, i32 0, i32 4
  %43 = call i32 @ib_query_pkey(%struct.TYPE_8__* %37, i64 %40, i32 0, i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %29
  %47 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %48 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %53 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i8*, i32, i64, ...) @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %51, i64 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %120

58:                                               ; preds = %29
  %59 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %60 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %63 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %66 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %65, i32 0, i32 3
  %67 = call i32 @rdma_query_gid(%struct.TYPE_8__* %61, i64 %64, i32 0, %struct.TYPE_9__* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %58
  %71 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %72 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %71, i32 0, i32 2
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %77 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (i8*, i32, i64, ...) @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %75, i64 %78, i32 %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %120

82:                                               ; preds = %58
  %83 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %84 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %83, i32 0, i32 1
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 4
  %89 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %90 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @memcpy(i64 %88, i32 %92, i32 4)
  %94 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %95 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %94, i32 0, i32 1
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %98 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %97, i32 0, i32 2
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @SET_NETDEV_DEV(%struct.TYPE_10__* %96, i32 %102)
  %104 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %105 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %106, 1
  %108 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %109 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  store i64 %107, i64* %111, align 8
  %112 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %113 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %114, 1
  %116 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %117 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %116, i32 0, i32 1
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  store i64 %115, i64* %119, align 8
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %82, %70, %46, %18
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ib_query_port(%struct.TYPE_8__*, i64, %struct.ib_port_attr*) #1

declare dso_local i32 @pr_warn(i8*, i32, i64, ...) #1

declare dso_local i32 @ib_mtu_enum_to_int(i32) #1

declare dso_local i32 @ib_query_pkey(%struct.TYPE_8__*, i64, i32, i32*) #1

declare dso_local i32 @rdma_query_gid(%struct.TYPE_8__*, i64, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
