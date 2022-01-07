; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-sbefifo.c_sbefifo_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sbefifo = type { i64, i32 }
%struct.iov_iter = type { i32 }
%struct.kvec = type { i64, i32* }

@ENODEV = common dso_local global i32 0, align 4
@SBEFIFO_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbefifo_submit(%struct.device* %0, i32* %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.sbefifo*, align 8
  %13 = alloca %struct.iov_iter, align 4
  %14 = alloca %struct.kvec, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = icmp ne %struct.device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %82

22:                                               ; preds = %5
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = call %struct.sbefifo* @dev_get_drvdata(%struct.device* %23)
  store %struct.sbefifo* %24, %struct.sbefifo** %12, align 8
  %25 = load %struct.sbefifo*, %struct.sbefifo** %12, align 8
  %26 = icmp ne %struct.sbefifo* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %82

30:                                               ; preds = %22
  %31 = load %struct.sbefifo*, %struct.sbefifo** %12, align 8
  %32 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SBEFIFO_MAGIC, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON_ONCE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %82

42:                                               ; preds = %30
  %43 = load i64*, i64** %11, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48, %45, %42
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %82

54:                                               ; preds = %48
  %55 = load i64*, i64** %11, align 8
  %56 = load i64, i64* %55, align 8
  %57 = mul i64 %56, 4
  store i64 %57, i64* %15, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds %struct.kvec, %struct.kvec* %14, i32 0, i32 1
  store i32* %58, i32** %59, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds %struct.kvec, %struct.kvec* %14, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = load i32, i32* @WRITE, align 4
  %63 = load i64, i64* %15, align 8
  %64 = call i32 @iov_iter_kvec(%struct.iov_iter* %13, i32 %62, %struct.kvec* %14, i32 1, i64 %63)
  %65 = load %struct.sbefifo*, %struct.sbefifo** %12, align 8
  %66 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %65, i32 0, i32 1
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load %struct.sbefifo*, %struct.sbefifo** %12, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @__sbefifo_submit(%struct.sbefifo* %68, i32* %69, i64 %70, %struct.iov_iter* %13)
  store i32 %71, i32* %16, align 4
  %72 = load %struct.sbefifo*, %struct.sbefifo** %12, align 8
  %73 = getelementptr inbounds %struct.sbefifo, %struct.sbefifo* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = call i64 @iov_iter_count(%struct.iov_iter* %13)
  %76 = load i64, i64* %15, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %15, align 8
  %78 = load i64, i64* %15, align 8
  %79 = udiv i64 %78, 4
  %80 = load i64*, i64** %11, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %54, %51, %39, %27, %19
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.sbefifo* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iov_iter_kvec(%struct.iov_iter*, i32, %struct.kvec*, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__sbefifo_submit(%struct.sbefifo*, i32*, i64, %struct.iov_iter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
