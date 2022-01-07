; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_add_to_reap_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_add_to_reap_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.chtls_sock* }
%struct.chtls_sock = type { %struct.sock* }

@reap_list_lock = common dso_local global i32 0, align 4
@reap_list = common dso_local global %struct.sock* null, align 8
@reap_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @add_to_reap_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_reap_list(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.chtls_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = load %struct.chtls_sock*, %struct.chtls_sock** %5, align 8
  store %struct.chtls_sock* %6, %struct.chtls_sock** %3, align 8
  %7 = call i32 (...) @local_bh_disable()
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call i32 @bh_lock_sock(%struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call i32 @release_tcp_port(%struct.sock* %10)
  %12 = call i32 @spin_lock(i32* @reap_list_lock)
  %13 = load %struct.sock*, %struct.sock** @reap_list, align 8
  %14 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %15 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %14, i32 0, i32 0
  store %struct.sock* %13, %struct.sock** %15, align 8
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  store %struct.sock* %16, %struct.sock** @reap_list, align 8
  %17 = load %struct.chtls_sock*, %struct.chtls_sock** %3, align 8
  %18 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  %20 = icmp ne %struct.sock* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = call i32 @schedule_work(i32* @reap_task)
  br label %23

23:                                               ; preds = %21, %1
  %24 = call i32 @spin_unlock(i32* @reap_list_lock)
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call i32 @bh_unlock_sock(%struct.sock* %25)
  %27 = call i32 (...) @local_bh_enable()
  ret void
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @release_tcp_port(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
