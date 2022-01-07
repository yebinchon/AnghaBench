; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_get_report_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_get_report_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_report = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_report*)* @i2c_hid_get_report_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_hid_get_report_length(%struct.hid_report* %0) #0 {
  %2 = alloca %struct.hid_report*, align 8
  store %struct.hid_report* %0, %struct.hid_report** %2, align 8
  %3 = load %struct.hid_report*, %struct.hid_report** %2, align 8
  %4 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = sub nsw i32 %5, 1
  %7 = ashr i32 %6, 3
  %8 = add nsw i32 %7, 1
  %9 = load %struct.hid_report*, %struct.hid_report** %2, align 8
  %10 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load %struct.hid_report*, %struct.hid_report** %2, align 8
  %15 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %8, %19
  %21 = add nsw i32 %20, 2
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
