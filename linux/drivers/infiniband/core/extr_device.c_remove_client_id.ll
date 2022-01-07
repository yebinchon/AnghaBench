; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_remove_client_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_remove_client_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_client = type { i32 }

@clients_rwsem = common dso_local global i32 0, align 4
@clients = common dso_local global i32 0, align 4
@highest_client_id = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_client*)* @remove_client_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_client_id(%struct.ib_client* %0) #0 {
  %2 = alloca %struct.ib_client*, align 8
  store %struct.ib_client* %0, %struct.ib_client** %2, align 8
  %3 = call i32 @down_write(i32* @clients_rwsem)
  %4 = load %struct.ib_client*, %struct.ib_client** %2, align 8
  %5 = getelementptr inbounds %struct.ib_client, %struct.ib_client* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @xa_erase(i32* @clients, i32 %6)
  br label %8

8:                                                ; preds = %18, %1
  %9 = load i64, i64* @highest_client_id, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load i64, i64* @highest_client_id, align 8
  %13 = sub nsw i64 %12, 1
  %14 = call i64 @xa_load(i32* @clients, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %21

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17
  %19 = load i64, i64* @highest_client_id, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* @highest_client_id, align 8
  br label %8

21:                                               ; preds = %16, %8
  %22 = call i32 @up_write(i32* @clients_rwsem)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @xa_erase(i32*, i32) #1

declare dso_local i64 @xa_load(i32*, i64) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
