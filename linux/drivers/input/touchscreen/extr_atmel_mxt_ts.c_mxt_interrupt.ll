; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i64, i32, i32, i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mxt_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mxt_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.mxt_data*
  store %struct.mxt_data* %8, %struct.mxt_data** %6, align 8
  %9 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %10 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %15 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %14, i32 0, i32 2
  %16 = call i32 @complete(i32* %15)
  %17 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %17, i32* %3, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %20 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %18
  %26 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %27 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %32 = call i32 @mxt_process_messages_t44(%struct.mxt_data* %31)
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %25
  %34 = load %struct.mxt_data*, %struct.mxt_data** %6, align 8
  %35 = call i32 @mxt_process_messages(%struct.mxt_data* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %30, %23, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @mxt_process_messages_t44(%struct.mxt_data*) #1

declare dso_local i32 @mxt_process_messages(%struct.mxt_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
