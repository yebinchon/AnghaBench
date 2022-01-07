; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp_lsb_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp_lsb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_cmd_queue = type { i32, %struct.ccp_device*, i32 }
%struct.ccp_device = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccp_cmd_queue*, i32, i32)* @ccp_lsb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_lsb_free(%struct.ccp_cmd_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ccp_cmd_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccp_device*, align 8
  store %struct.ccp_cmd_queue* %0, %struct.ccp_cmd_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %45

11:                                               ; preds = %3
  %12 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %13 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %19 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @bitmap_clear(i32 %20, i32 %21, i32 %22)
  br label %45

24:                                               ; preds = %11
  %25 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %4, align 8
  %26 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %25, i32 0, i32 1
  %27 = load %struct.ccp_device*, %struct.ccp_device** %26, align 8
  store %struct.ccp_device* %27, %struct.ccp_device** %7, align 8
  %28 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %29 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %28, i32 0, i32 2
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %32 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @bitmap_clear(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %38 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %40 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %39, i32 0, i32 2
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.ccp_device*, %struct.ccp_device** %7, align 8
  %43 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %42, i32 0, i32 1
  %44 = call i32 @wake_up_interruptible_all(i32* %43)
  br label %45

45:                                               ; preds = %10, %24, %17
  ret void
}

declare dso_local i32 @bitmap_clear(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
