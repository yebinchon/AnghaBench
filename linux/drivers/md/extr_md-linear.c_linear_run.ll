; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-linear.c_linear_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-linear.c_linear_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.linear_conf*, i32 }
%struct.linear_conf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @linear_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linear_run(%struct.mddev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.linear_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %6 = load %struct.mddev*, %struct.mddev** %3, align 8
  %7 = call i64 @md_check_no_bitmap(%struct.mddev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.mddev*, %struct.mddev** %3, align 8
  %14 = load %struct.mddev*, %struct.mddev** %3, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.linear_conf* @linear_conf(%struct.mddev* %13, i32 %16)
  store %struct.linear_conf* %17, %struct.linear_conf** %4, align 8
  %18 = load %struct.linear_conf*, %struct.linear_conf** %4, align 8
  %19 = icmp ne %struct.linear_conf* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %40

21:                                               ; preds = %12
  %22 = load %struct.linear_conf*, %struct.linear_conf** %4, align 8
  %23 = load %struct.mddev*, %struct.mddev** %3, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 0
  store %struct.linear_conf* %22, %struct.linear_conf** %24, align 8
  %25 = load %struct.mddev*, %struct.mddev** %3, align 8
  %26 = load %struct.mddev*, %struct.mddev** %3, align 8
  %27 = call i32 @linear_size(%struct.mddev* %26, i32 0, i32 0)
  %28 = call i32 @md_set_array_sectors(%struct.mddev* %25, i32 %27)
  %29 = load %struct.mddev*, %struct.mddev** %3, align 8
  %30 = call i32 @md_integrity_register(%struct.mddev* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.linear_conf*, %struct.linear_conf** %4, align 8
  %35 = call i32 @kfree(%struct.linear_conf* %34)
  %36 = load %struct.mddev*, %struct.mddev** %3, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 0
  store %struct.linear_conf* null, %struct.linear_conf** %37, align 8
  br label %38

38:                                               ; preds = %33, %21
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %20, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @md_check_no_bitmap(%struct.mddev*) #1

declare dso_local %struct.linear_conf* @linear_conf(%struct.mddev*, i32) #1

declare dso_local i32 @md_set_array_sectors(%struct.mddev*, i32) #1

declare dso_local i32 @linear_size(%struct.mddev*, i32, i32) #1

declare dso_local i32 @md_integrity_register(%struct.mddev*) #1

declare dso_local i32 @kfree(%struct.linear_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
