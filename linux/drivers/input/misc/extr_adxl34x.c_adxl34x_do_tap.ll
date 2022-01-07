; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_do_tap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_do_tap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adxl34x = type { i32 }
%struct.adxl34x_platform_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adxl34x*, %struct.adxl34x_platform_data*, i32)* @adxl34x_do_tap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adxl34x_do_tap(%struct.adxl34x* %0, %struct.adxl34x_platform_data* %1, i32 %2) #0 {
  %4 = alloca %struct.adxl34x*, align 8
  %5 = alloca %struct.adxl34x_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.adxl34x* %0, %struct.adxl34x** %4, align 8
  store %struct.adxl34x_platform_data* %1, %struct.adxl34x_platform_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.adxl34x*, %struct.adxl34x** %4, align 8
  %8 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @adxl34x_send_key_events(%struct.adxl34x* %7, %struct.adxl34x_platform_data* %8, i32 %9, i32 1)
  %11 = load %struct.adxl34x*, %struct.adxl34x** %4, align 8
  %12 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @input_sync(i32 %13)
  %15 = load %struct.adxl34x*, %struct.adxl34x** %4, align 8
  %16 = load %struct.adxl34x_platform_data*, %struct.adxl34x_platform_data** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @adxl34x_send_key_events(%struct.adxl34x* %15, %struct.adxl34x_platform_data* %16, i32 %17, i32 0)
  ret void
}

declare dso_local i32 @adxl34x_send_key_events(%struct.adxl34x*, %struct.adxl34x_platform_data*, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
