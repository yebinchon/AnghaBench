; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_validate_ipv4_net_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_validate_ipv4_net_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.fib_result = type { i32 }
%struct.flowi4 = type { i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sockaddr_in*, %struct.sockaddr_in*)* @validate_ipv4_net_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_ipv4_net_dev(%struct.net_device* %0, %struct.sockaddr_in* %1, %struct.sockaddr_in* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fib_result, align 4
  %11 = alloca %struct.flowi4, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %6, align 8
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %7, align 8
  %14 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @ipv4_is_multicast(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %3
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @ipv4_is_lbcast(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @ipv4_is_lbcast(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @ipv4_is_zeronet(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @ipv4_is_zeronet(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @ipv4_is_loopback(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %9, align 8
  %47 = call i64 @ipv4_is_loopback(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41, %37, %33, %29, %25, %3
  store i32 0, i32* %4, align 4
  br label %77

50:                                               ; preds = %45
  %51 = call i32 @memset(%struct.flowi4* %11, i32 0, i32 24)
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %11, i32 0, i32 2
  store i32 %54, i32* %55, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %11, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %11, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = call i32 (...) @rcu_read_lock()
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = call i32 @dev_net(%struct.net_device* %61)
  %63 = call i32 @fib_lookup(i32 %62, %struct.flowi4* %11, %struct.fib_result* %10, i32 0)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.net_device* @FIB_RES_DEV(i32 %68)
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = icmp eq %struct.net_device* %69, %70
  br label %72

72:                                               ; preds = %66, %50
  %73 = phi i1 [ false, %50 ], [ %71, %66 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %13, align 4
  %75 = call i32 (...) @rcu_read_unlock()
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %72, %49
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @ipv4_is_multicast(i8*) #1

declare dso_local i64 @ipv4_is_lbcast(i8*) #1

declare dso_local i64 @ipv4_is_zeronet(i8*) #1

declare dso_local i64 @ipv4_is_loopback(i8*) #1

declare dso_local i32 @memset(%struct.flowi4*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @fib_lookup(i32, %struct.flowi4*, %struct.fib_result*, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.net_device* @FIB_RES_DEV(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
