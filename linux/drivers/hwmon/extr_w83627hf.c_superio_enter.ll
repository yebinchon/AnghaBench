; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_superio_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_superio_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627hf_sio_data = type { i32 }

@DRVNAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w83627hf_sio_data*)* @superio_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @superio_enter(%struct.w83627hf_sio_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w83627hf_sio_data*, align 8
  store %struct.w83627hf_sio_data* %0, %struct.w83627hf_sio_data** %3, align 8
  %4 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %3, align 8
  %5 = getelementptr inbounds %struct.w83627hf_sio_data, %struct.w83627hf_sio_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @DRVNAME, align 4
  %8 = call i32 @request_muxed_region(i32 %6, i32 2, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %3, align 8
  %15 = getelementptr inbounds %struct.w83627hf_sio_data, %struct.w83627hf_sio_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @outb(i32 135, i32 %16)
  %18 = load %struct.w83627hf_sio_data*, %struct.w83627hf_sio_data** %3, align 8
  %19 = getelementptr inbounds %struct.w83627hf_sio_data, %struct.w83627hf_sio_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @outb(i32 135, i32 %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %13, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @request_muxed_region(i32, i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
