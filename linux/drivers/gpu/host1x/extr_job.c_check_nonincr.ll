; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_check_nonincr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_check_nonincr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_firewall = type { i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_firewall*)* @check_nonincr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_nonincr(%struct.host1x_firewall* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_firewall*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.host1x_firewall* %0, %struct.host1x_firewall** %3, align 8
  %6 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %7 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %30, %1
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %9
  %13 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %14 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %42

20:                                               ; preds = %12
  %21 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %22 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %23 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @check_register(%struct.host1x_firewall* %21, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %42

30:                                               ; preds = %20
  %31 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %32 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %36 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load i64, i64* %4, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %4, align 8
  br label %9

41:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %28, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @check_register(%struct.host1x_firewall*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
