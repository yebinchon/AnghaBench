; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_transport.c_usnic_transport_get_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_transport.c_usnic_transport_get_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Unable to lookup socket for fd %d with err %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Get sock %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.socket* @usnic_transport_get_socket(i32 %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [25 x i8], align 16
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.socket* @sockfd_lookup(i32 %7, i32* %5)
  store %struct.socket* %8, %struct.socket** %4, align 8
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = icmp ne %struct.socket* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @usnic_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.socket* @ERR_PTR(i32 %16)
  store %struct.socket* %17, %struct.socket** %2, align 8
  br label %25

18:                                               ; preds = %1
  %19 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  %20 = load %struct.socket*, %struct.socket** %4, align 8
  %21 = call i32 @usnic_transport_sock_to_str(i8* %19, i32 25, %struct.socket* %20)
  %22 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  %23 = call i32 @usnic_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load %struct.socket*, %struct.socket** %4, align 8
  store %struct.socket* %24, %struct.socket** %2, align 8
  br label %25

25:                                               ; preds = %18, %11
  %26 = load %struct.socket*, %struct.socket** %2, align 8
  ret %struct.socket* %26
}

declare dso_local %struct.socket* @sockfd_lookup(i32, i32*) #1

declare dso_local i32 @usnic_err(i8*, i32, i32) #1

declare dso_local %struct.socket* @ERR_PTR(i32) #1

declare dso_local i32 @usnic_transport_sock_to_str(i8*, i32, %struct.socket*) #1

declare dso_local i32 @usnic_dbg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
