; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_mgmt_sys.c_set_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_mgmt_sys.c_set_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_mgmt_dev = type { i32, i8** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidma_mgmt_dev*, i32, i8*)* @set_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_priority(%struct.hidma_mgmt_dev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hidma_mgmt_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.hidma_mgmt_dev* %0, %struct.hidma_mgmt_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %5, align 8
  %12 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp uge i32 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %5, align 8
  %20 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %5, align 8
  %28 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  store i8* %26, i8** %32, align 8
  %33 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %5, align 8
  %34 = call i32 @hidma_mgmt_setup(%struct.hidma_mgmt_dev* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %18
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %5, align 8
  %40 = getelementptr inbounds %struct.hidma_mgmt_dev, %struct.hidma_mgmt_dev* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  store i8* %38, i8** %44, align 8
  br label %45

45:                                               ; preds = %37, %18
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %15
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @hidma_mgmt_setup(%struct.hidma_mgmt_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
