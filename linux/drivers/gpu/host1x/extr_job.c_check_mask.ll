; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_check_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_check_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_firewall = type { i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_firewall*)* @check_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mask(%struct.host1x_firewall* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_firewall*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.host1x_firewall* %0, %struct.host1x_firewall** %3, align 8
  %7 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %8 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %11 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %45, %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %18 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %51

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @check_register(%struct.host1x_firewall* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %51

36:                                               ; preds = %28
  %37 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %38 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.host1x_firewall*, %struct.host1x_firewall** %3, align 8
  %42 = getelementptr inbounds %struct.host1x_firewall, %struct.host1x_firewall* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %36, %24
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %13

50:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %34, %21
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @check_register(%struct.host1x_firewall*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
