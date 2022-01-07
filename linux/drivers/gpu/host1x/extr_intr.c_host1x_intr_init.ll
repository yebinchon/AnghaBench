; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_intr.c_host1x_intr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_intr.c_host1x_intr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { i32, %struct.host1x_syncpt*, i32 }
%struct.host1x_syncpt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"host1x_sp_%02u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host1x_intr_init(%struct.host1x* %0, i32 %1) #0 {
  %3 = alloca %struct.host1x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.host1x_syncpt*, align 8
  store %struct.host1x* %0, %struct.host1x** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.host1x*, %struct.host1x** %3, align 8
  %9 = call i32 @host1x_syncpt_nb_pts(%struct.host1x* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.host1x*, %struct.host1x** %3, align 8
  %11 = getelementptr inbounds %struct.host1x, %struct.host1x* %10, i32 0, i32 2
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.host1x*, %struct.host1x** %3, align 8
  %15 = getelementptr inbounds %struct.host1x, %struct.host1x* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %41, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load %struct.host1x*, %struct.host1x** %3, align 8
  %22 = getelementptr inbounds %struct.host1x, %struct.host1x* %21, i32 0, i32 1
  %23 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %23, i64 %25
  store %struct.host1x_syncpt* %26, %struct.host1x_syncpt** %7, align 8
  %27 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %7, align 8
  %28 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %7, align 8
  %32 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %7, align 8
  %36 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @snprintf(i32 %38, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %20
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %16

44:                                               ; preds = %16
  %45 = load %struct.host1x*, %struct.host1x** %3, align 8
  %46 = call i32 @host1x_intr_start(%struct.host1x* %45)
  ret i32 0
}

declare dso_local i32 @host1x_syncpt_nb_pts(%struct.host1x*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @host1x_intr_start(%struct.host1x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
