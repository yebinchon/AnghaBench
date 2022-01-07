; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_socket.c_data_sock_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_socket.c_data_sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32, i32* }
%struct.sock = type { i32, i32 }

@SOCK_DGRAM = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@PF_ISDN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mISDN_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@data_sock_ops = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@MISDN_OPEN = common dso_local global i32 0, align 4
@data_sockets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @data_sock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @data_sock_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
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
  %14 = load i64, i64* @SOCK_DGRAM, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %50

19:                                               ; preds = %4
  %20 = load %struct.net*, %struct.net** %6, align 8
  %21 = load i32, i32* @PF_ISDN, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.sock* @sk_alloc(%struct.net* %20, i32 %21, i32 %22, i32* @mISDN_proto, i32 %23)
  store %struct.sock* %24, %struct.sock** %10, align 8
  %25 = load %struct.sock*, %struct.sock** %10, align 8
  %26 = icmp ne %struct.sock* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %50

30:                                               ; preds = %19
  %31 = load %struct.socket*, %struct.socket** %7, align 8
  %32 = load %struct.sock*, %struct.sock** %10, align 8
  %33 = call i32 @sock_init_data(%struct.socket* %31, %struct.sock* %32)
  %34 = load %struct.socket*, %struct.socket** %7, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 2
  store i32* @data_sock_ops, i32** %35, align 8
  %36 = load i32, i32* @SS_UNCONNECTED, align 4
  %37 = load %struct.socket*, %struct.socket** %7, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sock*, %struct.sock** %10, align 8
  %40 = load i32, i32* @SOCK_ZAPPED, align 4
  %41 = call i32 @sock_reset_flag(%struct.sock* %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.sock*, %struct.sock** %10, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @MISDN_OPEN, align 4
  %46 = load %struct.sock*, %struct.sock** %10, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sock*, %struct.sock** %10, align 8
  %49 = call i32 @mISDN_sock_link(i32* @data_sockets, %struct.sock* %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %30, %27, %16
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

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
