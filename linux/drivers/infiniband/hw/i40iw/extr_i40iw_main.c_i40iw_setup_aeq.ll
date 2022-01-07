; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_setup_aeq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_setup_aeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.TYPE_2__*, i32, %struct.i40iw_sc_dev }
%struct.TYPE_2__ = type { i32 }
%struct.i40iw_sc_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*)* @i40iw_setup_aeq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_setup_aeq(%struct.i40iw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  %6 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %7 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %6, i32 0, i32 2
  store %struct.i40iw_sc_dev* %7, %struct.i40iw_sc_dev** %4, align 8
  %8 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %9 = call i32 @i40iw_create_aeq(%struct.i40iw_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %16 = call i32 @i40iw_configure_aeq_vector(%struct.i40iw_device* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %21 = call i32 @i40iw_destroy_aeq(%struct.i40iw_device* %20)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %38

23:                                               ; preds = %14
  %24 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %25 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %30 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %31 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @i40iw_enable_intr(%struct.i40iw_sc_dev* %29, i32 %35)
  br label %37

37:                                               ; preds = %28, %23
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %19, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @i40iw_create_aeq(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_configure_aeq_vector(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_destroy_aeq(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_enable_intr(%struct.i40iw_sc_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
