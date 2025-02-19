; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_dev_info = type { i32 }
%struct.sec_queue = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Queue map failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_dev_info*, %struct.sec_queue*, i32)* @sec_queue_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_queue_config(%struct.sec_dev_info* %0, %struct.sec_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sec_dev_info*, align 8
  %6 = alloca %struct.sec_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sec_dev_info* %0, %struct.sec_dev_info** %5, align 8
  store %struct.sec_queue* %1, %struct.sec_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sec_dev_info*, %struct.sec_dev_info** %5, align 8
  %10 = load %struct.sec_queue*, %struct.sec_queue** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @sec_queue_base_init(%struct.sec_dev_info* %9, %struct.sec_queue* %10, i32 %11)
  %13 = load %struct.sec_queue*, %struct.sec_queue** %6, align 8
  %14 = call i32 @sec_queue_res_cfg(%struct.sec_queue* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %36

19:                                               ; preds = %3
  %20 = load %struct.sec_queue*, %struct.sec_queue** %6, align 8
  %21 = call i32 @sec_queue_map_io(%struct.sec_queue* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.sec_dev_info*, %struct.sec_dev_info** %5, align 8
  %26 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.sec_queue*, %struct.sec_queue** %6, align 8
  %31 = call i32 @sec_queue_free_ring_pages(%struct.sec_queue* %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %19
  %34 = load %struct.sec_queue*, %struct.sec_queue** %6, align 8
  %35 = call i32 @sec_queue_hw_init(%struct.sec_queue* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %24, %17
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @sec_queue_base_init(%struct.sec_dev_info*, %struct.sec_queue*, i32) #1

declare dso_local i32 @sec_queue_res_cfg(%struct.sec_queue*) #1

declare dso_local i32 @sec_queue_map_io(%struct.sec_queue*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @sec_queue_free_ring_pages(%struct.sec_queue*) #1

declare dso_local i32 @sec_queue_hw_init(%struct.sec_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
