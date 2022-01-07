; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_set_chlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_set_chlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si1133_data = type { i64 }

@SI1133_PARAM_REG_CHAN_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si1133_data*, i64)* @si1133_set_chlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1133_set_chlist(%struct.si1133_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.si1133_data*, align 8
  %5 = alloca i64, align 8
  store %struct.si1133_data* %0, %struct.si1133_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.si1133_data*, %struct.si1133_data** %4, align 8
  %7 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.si1133_data*, %struct.si1133_data** %4, align 8
  %15 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.si1133_data*, %struct.si1133_data** %4, align 8
  %17 = load i32, i32* @SI1133_PARAM_REG_CHAN_LIST, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @si1133_param_set(%struct.si1133_data* %16, i32 %17, i64 %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %12, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @si1133_param_set(%struct.si1133_data*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
