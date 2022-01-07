; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_cdma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_cdma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_cdma = type { i32, i32, i32, i32, i32, i32, i32 }

@CDMA_EVENT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host1x_cdma_init(%struct.host1x_cdma* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_cdma*, align 8
  %4 = alloca i32, align 4
  store %struct.host1x_cdma* %0, %struct.host1x_cdma** %3, align 8
  %5 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %6 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %5, i32 0, i32 6
  %7 = call i32 @mutex_init(i32* %6)
  %8 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %9 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %8, i32 0, i32 5
  %10 = call i32 @init_completion(i32* %9)
  %11 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %12 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %11, i32 0, i32 4
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load i32, i32* @CDMA_EVENT_NONE, align 4
  %15 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %16 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %18 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %20 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %22 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %21, i32 0, i32 2
  %23 = call i32 @host1x_pushbuffer_init(i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @host1x_pushbuffer_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
