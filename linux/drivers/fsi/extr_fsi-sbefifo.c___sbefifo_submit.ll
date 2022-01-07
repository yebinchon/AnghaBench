; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c___sbefifo_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c___sbefifo_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbefifo = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.iov_iter = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid command len %zd (header: %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbefifo*, i32*, i64, %struct.iov_iter*)* @__sbefifo_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sbefifo_submit(%struct.sbefifo* %0, i32* %1, i64 %2, %struct.iov_iter* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbefifo*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iov_iter*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  store %struct.sbefifo* %0, %struct.sbefifo** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.iov_iter* %3, %struct.iov_iter** %9, align 8
  %12 = load %struct.sbefifo*, %struct.sbefifo** %6, align 8
  %13 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %10, align 8
  %16 = load %struct.sbefifo*, %struct.sbefifo** %6, align 8
  %17 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %78

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %24, 2
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @be32_to_cpu(i32 %29)
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %26, %23
  %34 = load %struct.device*, %struct.device** %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @be32_to_cpu(i32 %38)
  %40 = call i32 @dev_vdbg(%struct.device* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %78

43:                                               ; preds = %26
  %44 = load %struct.sbefifo*, %struct.sbefifo** %6, align 8
  %45 = call i32 @sbefifo_cleanup_hw(%struct.sbefifo* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %78

50:                                               ; preds = %43
  %51 = load %struct.sbefifo*, %struct.sbefifo** %6, align 8
  %52 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.sbefifo*, %struct.sbefifo** %6, align 8
  %57 = call i32 @sbefifo_collect_async_ffdc(%struct.sbefifo* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.sbefifo*, %struct.sbefifo** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %63 = call i32 @sbefifo_do_command(%struct.sbefifo* %59, i32* %60, i64 %61, %struct.iov_iter* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @EOVERFLOW, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %74

72:                                               ; preds = %66, %58
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %5, align 4
  br label %78

74:                                               ; preds = %71
  %75 = load %struct.sbefifo*, %struct.sbefifo** %6, align 8
  %76 = call i32 @sbefifo_request_reset(%struct.sbefifo* %75)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %72, %48, %33, %20
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_vdbg(%struct.device*, i8*, i64, i64) #1

declare dso_local i32 @sbefifo_cleanup_hw(%struct.sbefifo*) #1

declare dso_local i32 @sbefifo_collect_async_ffdc(%struct.sbefifo*) #1

declare dso_local i32 @sbefifo_do_command(%struct.sbefifo*, i32*, i64, %struct.iov_iter*) #1

declare dso_local i32 @sbefifo_request_reset(%struct.sbefifo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
