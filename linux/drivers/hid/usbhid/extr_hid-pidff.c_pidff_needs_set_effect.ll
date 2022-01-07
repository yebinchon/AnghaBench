; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_needs_set_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_needs_set_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_effect = type { i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_effect*, %struct.ff_effect*)* @pidff_needs_set_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidff_needs_set_effect(%struct.ff_effect* %0, %struct.ff_effect* %1) #0 {
  %3 = alloca %struct.ff_effect*, align 8
  %4 = alloca %struct.ff_effect*, align 8
  store %struct.ff_effect* %0, %struct.ff_effect** %3, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %4, align 8
  %5 = load %struct.ff_effect*, %struct.ff_effect** %3, align 8
  %6 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %10 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %8, %12
  br i1 %13, label %52, label %14

14:                                               ; preds = %2
  %15 = load %struct.ff_effect*, %struct.ff_effect** %3, align 8
  %16 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %20 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %52, label %24

24:                                               ; preds = %14
  %25 = load %struct.ff_effect*, %struct.ff_effect** %3, align 8
  %26 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %30 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %28, %32
  br i1 %33, label %52, label %34

34:                                               ; preds = %24
  %35 = load %struct.ff_effect*, %struct.ff_effect** %3, align 8
  %36 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %39 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %34
  %43 = load %struct.ff_effect*, %struct.ff_effect** %3, align 8
  %44 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %48 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %46, %50
  br label %52

52:                                               ; preds = %42, %34, %24, %14, %2
  %53 = phi i1 [ true, %34 ], [ true, %24 ], [ true, %14 ], [ true, %2 ], [ %51, %42 ]
  %54 = zext i1 %53 to i32
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
