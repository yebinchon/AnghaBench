; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_write_basic_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_write_basic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max1363_state = type { i32 (i32, i32*, i32)*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max1363_state*)* @max1363_write_basic_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1363_write_basic_config(%struct.max1363_state* %0) #0 {
  %2 = alloca %struct.max1363_state*, align 8
  %3 = alloca [2 x i32], align 4
  store %struct.max1363_state* %0, %struct.max1363_state** %2, align 8
  %4 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %5 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %6 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = getelementptr inbounds i32, i32* %4, i64 1
  %9 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %10 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %13 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %12, i32 0, i32 0
  %14 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %13, align 8
  %15 = load %struct.max1363_state*, %struct.max1363_state** %2, align 8
  %16 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %19 = call i32 %14(i32 %17, i32* %18, i32 2)
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
