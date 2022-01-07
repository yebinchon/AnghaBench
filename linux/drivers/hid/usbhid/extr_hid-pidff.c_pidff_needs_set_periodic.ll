; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_needs_set_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_needs_set_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_effect = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_effect*, %struct.ff_effect*)* @pidff_needs_set_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidff_needs_set_periodic(%struct.ff_effect* %0, %struct.ff_effect* %1) #0 {
  %3 = alloca %struct.ff_effect*, align 8
  %4 = alloca %struct.ff_effect*, align 8
  store %struct.ff_effect* %0, %struct.ff_effect** %3, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %4, align 8
  %5 = load %struct.ff_effect*, %struct.ff_effect** %3, align 8
  %6 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %11 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %9, %14
  br i1 %15, label %52, label %16

16:                                               ; preds = %2
  %17 = load %struct.ff_effect*, %struct.ff_effect** %3, align 8
  %18 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %23 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %21, %26
  br i1 %27, label %52, label %28

28:                                               ; preds = %16
  %29 = load %struct.ff_effect*, %struct.ff_effect** %3, align 8
  %30 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %35 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %28
  %41 = load %struct.ff_effect*, %struct.ff_effect** %3, align 8
  %42 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %47 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %45, %50
  br label %52

52:                                               ; preds = %40, %28, %16, %2
  %53 = phi i1 [ true, %28 ], [ true, %16 ], [ true, %2 ], [ %51, %40 ]
  %54 = zext i1 %53 to i32
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
