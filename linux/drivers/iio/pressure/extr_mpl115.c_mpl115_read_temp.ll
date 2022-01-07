; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl115.c_mpl115_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl115.c_mpl115_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpl115_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@MPL115_TADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpl115_data*)* @mpl115_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpl115_read_temp(%struct.mpl115_data* %0) #0 {
  %2 = alloca %struct.mpl115_data*, align 8
  %3 = alloca i32, align 4
  store %struct.mpl115_data* %0, %struct.mpl115_data** %2, align 8
  %4 = load %struct.mpl115_data*, %struct.mpl115_data** %2, align 8
  %5 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.mpl115_data*, %struct.mpl115_data** %2, align 8
  %8 = call i32 @mpl115_request(%struct.mpl115_data* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.mpl115_data*, %struct.mpl115_data** %2, align 8
  %14 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32, i32)*, i32 (i32, i32)** %16, align 8
  %18 = load %struct.mpl115_data*, %struct.mpl115_data** %2, align 8
  %19 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MPL115_TADC, align 4
  %22 = call i32 %17(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %12, %11
  %24 = load %struct.mpl115_data*, %struct.mpl115_data** %2, align 8
  %25 = getelementptr inbounds %struct.mpl115_data, %struct.mpl115_data* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mpl115_request(%struct.mpl115_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
