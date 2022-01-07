; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_cm.c_iwch_l2t_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_cm.c_iwch_l2t_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i64 }
%struct.sk_buff = type { i32 }
%struct.l2t_entry = type { i32 }
%struct.cxio_rdev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t3cdev*, %struct.sk_buff*, %struct.l2t_entry*)* @iwch_l2t_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwch_l2t_send(%struct.t3cdev* %0, %struct.sk_buff* %1, %struct.l2t_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.t3cdev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.l2t_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cxio_rdev*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.l2t_entry* %2, %struct.l2t_entry** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.t3cdev*, %struct.t3cdev** %5, align 8
  %11 = getelementptr inbounds %struct.t3cdev, %struct.t3cdev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cxio_rdev*
  store %struct.cxio_rdev* %13, %struct.cxio_rdev** %9, align 8
  %14 = load %struct.cxio_rdev*, %struct.cxio_rdev** %9, align 8
  %15 = call i64 @cxio_fatal_error(%struct.cxio_rdev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @kfree_skb(%struct.sk_buff* %18)
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %40

22:                                               ; preds = %3
  %23 = load %struct.t3cdev*, %struct.t3cdev** %5, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %26 = call i32 @l2t_send(%struct.t3cdev* %23, %struct.sk_buff* %24, %struct.l2t_entry* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  br label %38

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %17
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @cxio_fatal_error(%struct.cxio_rdev*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @l2t_send(%struct.t3cdev*, %struct.sk_buff*, %struct.l2t_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
