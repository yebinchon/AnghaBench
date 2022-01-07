; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_assign_client_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_assign_client_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_client = type { i32 }

@clients_rwsem = common dso_local global i32 0, align 4
@highest_client_id = common dso_local global i32 0, align 4
@clients = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CLIENT_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_client*)* @assign_client_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_client_id(%struct.ib_client* %0) #0 {
  %2 = alloca %struct.ib_client*, align 8
  %3 = alloca i32, align 4
  store %struct.ib_client* %0, %struct.ib_client** %2, align 8
  %4 = call i32 @down_write(i32* @clients_rwsem)
  %5 = load i32, i32* @highest_client_id, align 4
  %6 = load %struct.ib_client*, %struct.ib_client** %2, align 8
  %7 = getelementptr inbounds %struct.ib_client, %struct.ib_client* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.ib_client*, %struct.ib_client** %2, align 8
  %9 = getelementptr inbounds %struct.ib_client, %struct.ib_client* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ib_client*, %struct.ib_client** %2, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @xa_insert(i32* @clients, i32 %10, %struct.ib_client* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %25

17:                                               ; preds = %1
  %18 = load i32, i32* @highest_client_id, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @highest_client_id, align 4
  %20 = load %struct.ib_client*, %struct.ib_client** %2, align 8
  %21 = getelementptr inbounds %struct.ib_client, %struct.ib_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CLIENT_REGISTERED, align 4
  %24 = call i32 @xa_set_mark(i32* @clients, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %17, %16
  %26 = call i32 @up_write(i32* @clients_rwsem)
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @xa_insert(i32*, i32, %struct.ib_client*, i32) #1

declare dso_local i32 @xa_set_mark(i32*, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
