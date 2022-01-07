; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_temp8_from_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_temp8_from_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm63_data = type { i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm63_data*, i32)* @temp8_from_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp8_from_reg(%struct.lm63_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lm63_data*, align 8
  %5 = alloca i32, align 4
  store %struct.lm63_data* %0, %struct.lm63_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %7 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %12 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @TEMP8_FROM_REG(i64 %17)
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.lm63_data*, %struct.lm63_data** %4, align 8
  %21 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @TEMP8_FROM_REG(i64 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %19, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @TEMP8_FROM_REG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
