; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_base_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_base_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_dev_info = type { i32 }
%struct.sec_queue = type { i32, i32, %struct.sec_dev_info* }

@.str = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sec_dev_info*, %struct.sec_queue*, i32)* @sec_queue_base_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_queue_base_init(%struct.sec_dev_info* %0, %struct.sec_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.sec_dev_info*, align 8
  %5 = alloca %struct.sec_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.sec_dev_info* %0, %struct.sec_dev_info** %4, align 8
  store %struct.sec_queue* %1, %struct.sec_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %8 = load %struct.sec_queue*, %struct.sec_queue** %5, align 8
  %9 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %8, i32 0, i32 2
  store %struct.sec_dev_info* %7, %struct.sec_dev_info** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.sec_queue*, %struct.sec_queue** %5, align 8
  %12 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.sec_queue*, %struct.sec_queue** %5, align 8
  %14 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %17 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @dev_name(i32 %18)
  %20 = load %struct.sec_queue*, %struct.sec_queue** %5, align 8
  %21 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @snprintf(i32 %15, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %22)
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
