; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp_lsb_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp_lsb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_cmd_queue = type { i32, %struct.ccp_device*, i32 }
%struct.ccp_device = type { i64, i32, i32, i32 }

@LSB_SIZE = common dso_local global i32 0, align 4
@MAX_LSB_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_cmd_queue*, i32)* @ccp_lsb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_lsb_alloc(%struct.ccp_cmd_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccp_cmd_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccp_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ccp_cmd_queue* %0, %struct.ccp_cmd_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %9 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %14 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @LSB_SIZE, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @bitmap_find_next_zero_area(i32 %15, i32 %16, i32 0, i32 %17, i32 0)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @LSB_SIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %12
  %24 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %25 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @bitmap_set(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %32 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @LSB_SIZE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = add nsw i32 %30, %35
  store i32 %36, i32* %3, align 4
  br label %87

37:                                               ; preds = %12
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %40 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %39, i32 0, i32 1
  %41 = load %struct.ccp_device*, %struct.ccp_device** %40, align 8
  store %struct.ccp_device* %41, %struct.ccp_device** %6, align 8
  br label %42

42:                                               ; preds = %86, %38
  %43 = load %struct.ccp_device*, %struct.ccp_device** %6, align 8
  %44 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %43, i32 0, i32 2
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.ccp_device*, %struct.ccp_device** %6, align 8
  %47 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MAX_LSB_CNT, align 4
  %50 = load i32, i32* @LSB_SIZE, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @bitmap_find_next_zero_area(i32 %48, i32 %51, i32 0, i32 %52, i32 0)
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MAX_LSB_CNT, align 4
  %57 = load i32, i32* @LSB_SIZE, align 4
  %58 = mul nsw i32 %56, %57
  %59 = icmp sle i32 %55, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %42
  %61 = load %struct.ccp_device*, %struct.ccp_device** %6, align 8
  %62 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @bitmap_set(i32 %63, i32 %64, i32 %65)
  %67 = load %struct.ccp_device*, %struct.ccp_device** %6, align 8
  %68 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %67, i32 0, i32 2
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %87

71:                                               ; preds = %42
  %72 = load %struct.ccp_device*, %struct.ccp_device** %6, align 8
  %73 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.ccp_device*, %struct.ccp_device** %6, align 8
  %75 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %74, i32 0, i32 2
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load %struct.ccp_device*, %struct.ccp_device** %6, align 8
  %78 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ccp_device*, %struct.ccp_device** %6, align 8
  %81 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @wait_event_interruptible(i32 %79, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %87

86:                                               ; preds = %71
  br label %42

87:                                               ; preds = %85, %60, %23
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @bitmap_find_next_zero_area(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @wait_event_interruptible(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
