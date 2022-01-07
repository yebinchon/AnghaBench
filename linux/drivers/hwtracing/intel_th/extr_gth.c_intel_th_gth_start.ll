; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_gth_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_gth_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gth_device = type { i64 }
%struct.intel_th_output = type { i64 }

@REG_GTH_SCR = common dso_local global i64 0, align 8
@REG_GTH_SCR2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gth_device*, %struct.intel_th_output*)* @intel_th_gth_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_th_gth_start(%struct.gth_device* %0, %struct.intel_th_output* %1) #0 {
  %3 = alloca %struct.gth_device*, align 8
  %4 = alloca %struct.intel_th_output*, align 8
  %5 = alloca i32, align 4
  store %struct.gth_device* %0, %struct.gth_device** %3, align 8
  store %struct.intel_th_output* %1, %struct.intel_th_output** %4, align 8
  store i32 16515072, i32* %5, align 4
  %6 = load %struct.intel_th_output*, %struct.intel_th_output** %4, align 8
  %7 = getelementptr inbounds %struct.intel_th_output, %struct.intel_th_output* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, 255
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %16 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REG_GTH_SCR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @iowrite32(i32 %14, i64 %19)
  %21 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %22 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REG_GTH_SCR2, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @iowrite32(i32 0, i64 %25)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
