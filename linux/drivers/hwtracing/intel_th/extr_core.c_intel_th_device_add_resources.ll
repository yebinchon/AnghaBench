; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_device_add_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_core.c_intel_th_device_add_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { i32, %struct.resource* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_th_device*, %struct.resource*, i32)* @intel_th_device_add_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_device_add_resources(%struct.intel_th_device* %0, %struct.resource* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_th_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  store %struct.intel_th_device* %0, %struct.intel_th_device** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.resource*, %struct.resource** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.resource* @kmemdup(%struct.resource* %9, i32 %13, i32 %14)
  store %struct.resource* %15, %struct.resource** %8, align 8
  %16 = load %struct.resource*, %struct.resource** %8, align 8
  %17 = icmp ne %struct.resource* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.resource*, %struct.resource** %8, align 8
  %23 = load %struct.intel_th_device*, %struct.intel_th_device** %5, align 8
  %24 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %23, i32 0, i32 1
  store %struct.resource* %22, %struct.resource** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.intel_th_device*, %struct.intel_th_device** %5, align 8
  %27 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.resource* @kmemdup(%struct.resource*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
