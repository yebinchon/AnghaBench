; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_lib.c_nitrox_free_pktin_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_lib.c_nitrox_free_pktin_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32, %struct.nitrox_cmdq* }
%struct.nitrox_cmdq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nitrox_device*)* @nitrox_free_pktin_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nitrox_free_pktin_queues(%struct.nitrox_device* %0) #0 {
  %2 = alloca %struct.nitrox_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nitrox_cmdq*, align 8
  store %struct.nitrox_device* %0, %struct.nitrox_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %8 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %5
  %12 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %13 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %12, i32 0, i32 1
  %14 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.nitrox_cmdq, %struct.nitrox_cmdq* %14, i64 %16
  store %struct.nitrox_cmdq* %17, %struct.nitrox_cmdq** %4, align 8
  %18 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %4, align 8
  %19 = call i32 @nitrox_cmdq_cleanup(%struct.nitrox_cmdq* %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5

23:                                               ; preds = %5
  %24 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %25 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %24, i32 0, i32 1
  %26 = load %struct.nitrox_cmdq*, %struct.nitrox_cmdq** %25, align 8
  %27 = call i32 @kfree(%struct.nitrox_cmdq* %26)
  %28 = load %struct.nitrox_device*, %struct.nitrox_device** %2, align 8
  %29 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %28, i32 0, i32 1
  store %struct.nitrox_cmdq* null, %struct.nitrox_cmdq** %29, align 8
  ret void
}

declare dso_local i32 @nitrox_cmdq_cleanup(%struct.nitrox_cmdq*) #1

declare dso_local i32 @kfree(%struct.nitrox_cmdq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
