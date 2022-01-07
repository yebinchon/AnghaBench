; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_free_ksb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v3.c_ccp_free_ksb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_cmd_queue = type { %struct.ccp_device* }
%struct.ccp_device = type { i32, i32, i32, i32 }

@KSB_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccp_cmd_queue*, i32, i32)* @ccp_free_ksb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_free_ksb(%struct.ccp_cmd_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ccp_cmd_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccp_device*, align 8
  store %struct.ccp_cmd_queue* %0, %struct.ccp_cmd_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %9 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %8, i32 0, i32 0
  %10 = load %struct.ccp_device*, %struct.ccp_device** %9, align 8
  store %struct.ccp_device* %10, %struct.ccp_device** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %35

14:                                               ; preds = %3
  %15 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %16 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %19 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = load i64, i64* @KSB_START, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @bitmap_clear(i32 %20, i64 %24, i32 %25)
  %27 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %28 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %30 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %29, i32 0, i32 2
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %33 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %32, i32 0, i32 1
  %34 = call i32 @wake_up_interruptible_all(i32* %33)
  br label %35

35:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bitmap_clear(i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
