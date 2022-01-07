; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_next_free_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_next_free_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.es2_ap_dev = type { i32*, %struct.TYPE_2__*, i32, %struct.urb**, i32* }
%struct.TYPE_2__ = type { i32 }

@NUM_CPORT_OUT_URB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"No free CPort OUT urbs, having to dynamically allocate one!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.es2_ap_dev*, i32)* @next_free_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @next_free_urb(%struct.es2_ap_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.es2_ap_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.es2_ap_dev* %0, %struct.es2_ap_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.urb* null, %struct.urb** %6, align 8
  %9 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %10 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %9, i32 0, i32 2
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %50, %2
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @NUM_CPORT_OUT_URB, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %13
  %18 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %19 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %17
  %27 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %28 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %26
  %36 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %37 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 1, i32* %41, align 4
  %42 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %43 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %42, i32 0, i32 3
  %44 = load %struct.urb**, %struct.urb*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.urb*, %struct.urb** %44, i64 %46
  %48 = load %struct.urb*, %struct.urb** %47, align 8
  store %struct.urb* %48, %struct.urb** %6, align 8
  br label %53

49:                                               ; preds = %26, %17
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %13

53:                                               ; preds = %35, %13
  %54 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %55 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %54, i32 0, i32 2
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.urb*, %struct.urb** %6, align 8
  %59 = icmp ne %struct.urb* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load %struct.urb*, %struct.urb** %6, align 8
  store %struct.urb* %61, %struct.urb** %3, align 8
  br label %70

62:                                               ; preds = %53
  %63 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %64 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @dev_dbg(i32* %66, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* %5, align 4
  %69 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %68)
  store %struct.urb* %69, %struct.urb** %3, align 8
  br label %70

70:                                               ; preds = %62, %60
  %71 = load %struct.urb*, %struct.urb** %3, align 8
  ret %struct.urb* %71
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
