; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe.c_rxe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe.c_rxe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_dev*)* @rxe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_init(%struct.rxe_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxe_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rxe_dev* %0, %struct.rxe_dev** %3, align 8
  %5 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %6 = call i32 @rxe_init_device_param(%struct.rxe_dev* %5)
  %7 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %8 = call i32 @rxe_init_ports(%struct.rxe_dev* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %14 = call i32 @rxe_init_pools(%struct.rxe_dev* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %31

18:                                               ; preds = %12
  %19 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %20 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %19, i32 0, i32 3
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %23 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %22, i32 0, i32 2
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %26 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %25, i32 0, i32 1
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %29 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %28, i32 0, i32 0
  %30 = call i32 @mutex_init(i32* %29)
  store i32 0, i32* %2, align 4
  br label %36

31:                                               ; preds = %17
  %32 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %33 = call i32 @rxe_cleanup_ports(%struct.rxe_dev* %32)
  br label %34

34:                                               ; preds = %31, %11
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @rxe_init_device_param(%struct.rxe_dev*) #1

declare dso_local i32 @rxe_init_ports(%struct.rxe_dev*) #1

declare dso_local i32 @rxe_init_pools(%struct.rxe_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rxe_cleanup_ports(%struct.rxe_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
