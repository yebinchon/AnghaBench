; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_bt_process_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_bt_process_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_wac*, i8*)* @wacom_intuos_bt_process_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_intuos_bt_process_data(%struct.wacom_wac* %0, i8* %1) #0 {
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca i8*, align 8
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %6 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @memcpy(i32 %7, i8* %8, i32 10)
  %10 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %11 = call i32 @wacom_intuos_irq(%struct.wacom_wac* %10)
  %12 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %13 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @input_sync(i64 %14)
  %16 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %17 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %22 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @input_sync(i64 %23)
  br label %25

25:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @wacom_intuos_irq(%struct.wacom_wac*) #1

declare dso_local i32 @input_sync(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
