; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hidraw.c_drop_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hidraw.c_drop_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidraw = type { i64, i32, i64, i64, i32 }

@hidraw_class = common dso_local global i32 0, align 4
@hidraw_major = common dso_local global i32 0, align 4
@hidraw_table = common dso_local global i32** null, align 8
@PM_HINT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidraw*, i32)* @drop_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_ref(%struct.hidraw* %0, i32 %1) #0 {
  %3 = alloca %struct.hidraw*, align 8
  %4 = alloca i32, align 4
  store %struct.hidraw* %0, %struct.hidraw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %9 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %11 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %16 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @hid_hw_close(i32 %17)
  %19 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %20 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %19, i32 0, i32 4
  %21 = call i32 @wake_up_interruptible(i32* %20)
  br label %22

22:                                               ; preds = %14, %7
  %23 = load i32, i32* @hidraw_class, align 4
  %24 = load i32, i32* @hidraw_major, align 4
  %25 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %26 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @MKDEV(i32 %24, i64 %27)
  %29 = call i32 @device_destroy(i32 %23, i32 %28)
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %32 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %30, %22
  %36 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %37 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %35
  %41 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %42 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = load i32**, i32*** @hidraw_table, align 8
  %47 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %48 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32*, i32** %46, i64 %49
  store i32* null, i32** %50, align 8
  %51 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %52 = call i32 @kfree(%struct.hidraw* %51)
  br label %63

53:                                               ; preds = %40
  %54 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %55 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @hid_hw_close(i32 %56)
  %58 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %59 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PM_HINT_NORMAL, align 4
  %62 = call i32 @hid_hw_power(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %53, %45
  br label %64

64:                                               ; preds = %63, %35
  ret void
}

declare dso_local i32 @hid_hw_close(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i32 @kfree(%struct.hidraw*) #1

declare dso_local i32 @hid_hw_power(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
