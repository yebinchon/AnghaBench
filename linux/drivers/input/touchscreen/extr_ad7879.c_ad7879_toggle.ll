; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7879.c_ad7879_toggle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7879.c_ad7879_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7879 = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad7879*, i32)* @ad7879_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad7879_toggle(%struct.ad7879* %0, i32 %1) #0 {
  %3 = alloca %struct.ad7879*, align 8
  %4 = alloca i32, align 4
  store %struct.ad7879* %0, %struct.ad7879** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %6 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %11 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %43, label %14

14:                                               ; preds = %2
  %15 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %16 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %26 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %31 = call i32 @__ad7879_enable(%struct.ad7879* %30)
  br label %32

32:                                               ; preds = %29, %24
  br label %42

33:                                               ; preds = %21
  %34 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %35 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %40 = call i32 @__ad7879_disable(%struct.ad7879* %39)
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %41, %32
  br label %43

43:                                               ; preds = %42, %14, %2
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %46 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ad7879*, %struct.ad7879** %3, align 8
  %48 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__ad7879_enable(%struct.ad7879*) #1

declare dso_local i32 @__ad7879_disable(%struct.ad7879*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
