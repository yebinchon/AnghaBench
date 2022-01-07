; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_socket.c_base_sock_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_socket.c_base_sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32, i32* }
%struct.sock = type { i32, i32 }

@SOCK_RAW = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@CAP_NET_RAW = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PF_ISDN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mISDN_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@base_sock_ops = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@MISDN_OPEN = common dso_local global i32 0, align 4
@base_sockets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @base_sock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_sock_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.socket*, %struct.socket** %7, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SOCK_RAW, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %57

19:                                               ; preds = %4
  %20 = load i32, i32* @CAP_NET_RAW, align 4
  %21 = call i32 @capable(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %57

26:                                               ; preds = %19
  %27 = load %struct.net*, %struct.net** %6, align 8
  %28 = load i32, i32* @PF_ISDN, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.sock* @sk_alloc(%struct.net* %27, i32 %28, i32 %29, i32* @mISDN_proto, i32 %30)
  store %struct.sock* %31, %struct.sock** %10, align 8
  %32 = load %struct.sock*, %struct.sock** %10, align 8
  %33 = icmp ne %struct.sock* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %57

37:                                               ; preds = %26
  %38 = load %struct.socket*, %struct.socket** %7, align 8
  %39 = load %struct.sock*, %struct.sock** %10, align 8
  %40 = call i32 @sock_init_data(%struct.socket* %38, %struct.sock* %39)
  %41 = load %struct.socket*, %struct.socket** %7, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 2
  store i32* @base_sock_ops, i32** %42, align 8
  %43 = load i32, i32* @SS_UNCONNECTED, align 4
  %44 = load %struct.socket*, %struct.socket** %7, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sock*, %struct.sock** %10, align 8
  %47 = load i32, i32* @SOCK_ZAPPED, align 4
  %48 = call i32 @sock_reset_flag(%struct.sock* %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.sock*, %struct.sock** %10, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @MISDN_OPEN, align 4
  %53 = load %struct.sock*, %struct.sock** %10, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.sock*, %struct.sock** %10, align 8
  %56 = call i32 @mISDN_sock_link(i32* @base_sockets, %struct.sock* %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %37, %34, %23, %16
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @mISDN_sock_link(i32*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
