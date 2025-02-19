; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_rep_query_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_rep_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_port_attr*)* @mlx5_ib_rep_query_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_rep_query_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_attr*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %7, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %12 = call i32 @mlx5_query_port_roce(%struct.ib_device* %9, i32 %10, %struct.ib_port_attr* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %17 = icmp ne %struct.ib_port_attr* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %24

20:                                               ; preds = %15
  %21 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %22 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @mlx5_query_port_roce(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
