; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_check_class.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_check_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_firewall = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i64)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_firewall*, i64)* @check_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_class(%struct.host1x_firewall* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.host1x_firewall*, align 8
  %5 = alloca i64, align 8
  store %struct.host1x_firewall* %0, %struct.host1x_firewall** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.host1x_firewall*, %struct.host1x_firewall** %4, align 8
  %7 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (i64)*, i32 (i64)** %9, align 8
  %11 = icmp ne i32 (i64)* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load %struct.host1x_firewall*, %struct.host1x_firewall** %4, align 8
  %14 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %12
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.host1x_firewall*, %struct.host1x_firewall** %4, align 8
  %24 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i64)*, i32 (i64)** %26, align 8
  %28 = load %struct.host1x_firewall*, %struct.host1x_firewall** %4, align 8
  %29 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 %27(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %21
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %33, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
