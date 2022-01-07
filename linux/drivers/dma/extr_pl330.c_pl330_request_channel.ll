; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_request_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_request_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl330_thread = type { i32, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.pl330_dmac = type { i64, %struct.pl330_thread*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DYING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pl330_thread* (%struct.pl330_dmac*)* @pl330_request_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pl330_thread* @pl330_request_channel(%struct.pl330_dmac* %0) #0 {
  %2 = alloca %struct.pl330_thread*, align 8
  %3 = alloca %struct.pl330_dmac*, align 8
  %4 = alloca %struct.pl330_thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pl330_dmac* %0, %struct.pl330_dmac** %3, align 8
  store %struct.pl330_thread* null, %struct.pl330_thread** %4, align 8
  %7 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %8 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DYING, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.pl330_thread* null, %struct.pl330_thread** %2, align 8
  br label %75

13:                                               ; preds = %1
  %14 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %15 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %70, %13
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %73

22:                                               ; preds = %18
  %23 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %24 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %23, i32 0, i32 1
  %25 = load %struct.pl330_thread*, %struct.pl330_thread** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %25, i64 %27
  store %struct.pl330_thread* %28, %struct.pl330_thread** %4, align 8
  %29 = load %struct.pl330_thread*, %struct.pl330_thread** %4, align 8
  %30 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %22
  %34 = load %struct.pl330_thread*, %struct.pl330_thread** %4, align 8
  %35 = call i32 @_manager_ns(%struct.pl330_thread* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @_chan_ns(%struct.pl330_dmac* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %37, %33
  %43 = load %struct.pl330_thread*, %struct.pl330_thread** %4, align 8
  %44 = call i64 @_alloc_event(%struct.pl330_thread* %43)
  %45 = load %struct.pl330_thread*, %struct.pl330_thread** %4, align 8
  %46 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.pl330_thread*, %struct.pl330_thread** %4, align 8
  %48 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %42
  %52 = load %struct.pl330_thread*, %struct.pl330_thread** %4, align 8
  %53 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.pl330_thread*, %struct.pl330_thread** %4, align 8
  %55 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = load %struct.pl330_thread*, %struct.pl330_thread** %4, align 8
  %57 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  %61 = load %struct.pl330_thread*, %struct.pl330_thread** %4, align 8
  %62 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %61, i32 0, i32 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load %struct.pl330_thread*, %struct.pl330_thread** %4, align 8
  %67 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %66, i32 0, i32 3
  store i32 -1, i32* %67, align 4
  br label %73

68:                                               ; preds = %42
  br label %69

69:                                               ; preds = %68, %37, %22
  store %struct.pl330_thread* null, %struct.pl330_thread** %4, align 8
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %18

73:                                               ; preds = %51, %18
  %74 = load %struct.pl330_thread*, %struct.pl330_thread** %4, align 8
  store %struct.pl330_thread* %74, %struct.pl330_thread** %2, align 8
  br label %75

75:                                               ; preds = %73, %12
  %76 = load %struct.pl330_thread*, %struct.pl330_thread** %2, align 8
  ret %struct.pl330_thread* %76
}

declare dso_local i32 @_manager_ns(%struct.pl330_thread*) #1

declare dso_local i64 @_chan_ns(%struct.pl330_dmac*, i32) #1

declare dso_local i64 @_alloc_event(%struct.pl330_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
