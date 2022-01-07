; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_transport.c_usnic_transport_put_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_transport.c_usnic_transport_put_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Put sock %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usnic_transport_put_socket(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca [100 x i8], align 16
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = call i32 @usnic_transport_sock_to_str(i8* %4, i32 100, %struct.socket* %5)
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %8 = call i32 @usnic_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load %struct.socket*, %struct.socket** %2, align 8
  %10 = call i32 @sockfd_put(%struct.socket* %9)
  ret void
}

declare dso_local i32 @usnic_transport_sock_to_str(i8*, i32, %struct.socket*) #1

declare dso_local i32 @usnic_dbg(i8*, i8*) #1

declare dso_local i32 @sockfd_put(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
