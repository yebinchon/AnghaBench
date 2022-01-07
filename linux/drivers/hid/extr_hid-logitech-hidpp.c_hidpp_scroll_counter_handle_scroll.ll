; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_scroll_counter_handle_scroll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_scroll_counter_handle_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.hidpp_scroll_counter = type { i32, i32, i64, i32 }

@REL_WHEEL_HI_RES = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.hidpp_scroll_counter*, i32)* @hidpp_scroll_counter_handle_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpp_scroll_counter_handle_scroll(%struct.input_dev* %0, %struct.hidpp_scroll_counter* %1, i32 %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.hidpp_scroll_counter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.hidpp_scroll_counter* %1, %struct.hidpp_scroll_counter** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 %12, 120
  %14 = load %struct.hidpp_scroll_counter*, %struct.hidpp_scroll_counter** %5, align 8
  %15 = getelementptr inbounds %struct.hidpp_scroll_counter, %struct.hidpp_scroll_counter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %19 = load i32, i32* @REL_WHEEL_HI_RES, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @input_report_rel(%struct.input_dev* %18, i32 %19, i32 %20)
  %22 = load %struct.hidpp_scroll_counter*, %struct.hidpp_scroll_counter** %5, align 8
  %23 = getelementptr inbounds %struct.hidpp_scroll_counter, %struct.hidpp_scroll_counter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 -1
  store i32 %28, i32* %9, align 4
  %29 = call i64 (...) @sched_clock()
  store i64 %29, i64* %10, align 8
  %30 = load %struct.hidpp_scroll_counter*, %struct.hidpp_scroll_counter** %5, align 8
  %31 = getelementptr inbounds %struct.hidpp_scroll_counter, %struct.hidpp_scroll_counter* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.hidpp_scroll_counter*, %struct.hidpp_scroll_counter** %5, align 8
  %35 = getelementptr inbounds %struct.hidpp_scroll_counter, %struct.hidpp_scroll_counter* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = sub i64 %36, %37
  %39 = icmp ugt i64 %38, 1000000000
  br i1 %39, label %46, label %40

40:                                               ; preds = %3
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.hidpp_scroll_counter*, %struct.hidpp_scroll_counter** %5, align 8
  %43 = getelementptr inbounds %struct.hidpp_scroll_counter, %struct.hidpp_scroll_counter* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %3
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %40
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.hidpp_scroll_counter*, %struct.hidpp_scroll_counter** %5, align 8
  %50 = getelementptr inbounds %struct.hidpp_scroll_counter, %struct.hidpp_scroll_counter* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @abs(i32 %54) #3
  %56 = icmp sge i32 %55, 60
  br i1 %56, label %57, label %76

57:                                               ; preds = %47
  %58 = load i32, i32* %8, align 4
  %59 = sdiv i32 %58, 120
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 -1
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %69 = load i32, i32* @REL_WHEEL, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @input_report_rel(%struct.input_dev* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 %72, 120
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %67, %47
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.hidpp_scroll_counter*, %struct.hidpp_scroll_counter** %5, align 8
  %79 = getelementptr inbounds %struct.hidpp_scroll_counter, %struct.hidpp_scroll_counter* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  ret void
}

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i64 @sched_clock(...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
