; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_base_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_base_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_syncpt_base = type { i32 }
%struct.host1x = type { %struct.TYPE_2__*, %struct.host1x_syncpt_base* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.host1x_syncpt_base* (%struct.host1x*)* @host1x_syncpt_base_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.host1x_syncpt_base* @host1x_syncpt_base_request(%struct.host1x* %0) #0 {
  %2 = alloca %struct.host1x_syncpt_base*, align 8
  %3 = alloca %struct.host1x*, align 8
  %4 = alloca %struct.host1x_syncpt_base*, align 8
  %5 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %3, align 8
  %6 = load %struct.host1x*, %struct.host1x** %3, align 8
  %7 = getelementptr inbounds %struct.host1x, %struct.host1x* %6, i32 0, i32 1
  %8 = load %struct.host1x_syncpt_base*, %struct.host1x_syncpt_base** %7, align 8
  store %struct.host1x_syncpt_base* %8, %struct.host1x_syncpt_base** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.host1x*, %struct.host1x** %3, align 8
  %12 = getelementptr inbounds %struct.host1x, %struct.host1x* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %10, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %9
  %18 = load %struct.host1x_syncpt_base*, %struct.host1x_syncpt_base** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.host1x_syncpt_base, %struct.host1x_syncpt_base* %18, i64 %20
  %22 = getelementptr inbounds %struct.host1x_syncpt_base, %struct.host1x_syncpt_base* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %30

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %9

30:                                               ; preds = %25, %9
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.host1x*, %struct.host1x** %3, align 8
  %33 = getelementptr inbounds %struct.host1x, %struct.host1x* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp uge i32 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store %struct.host1x_syncpt_base* null, %struct.host1x_syncpt_base** %2, align 8
  br label %49

39:                                               ; preds = %30
  %40 = load %struct.host1x_syncpt_base*, %struct.host1x_syncpt_base** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.host1x_syncpt_base, %struct.host1x_syncpt_base* %40, i64 %42
  %44 = getelementptr inbounds %struct.host1x_syncpt_base, %struct.host1x_syncpt_base* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.host1x_syncpt_base*, %struct.host1x_syncpt_base** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.host1x_syncpt_base, %struct.host1x_syncpt_base* %45, i64 %47
  store %struct.host1x_syncpt_base* %48, %struct.host1x_syncpt_base** %2, align 8
  br label %49

49:                                               ; preds = %39, %38
  %50 = load %struct.host1x_syncpt_base*, %struct.host1x_syncpt_base** %2, align 8
  ret %struct.host1x_syncpt_base* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
