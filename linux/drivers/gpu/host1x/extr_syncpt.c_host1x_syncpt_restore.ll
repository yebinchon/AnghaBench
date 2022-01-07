; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { %struct.host1x_syncpt* }
%struct.host1x_syncpt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host1x_syncpt_restore(%struct.host1x* %0) #0 {
  %2 = alloca %struct.host1x*, align 8
  %3 = alloca %struct.host1x_syncpt*, align 8
  %4 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %2, align 8
  %5 = load %struct.host1x*, %struct.host1x** %2, align 8
  %6 = getelementptr inbounds %struct.host1x, %struct.host1x* %5, i32 0, i32 0
  %7 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %6, align 8
  store %struct.host1x_syncpt* %7, %struct.host1x_syncpt** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.host1x*, %struct.host1x** %2, align 8
  %11 = call i32 @host1x_syncpt_nb_pts(%struct.host1x* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load %struct.host1x*, %struct.host1x** %2, align 8
  %15 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %15, i64 %17
  %19 = call i32 @host1x_hw_syncpt_restore(%struct.host1x* %14, %struct.host1x_syncpt* %18)
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %8

23:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %36, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.host1x*, %struct.host1x** %2, align 8
  %27 = call i32 @host1x_syncpt_nb_bases(%struct.host1x* %26)
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.host1x*, %struct.host1x** %2, align 8
  %31 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %31, i64 %33
  %35 = call i32 @host1x_hw_syncpt_restore_wait_base(%struct.host1x* %30, %struct.host1x_syncpt* %34)
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %24

39:                                               ; preds = %24
  %40 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @host1x_syncpt_nb_pts(%struct.host1x*) #1

declare dso_local i32 @host1x_hw_syncpt_restore(%struct.host1x*, %struct.host1x_syncpt*) #1

declare dso_local i32 @host1x_syncpt_nb_bases(%struct.host1x*) #1

declare dso_local i32 @host1x_hw_syncpt_restore_wait_base(%struct.host1x*, %struct.host1x_syncpt*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
