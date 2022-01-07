; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_syncpt = type { i32, %struct.TYPE_2__*, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host1x_syncpt_free(%struct.host1x_syncpt* %0) #0 {
  %2 = alloca %struct.host1x_syncpt*, align 8
  store %struct.host1x_syncpt* %0, %struct.host1x_syncpt** %2, align 8
  %3 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %2, align 8
  %4 = icmp ne %struct.host1x_syncpt* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %33

6:                                                ; preds = %1
  %7 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %2, align 8
  %8 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %2, align 8
  %13 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @host1x_syncpt_base_free(i32* %14)
  %16 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %2, align 8
  %17 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @kfree(i32* %18)
  %20 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %2, align 8
  %21 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %2, align 8
  %23 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %2, align 8
  %25 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %2, align 8
  %27 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %2, align 8
  %29 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  br label %33

33:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @host1x_syncpt_base_free(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
