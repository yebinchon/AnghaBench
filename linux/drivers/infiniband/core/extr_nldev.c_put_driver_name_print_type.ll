; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_put_driver_name_print_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_put_driver_name_print_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@RDMA_NLDEV_ATTR_DRIVER_STRING = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RDMA_NLDEV_PRINT_TYPE_UNSPEC = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_DRIVER_PRINT_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8*, i32)* @put_driver_name_print_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_driver_name_print_type(%struct.sk_buff* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = load i32, i32* @RDMA_NLDEV_ATTR_DRIVER_STRING, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @nla_put_string(%struct.sk_buff* %8, i32 %9, i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EMSGSIZE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @RDMA_NLDEV_PRINT_TYPE_UNSPEC, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load i32, i32* @RDMA_NLDEV_ATTR_DRIVER_PRINT_TYPE, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @nla_put_u8(%struct.sk_buff* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %20, %16
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %26, %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i8*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
