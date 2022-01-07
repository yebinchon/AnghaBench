; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_info = type { i32 }
%struct.i40e_client = type { i32 }
%struct.i40iw_device = type { i32, i32, i32 }
%struct.i40iw_handler = type { %struct.i40iw_device }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_info*, %struct.i40e_client*, i32)* @i40iw_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_close(%struct.i40e_info* %0, %struct.i40e_client* %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_info*, align 8
  %5 = alloca %struct.i40e_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40iw_device*, align 8
  %8 = alloca %struct.i40iw_handler*, align 8
  store %struct.i40e_info* %0, %struct.i40e_info** %4, align 8
  store %struct.i40e_client* %1, %struct.i40e_client** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.i40e_info*, %struct.i40e_info** %4, align 8
  %10 = call %struct.i40iw_handler* @i40iw_find_i40e_handler(%struct.i40e_info* %9)
  store %struct.i40iw_handler* %10, %struct.i40iw_handler** %8, align 8
  %11 = load %struct.i40iw_handler*, %struct.i40iw_handler** %8, align 8
  %12 = icmp ne %struct.i40iw_handler* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %33

14:                                               ; preds = %3
  %15 = load %struct.i40iw_handler*, %struct.i40iw_handler** %8, align 8
  %16 = getelementptr inbounds %struct.i40iw_handler, %struct.i40iw_handler* %15, i32 0, i32 0
  store %struct.i40iw_device* %16, %struct.i40iw_device** %7, align 8
  %17 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %18 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %23 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %14
  %25 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %26 = call i32 @i40iw_cm_teardown_connections(%struct.i40iw_device* %25, i32* null, i32* null, i32 1)
  %27 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %28 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @destroy_workqueue(i32 %29)
  %31 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %32 = call i32 @i40iw_deinit_device(%struct.i40iw_device* %31)
  br label %33

33:                                               ; preds = %24, %13
  ret void
}

declare dso_local %struct.i40iw_handler* @i40iw_find_i40e_handler(%struct.i40e_info*) #1

declare dso_local i32 @i40iw_cm_teardown_connections(%struct.i40iw_device*, i32*, i32*, i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @i40iw_deinit_device(%struct.i40iw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
