; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_socket.c_base_sock_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_socket.c_base_sock_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_mISDN = type { i64, i32 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@AF_ISDN = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MISDN_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @base_sock_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_sock_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_mISDN*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_mISDN*
  store %struct.sockaddr_mISDN* %12, %struct.sockaddr_mISDN** %8, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 16
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %69

22:                                               ; preds = %3
  %23 = load %struct.sockaddr_mISDN*, %struct.sockaddr_mISDN** %8, align 8
  %24 = icmp ne %struct.sockaddr_mISDN* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.sockaddr_mISDN*, %struct.sockaddr_mISDN** %8, align 8
  %27 = getelementptr inbounds %struct.sockaddr_mISDN, %struct.sockaddr_mISDN* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_ISDN, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %22
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %69

34:                                               ; preds = %25
  %35 = load %struct.sock*, %struct.sock** %9, align 8
  %36 = call i32 @lock_sock(%struct.sock* %35)
  %37 = load %struct.sock*, %struct.sock** %9, align 8
  %38 = call %struct.TYPE_2__* @_pms(%struct.sock* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EALREADY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %65

45:                                               ; preds = %34
  %46 = load %struct.sockaddr_mISDN*, %struct.sockaddr_mISDN** %8, align 8
  %47 = getelementptr inbounds %struct.sockaddr_mISDN, %struct.sockaddr_mISDN* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @get_mdevice(i32 %48)
  %50 = load %struct.sock*, %struct.sock** %9, align 8
  %51 = call %struct.TYPE_2__* @_pms(%struct.sock* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load %struct.sock*, %struct.sock** %9, align 8
  %54 = call %struct.TYPE_2__* @_pms(%struct.sock* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %45
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %65

61:                                               ; preds = %45
  %62 = load i32, i32* @MISDN_BOUND, align 4
  %63 = load %struct.sock*, %struct.sock** %9, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %58, %42
  %66 = load %struct.sock*, %struct.sock** %9, align 8
  %67 = call i32 @release_sock(%struct.sock* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %31, %19
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @_pms(%struct.sock*) #1

declare dso_local i64 @get_mdevice(i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
