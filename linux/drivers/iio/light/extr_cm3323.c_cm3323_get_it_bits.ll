; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3323.c_cm3323_get_it_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm3323.c_cm3323_get_it_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm3323_data = type { i32 }

@CM3323_CONF_IT_MASK = common dso_local global i32 0, align 4
@CM3323_CONF_IT_SHIFT = common dso_local global i32 0, align 4
@cm3323_int_time = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm3323_data*)* @cm3323_get_it_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm3323_get_it_bits(%struct.cm3323_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm3323_data*, align 8
  %4 = alloca i32, align 4
  store %struct.cm3323_data* %0, %struct.cm3323_data** %3, align 8
  %5 = load %struct.cm3323_data*, %struct.cm3323_data** %3, align 8
  %6 = getelementptr inbounds %struct.cm3323_data, %struct.cm3323_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CM3323_CONF_IT_MASK, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @CM3323_CONF_IT_SHIFT, align 4
  %11 = ashr i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @cm3323_int_time, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = icmp sge i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
