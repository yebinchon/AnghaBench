; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_handle_scroll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_handle_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_usage = type { i32, i32, i32 }
%struct.input_dev = type { i32 }

@REL_WHEEL_HI_RES = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_usage*, %struct.input_dev*, i32)* @hidinput_handle_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidinput_handle_scroll(%struct.hid_usage* %0, %struct.input_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.hid_usage*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hid_usage* %0, %struct.hid_usage** %4, align 8
  store %struct.input_dev* %1, %struct.input_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %61

13:                                               ; preds = %3
  %14 = load %struct.hid_usage*, %struct.hid_usage** %4, align 8
  %15 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @REL_WHEEL_HI_RES, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @REL_WHEEL, align 4
  store i32 %20, i32* %7, align 4
  br label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @REL_HWHEEL, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, 120
  %26 = load %struct.hid_usage*, %struct.hid_usage** %4, align 8
  %27 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %25, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.hid_usage*, %struct.hid_usage** %4, align 8
  %32 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.hid_usage*, %struct.hid_usage** %4, align 8
  %36 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 120
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %23
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 %42, 120
  %44 = load %struct.hid_usage*, %struct.hid_usage** %4, align 8
  %45 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %41, %23
  %49 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %50 = load i32, i32* @EV_REL, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @input_event(%struct.input_dev* %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %55 = load i32, i32* @EV_REL, align 4
  %56 = load %struct.hid_usage*, %struct.hid_usage** %4, align 8
  %57 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @input_event(%struct.input_dev* %54, i32 %55, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %48, %12
  ret void
}

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
