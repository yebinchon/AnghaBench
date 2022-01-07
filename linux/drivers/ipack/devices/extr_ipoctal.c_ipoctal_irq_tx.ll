; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_irq_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_irq_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoctal_channel = type { i32, i64, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoctal_channel*)* @ipoctal_irq_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoctal_irq_tx(%struct.ipoctal_channel* %0) #0 {
  %2 = alloca %struct.ipoctal_channel*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  store %struct.ipoctal_channel* %0, %struct.ipoctal_channel** %2, align 8
  %5 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %6 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %5, i32 0, i32 0
  store i32* %6, i32** %4, align 8
  %7 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %8 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %14 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %13, i32 0, i32 2
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %17 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %3, align 1
  %25 = load i8, i8* %3, align 1
  %26 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %27 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %26, i32 0, i32 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i32 @iowrite8(i8 zeroext %25, i32* %30)
  %32 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %33 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = urem i32 %41, %42
  %44 = load i32*, i32** %4, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %46 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %50 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock(i32* %50)
  br label %52

52:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iowrite8(i8 zeroext, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
