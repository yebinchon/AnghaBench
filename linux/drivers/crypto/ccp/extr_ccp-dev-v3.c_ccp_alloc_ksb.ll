; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_alloc_ksb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_alloc_ksb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_cmd_queue = type { %struct.ccp_device* }
%struct.ccp_device = type { i32, i64, i32, i32, i32, i32 }

@KSB_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_cmd_queue*, i32)* @ccp_alloc_ksb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_alloc_ksb(%struct.ccp_cmd_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccp_cmd_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccp_device*, align 8
  store %struct.ccp_cmd_queue* %0, %struct.ccp_cmd_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %9 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %8, i32 0, i32 0
  %10 = load %struct.ccp_device*, %struct.ccp_device** %9, align 8
  store %struct.ccp_device* %10, %struct.ccp_device** %7, align 8
  br label %11

11:                                               ; preds = %57, %2
  %12 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %13 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %12, i32 0, i32 3
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %16 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %19 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %22 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @bitmap_find_next_zero_area(i32 %17, i32 %20, i32 %23, i32 %24, i32 0)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %29 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %11
  %33 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %34 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @bitmap_set(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %40 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %39, i32 0, i32 3
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %58

42:                                               ; preds = %11
  %43 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %44 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %46 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %45, i32 0, i32 3
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %49 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %52 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @wait_event_interruptible(i32 %50, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %62

57:                                               ; preds = %42
  br label %11

58:                                               ; preds = %32
  %59 = load i32, i32* @KSB_START, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %56
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @bitmap_find_next_zero_area(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @wait_event_interruptible(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
