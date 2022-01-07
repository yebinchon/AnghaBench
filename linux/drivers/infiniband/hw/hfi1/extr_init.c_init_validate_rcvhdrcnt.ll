; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_init_validate_rcvhdrcnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_init_validate_rcvhdrcnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@HFI1_MIN_HDRQ_EGRBUF_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Receive header queue count too small\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HFI1_MAX_HDRQ_EGRBUF_CNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Receive header queue count cannot be greater than %u\0A\00", align 1
@HDRQ_INCREMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Receive header queue count %d must be divisible by %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i32)* @init_validate_rcvhdrcnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_validate_rcvhdrcnt(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @HFI1_MIN_HDRQ_EGRBUF_CNT, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %11 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @HFI1_MAX_HDRQ_EGRBUF_CNT, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %20 = load i32, i32* @HFI1_MAX_HDRQ_EGRBUF_CNT, align 4
  %21 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %19, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @HDRQ_INCREMENT, align 4
  %27 = srem i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @HDRQ_INCREMENT, align 4
  %33 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %30, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %29, %18, %9
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
