; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_balloon.c_process_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_balloon.c_process_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_dynmem_device = type { i32 }
%struct.dm_info_msg = type { i64 }
%struct.dm_info_header = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Max. dynamic memory size: %llu MB\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Received Unknown type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_dynmem_device*, %struct.dm_info_msg*)* @process_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_info(%struct.hv_dynmem_device* %0, %struct.dm_info_msg* %1) #0 {
  %3 = alloca %struct.hv_dynmem_device*, align 8
  %4 = alloca %struct.dm_info_msg*, align 8
  %5 = alloca %struct.dm_info_header*, align 8
  %6 = alloca i32*, align 8
  store %struct.hv_dynmem_device* %0, %struct.hv_dynmem_device** %3, align 8
  store %struct.dm_info_msg* %1, %struct.dm_info_msg** %4, align 8
  %7 = load %struct.dm_info_msg*, %struct.dm_info_msg** %4, align 8
  %8 = getelementptr inbounds %struct.dm_info_msg, %struct.dm_info_msg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.dm_info_header*
  store %struct.dm_info_header* %10, %struct.dm_info_header** %5, align 8
  %11 = load %struct.dm_info_header*, %struct.dm_info_header** %5, align 8
  %12 = getelementptr inbounds %struct.dm_info_header, %struct.dm_info_header* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %31 [
    i32 128, label %14
  ]

14:                                               ; preds = %2
  %15 = load %struct.dm_info_header*, %struct.dm_info_header** %5, align 8
  %16 = getelementptr inbounds %struct.dm_info_header, %struct.dm_info_header* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.dm_info_header*, %struct.dm_info_header** %5, align 8
  %22 = getelementptr inbounds %struct.dm_info_header, %struct.dm_info_header* %21, i64 1
  %23 = bitcast %struct.dm_info_header* %22 to i32*
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = sub nsw i32 20, %26
  %28 = ashr i32 %25, %27
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %20, %14
  br label %36

31:                                               ; preds = %2
  %32 = load %struct.dm_info_header*, %struct.dm_info_header** %5, align 8
  %33 = getelementptr inbounds %struct.dm_info_header, %struct.dm_info_header* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
