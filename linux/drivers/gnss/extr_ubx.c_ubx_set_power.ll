; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_ubx.c_ubx_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_ubx.c_ubx_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnss_serial = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gnss_serial*, i32)* @ubx_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubx_set_power(%struct.gnss_serial* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gnss_serial*, align 8
  %5 = alloca i32, align 4
  store %struct.gnss_serial* %0, %struct.gnss_serial** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %13 [
    i32 130, label %7
    i32 129, label %10
    i32 128, label %10
  ]

7:                                                ; preds = %2
  %8 = load %struct.gnss_serial*, %struct.gnss_serial** %4, align 8
  %9 = call i32 @ubx_set_active(%struct.gnss_serial* %8)
  store i32 %9, i32* %3, align 4
  br label %16

10:                                               ; preds = %2, %2
  %11 = load %struct.gnss_serial*, %struct.gnss_serial** %4, align 8
  %12 = call i32 @ubx_set_standby(%struct.gnss_serial* %11)
  store i32 %12, i32* %3, align 4
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %10, %7
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @ubx_set_active(%struct.gnss_serial*) #1

declare dso_local i32 @ubx_set_standby(%struct.gnss_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
