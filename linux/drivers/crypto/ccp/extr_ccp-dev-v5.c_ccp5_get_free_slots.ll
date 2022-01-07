; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp5_get_free_slots.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev-v5.c_ccp5_get_free_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_cmd_queue = type { i32, i32, i32 }

@COMMANDS_PER_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_cmd_queue*)* @ccp5_get_free_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp5_get_free_slots(%struct.ccp_cmd_queue* %0) #0 {
  %2 = alloca %struct.ccp_cmd_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ccp_cmd_queue* %0, %struct.ccp_cmd_queue** %2, align 8
  %7 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %2, align 8
  %8 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @low_address(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %2, align 8
  %12 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ioread32(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @COMMANDS_PER_QUEUE, align 4
  %23 = add i32 %21, %22
  %24 = load %struct.ccp_cmd_queue*, %struct.ccp_cmd_queue** %2, align 8
  %25 = getelementptr inbounds %struct.ccp_cmd_queue, %struct.ccp_cmd_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub i32 %23, %26
  %28 = sub i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @COMMANDS_PER_QUEUE, align 4
  %31 = urem i32 %29, %30
  ret i32 %31
}

declare dso_local i32 @low_address(i32) #1

declare dso_local i32 @ioread32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
