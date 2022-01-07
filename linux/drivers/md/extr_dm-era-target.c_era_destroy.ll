; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_era_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-era-target.c_era_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.era = type { i64, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.era*)* @era_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @era_destroy(%struct.era* %0) #0 {
  %2 = alloca %struct.era*, align 8
  store %struct.era* %0, %struct.era** %2, align 8
  %3 = load %struct.era*, %struct.era** %2, align 8
  %4 = getelementptr inbounds %struct.era, %struct.era* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.era*, %struct.era** %2, align 8
  %9 = getelementptr inbounds %struct.era, %struct.era* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @metadata_close(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.era*, %struct.era** %2, align 8
  %14 = getelementptr inbounds %struct.era, %struct.era* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.era*, %struct.era** %2, align 8
  %19 = getelementptr inbounds %struct.era, %struct.era* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @destroy_workqueue(i64 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.era*, %struct.era** %2, align 8
  %24 = getelementptr inbounds %struct.era, %struct.era* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.era*, %struct.era** %2, align 8
  %29 = getelementptr inbounds %struct.era, %struct.era* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.era*, %struct.era** %2, align 8
  %32 = getelementptr inbounds %struct.era, %struct.era* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dm_put_device(i32 %30, i64 %33)
  br label %35

35:                                               ; preds = %27, %22
  %36 = load %struct.era*, %struct.era** %2, align 8
  %37 = getelementptr inbounds %struct.era, %struct.era* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.era*, %struct.era** %2, align 8
  %42 = getelementptr inbounds %struct.era, %struct.era* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.era*, %struct.era** %2, align 8
  %45 = getelementptr inbounds %struct.era, %struct.era* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dm_put_device(i32 %43, i64 %46)
  br label %48

48:                                               ; preds = %40, %35
  %49 = load %struct.era*, %struct.era** %2, align 8
  %50 = call i32 @kfree(%struct.era* %49)
  ret void
}

declare dso_local i32 @metadata_close(i64) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @dm_put_device(i32, i64) #1

declare dso_local i32 @kfree(%struct.era*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
