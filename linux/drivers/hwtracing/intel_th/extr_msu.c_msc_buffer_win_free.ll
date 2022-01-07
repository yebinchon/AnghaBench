; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_buffer_win_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msc_buffer_win_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msc = type { i32, %struct.TYPE_2__*, i64, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }
%struct.msc_window = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msc*, %struct.msc_window*)* @msc_buffer_win_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msc_buffer_win_free(%struct.msc* %0, %struct.msc_window* %1) #0 {
  %3 = alloca %struct.msc*, align 8
  %4 = alloca %struct.msc_window*, align 8
  store %struct.msc* %0, %struct.msc** %3, align 8
  store %struct.msc_window* %1, %struct.msc_window** %4, align 8
  %5 = load %struct.msc_window*, %struct.msc_window** %4, align 8
  %6 = getelementptr inbounds %struct.msc_window, %struct.msc_window* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.msc*, %struct.msc** %3, align 8
  %9 = getelementptr inbounds %struct.msc, %struct.msc* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = sub nsw i64 %11, %7
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load %struct.msc_window*, %struct.msc_window** %4, align 8
  %15 = getelementptr inbounds %struct.msc_window, %struct.msc_window* %14, i32 0, i32 1
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.msc*, %struct.msc** %3, align 8
  %18 = getelementptr inbounds %struct.msc, %struct.msc* %17, i32 0, i32 4
  %19 = call i64 @list_empty(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.msc*, %struct.msc** %3, align 8
  %23 = getelementptr inbounds %struct.msc, %struct.msc* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load %struct.msc*, %struct.msc** %3, align 8
  %25 = getelementptr inbounds %struct.msc, %struct.msc* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.msc_window*, %struct.msc_window** %4, align 8
  %28 = call i32 @msc_buffer_set_wb(%struct.msc_window* %27)
  %29 = load %struct.msc*, %struct.msc** %3, align 8
  %30 = getelementptr inbounds %struct.msc, %struct.msc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = load %struct.msc*, %struct.msc** %3, align 8
  %35 = getelementptr inbounds %struct.msc, %struct.msc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (i32, i32)*, i32 (i32, i32)** %37, align 8
  %39 = icmp ne i32 (i32, i32)* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.msc*, %struct.msc** %3, align 8
  %42 = getelementptr inbounds %struct.msc, %struct.msc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %44, align 8
  %46 = load %struct.msc*, %struct.msc** %3, align 8
  %47 = getelementptr inbounds %struct.msc, %struct.msc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.msc_window*, %struct.msc_window** %4, align 8
  %50 = getelementptr inbounds %struct.msc_window, %struct.msc_window* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %45(i32 %48, i32 %51)
  br label %57

53:                                               ; preds = %33, %26
  %54 = load %struct.msc*, %struct.msc** %3, align 8
  %55 = load %struct.msc_window*, %struct.msc_window** %4, align 8
  %56 = call i32 @__msc_buffer_win_free(%struct.msc* %54, %struct.msc_window* %55)
  br label %57

57:                                               ; preds = %53, %40
  %58 = load %struct.msc_window*, %struct.msc_window** %4, align 8
  %59 = call i32 @kfree(%struct.msc_window* %58)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @msc_buffer_set_wb(%struct.msc_window*) #1

declare dso_local i32 @__msc_buffer_win_free(%struct.msc*, %struct.msc_window*) #1

declare dso_local i32 @kfree(%struct.msc_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
