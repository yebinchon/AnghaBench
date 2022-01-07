; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lut_temp_from_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lut_temp_from_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm63_data = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm63_data*, i32)* @lut_temp_from_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lut_temp_from_reg(%struct.lm63_data* %0, i32 %1) #0 {
  %3 = alloca %struct.lm63_data*, align 8
  %4 = alloca i32, align 4
  store %struct.lm63_data* %0, %struct.lm63_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %6 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %13 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 500, i32 1000
  %18 = mul nsw i32 %11, %17
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
