; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_handle_leave_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_handle_leave_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcast_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mcast_req = type { i64, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcast_group*, i32, %struct.mcast_req*)* @handle_leave_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_leave_req(%struct.mcast_group* %0, i32 %1, %struct.mcast_req* %2) #0 {
  %4 = alloca %struct.mcast_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mcast_req*, align 8
  %7 = alloca i32, align 4
  store %struct.mcast_group* %0, %struct.mcast_group** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mcast_req* %2, %struct.mcast_req** %6, align 8
  %8 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %9 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %14 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %17 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %12, %3
  %23 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %24 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %25 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @check_leave(%struct.mcast_group* %23, i64 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %22
  %32 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %33 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %34 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @leave_group(%struct.mcast_group* %32, i64 %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %22
  %39 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %40 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %45 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %48 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %49 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %48, i32 0, i32 3
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @send_reply_to_slave(i64 %46, %struct.mcast_group* %47, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %38
  %53 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %54 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %57 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %64 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %63, i32 0, i32 2
  %65 = call i32 @list_del(i32* %64)
  %66 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %67 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %66, i32 0, i32 1
  %68 = call i32 @list_del(i32* %67)
  %69 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %70 = call i32 @kfree(%struct.mcast_req* %69)
  ret i32 1
}

declare dso_local i32 @check_leave(%struct.mcast_group*, i64, i32) #1

declare dso_local i32 @leave_group(%struct.mcast_group*, i64, i32) #1

declare dso_local i32 @send_reply_to_slave(i64, %struct.mcast_group*, i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mcast_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
