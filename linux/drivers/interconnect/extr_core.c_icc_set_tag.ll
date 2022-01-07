; ModuleID = '/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_icc_set_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_icc_set_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icc_path = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@icc_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @icc_set_tag(%struct.icc_path* %0, i32 %1) #0 {
  %3 = alloca %struct.icc_path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.icc_path* %0, %struct.icc_path** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.icc_path*, %struct.icc_path** %3, align 8
  %7 = icmp ne %struct.icc_path* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %31

9:                                                ; preds = %2
  %10 = call i32 @mutex_lock(i32* @icc_lock)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %26, %9
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.icc_path*, %struct.icc_path** %3, align 8
  %14 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.icc_path*, %struct.icc_path** %3, align 8
  %20 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %18, i32* %25, align 4
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %11

29:                                               ; preds = %11
  %30 = call i32 @mutex_unlock(i32* @icc_lock)
  br label %31

31:                                               ; preds = %29, %8
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
