; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627ehf_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w83627ehf_data*, i32)* @w83627ehf_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83627ehf_read_temp(%struct.w83627ehf_data* %0, i32 %1) #0 {
  %3 = alloca %struct.w83627ehf_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.w83627ehf_data* %0, %struct.w83627ehf_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @is_word_sized(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 8
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

declare dso_local i32 @w83627ehf_read_value(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @is_word_sized(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
