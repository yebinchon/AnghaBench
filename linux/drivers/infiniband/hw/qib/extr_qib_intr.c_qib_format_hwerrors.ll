; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_intr.c_qib_format_hwerrors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_intr.c_qib_format_hwerrors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_hwerror_msgs = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_format_hwerrors(i32 %0, %struct.qib_hwerror_msgs* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_hwerror_msgs*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.qib_hwerror_msgs* %1, %struct.qib_hwerror_msgs** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %38, %5
  %13 = load i32, i32* %11, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.qib_hwerror_msgs*, %struct.qib_hwerror_msgs** %7, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.qib_hwerror_msgs, %struct.qib_hwerror_msgs* %19, i64 %21
  %23 = getelementptr inbounds %struct.qib_hwerror_msgs, %struct.qib_hwerror_msgs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %18, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.qib_hwerror_msgs*, %struct.qib_hwerror_msgs** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.qib_hwerror_msgs, %struct.qib_hwerror_msgs* %30, i64 %32
  %34 = getelementptr inbounds %struct.qib_hwerror_msgs, %struct.qib_hwerror_msgs* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @qib_format_hwmsg(i8* %28, i64 %29, i32 %35)
  br label %37

37:                                               ; preds = %27, %17
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %12

41:                                               ; preds = %12
  ret void
}

declare dso_local i32 @qib_format_hwmsg(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
