; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_bcast.c_lima_bcast_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_bcast.c_lima_bcast_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@lima_ip_pp0 = common dso_local global i32 0, align 4
@lima_ip_pp7 = common dso_local global i32 0, align 4
@LIMA_BCAST_BROADCAST_MASK = common dso_local global i32 0, align 4
@LIMA_BCAST_INTERRUPT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_bcast_init(%struct.lima_ip* %0) #0 {
  %2 = alloca %struct.lima_ip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lima_ip* %0, %struct.lima_ip** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @lima_ip_pp0, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @lima_ip_pp7, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load %struct.lima_ip*, %struct.lima_ip** %2, align 8
  %12 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %10
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @lima_ip_pp0, align 4
  %25 = sub nsw i32 %23, %24
  %26 = shl i32 1, %25
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %22, %10
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %6

33:                                               ; preds = %6
  %34 = load i32, i32* @LIMA_BCAST_BROADCAST_MASK, align 4
  %35 = load i32, i32* %4, align 4
  %36 = shl i32 %35, 16
  %37 = call i32 @bcast_write(i32 %34, i32 %36)
  %38 = load i32, i32* @LIMA_BCAST_INTERRUPT_MASK, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @bcast_write(i32 %38, i32 %39)
  ret i32 0
}

declare dso_local i32 @bcast_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
