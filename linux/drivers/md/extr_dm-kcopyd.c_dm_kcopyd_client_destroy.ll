; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-kcopyd.c_dm_kcopyd_client_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-kcopyd.c_dm_kcopyd_client_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_kcopyd_client = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_kcopyd_client_destroy(%struct.dm_kcopyd_client* %0) #0 {
  %2 = alloca %struct.dm_kcopyd_client*, align 8
  store %struct.dm_kcopyd_client* %0, %struct.dm_kcopyd_client** %2, align 8
  %3 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %2, align 8
  %4 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %2, align 8
  %7 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %6, i32 0, i32 7
  %8 = call i32 @atomic_read(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @wait_event(i32 %5, i32 %11)
  %13 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %2, align 8
  %14 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %13, i32 0, i32 6
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %2, align 8
  %21 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %20, i32 0, i32 5
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %2, align 8
  %28 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %27, i32 0, i32 4
  %29 = call i32 @list_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %2, align 8
  %35 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %34, i32 0, i32 3
  %36 = call i32 @list_empty(i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %2, align 8
  %42 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @destroy_workqueue(i32 %43)
  %45 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %2, align 8
  %46 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dm_io_client_destroy(i32 %47)
  %49 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %2, align 8
  %50 = call i32 @client_free_pages(%struct.dm_kcopyd_client* %49)
  %51 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %2, align 8
  %52 = getelementptr inbounds %struct.dm_kcopyd_client, %struct.dm_kcopyd_client* %51, i32 0, i32 0
  %53 = call i32 @mempool_exit(i32* %52)
  %54 = load %struct.dm_kcopyd_client*, %struct.dm_kcopyd_client** %2, align 8
  %55 = call i32 @kfree(%struct.dm_kcopyd_client* %54)
  ret void
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @dm_io_client_destroy(i32) #1

declare dso_local i32 @client_free_pages(%struct.dm_kcopyd_client*) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @kfree(%struct.dm_kcopyd_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
