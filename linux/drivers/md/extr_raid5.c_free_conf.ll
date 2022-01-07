; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_free_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_free_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, %struct.r5conf*, %struct.r5conf*, i32, %struct.r5conf*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*)* @free_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_conf(%struct.r5conf* %0) #0 {
  %2 = alloca %struct.r5conf*, align 8
  %3 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %2, align 8
  %4 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %5 = call i32 @log_exit(%struct.r5conf* %4)
  %6 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %7 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %6, i32 0, i32 6
  %8 = call i32 @unregister_shrinker(i32* %7)
  %9 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %10 = call i32 @free_thread_groups(%struct.r5conf* %9)
  %11 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %12 = call i32 @shrink_stripes(%struct.r5conf* %11)
  %13 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %14 = call i32 @raid5_free_percpu(%struct.r5conf* %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %42, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %18 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %15
  %22 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %23 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %22, i32 0, i32 4
  %24 = load %struct.r5conf*, %struct.r5conf** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %24, i64 %26
  %28 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %21
  %32 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %33 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %32, i32 0, i32 4
  %34 = load %struct.r5conf*, %struct.r5conf** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %34, i64 %36
  %38 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @put_page(i64 %39)
  br label %41

41:                                               ; preds = %31, %21
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %15

45:                                               ; preds = %15
  %46 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %47 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %46, i32 0, i32 4
  %48 = load %struct.r5conf*, %struct.r5conf** %47, align 8
  %49 = call i32 @kfree(%struct.r5conf* %48)
  %50 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %51 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %50, i32 0, i32 3
  %52 = call i32 @bioset_exit(i32* %51)
  %53 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %54 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %53, i32 0, i32 2
  %55 = load %struct.r5conf*, %struct.r5conf** %54, align 8
  %56 = call i32 @kfree(%struct.r5conf* %55)
  %57 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %58 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %57, i32 0, i32 1
  %59 = load %struct.r5conf*, %struct.r5conf** %58, align 8
  %60 = call i32 @kfree(%struct.r5conf* %59)
  %61 = load %struct.r5conf*, %struct.r5conf** %2, align 8
  %62 = call i32 @kfree(%struct.r5conf* %61)
  ret void
}

declare dso_local i32 @log_exit(%struct.r5conf*) #1

declare dso_local i32 @unregister_shrinker(i32*) #1

declare dso_local i32 @free_thread_groups(%struct.r5conf*) #1

declare dso_local i32 @shrink_stripes(%struct.r5conf*) #1

declare dso_local i32 @raid5_free_percpu(%struct.r5conf*) #1

declare dso_local i32 @put_page(i64) #1

declare dso_local i32 @kfree(%struct.r5conf*) #1

declare dso_local i32 @bioset_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
