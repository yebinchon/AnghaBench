; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_w83781d_read_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_w83781d_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83781d_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w83781d_data*, i32)* @w83781d_read_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83781d_read_value(%struct.w83781d_data* %0, i32 %1) #0 {
  %3 = alloca %struct.w83781d_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.w83781d_data* %0, %struct.w83781d_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %7 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @w83781d_read_value_i2c(%struct.w83781d_data* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %13 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83781d_read_value_i2c(%struct.w83781d_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
