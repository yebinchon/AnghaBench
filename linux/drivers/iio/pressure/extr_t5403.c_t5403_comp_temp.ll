; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_t5403.c_t5403_comp_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_t5403.c_t5403_comp_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t5403_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t5403_data*, i32*)* @t5403_comp_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t5403_comp_temp(%struct.t5403_data* %0, i32* %1) #0 {
  %3 = alloca %struct.t5403_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.t5403_data* %0, %struct.t5403_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.t5403_data*, %struct.t5403_data** %3, align 8
  %8 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.t5403_data*, %struct.t5403_data** %3, align 8
  %11 = call i32 @t5403_read(%struct.t5403_data* %10, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %29

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %6, align 4
  %17 = call i64 @T5403_C_U16(i32 1)
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sdiv i32 %20, 256
  %22 = call i64 @T5403_C_U16(i32 2)
  %23 = trunc i64 %22 to i32
  %24 = mul nsw i32 %23, 64
  %25 = add nsw i32 %21, %24
  %26 = mul nsw i32 %25, 1000
  %27 = sdiv i32 %26, 65536
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %15, %14
  %30 = load %struct.t5403_data*, %struct.t5403_data** %3, align 8
  %31 = getelementptr inbounds %struct.t5403_data, %struct.t5403_data* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @t5403_read(%struct.t5403_data*, i32) #1

declare dso_local i64 @T5403_C_U16(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
