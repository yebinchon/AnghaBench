; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_socket_disassoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_socket_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.siw_cep = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"siw: cannot restore sk callbacks: no ep\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"siw: cannot restore sk callbacks: no sk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @siw_socket_disassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siw_socket_disassoc(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.siw_cep*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = getelementptr inbounds %struct.socket, %struct.socket* %5, i32 0, i32 0
  %7 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %7, %struct.sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = icmp ne %struct.sock* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = call i32 @write_lock_bh(i32* %12)
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call %struct.siw_cep* @sk_to_cep(%struct.sock* %14)
  store %struct.siw_cep* %15, %struct.siw_cep** %4, align 8
  %16 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %17 = icmp ne %struct.siw_cep* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %21 = call i32 @siw_sk_restore_upcalls(%struct.sock* %19, %struct.siw_cep* %20)
  %22 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %23 = call i32 @siw_cep_put(%struct.siw_cep* %22)
  br label %26

24:                                               ; preds = %10
  %25 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = call i32 @write_unlock_bh(i32* %28)
  br label %32

30:                                               ; preds = %1
  %31 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.siw_cep* @sk_to_cep(%struct.sock*) #1

declare dso_local i32 @siw_sk_restore_upcalls(%struct.sock*, %struct.siw_cep*) #1

declare dso_local i32 @siw_cep_put(%struct.siw_cep*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
