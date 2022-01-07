; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_writer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_writer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32 }

@pblk_write_ts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"pblk-writer-t\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"could not allocate writer kthread (%d)\0A\00", align 1
@pblk_write_timer_fn = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*)* @pblk_writer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_writer_init(%struct.pblk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  %5 = load i32, i32* @pblk_write_ts, align 4
  %6 = load %struct.pblk*, %struct.pblk** %3, align 8
  %7 = call i32 @kthread_create(i32 %5, %struct.pblk* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.pblk*, %struct.pblk** %3, align 8
  %9 = getelementptr inbounds %struct.pblk, %struct.pblk* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.pblk*, %struct.pblk** %3, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @IS_ERR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.pblk*, %struct.pblk** %3, align 8
  %17 = getelementptr inbounds %struct.pblk, %struct.pblk* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @PTR_ERR(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @EINTR, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.pblk*, %struct.pblk** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @pblk_err(%struct.pblk* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %15
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %41

30:                                               ; preds = %1
  %31 = load %struct.pblk*, %struct.pblk** %3, align 8
  %32 = getelementptr inbounds %struct.pblk, %struct.pblk* %31, i32 0, i32 0
  %33 = load i32, i32* @pblk_write_timer_fn, align 4
  %34 = call i32 @timer_setup(i32* %32, i32 %33, i32 0)
  %35 = load %struct.pblk*, %struct.pblk** %3, align 8
  %36 = getelementptr inbounds %struct.pblk, %struct.pblk* %35, i32 0, i32 0
  %37 = load i64, i64* @jiffies, align 8
  %38 = call i64 @msecs_to_jiffies(i32 100)
  %39 = add nsw i64 %37, %38
  %40 = call i32 @mod_timer(i32* %36, i64 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %30, %28
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @kthread_create(i32, %struct.pblk*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
