; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sps30.c_sps30_do_meas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sps30.c_sps30_do_meas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sps30_state = type { i64 }

@RESET = common dso_local global i64 0, align 8
@SPS30_START_MEAS = common dso_local global i32 0, align 4
@MEASURING = common dso_local global i64 0, align 8
@SPS30_READ_DATA_READY_FLAG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SPS30_READ_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sps30_state*, i32*, i32)* @sps30_do_meas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sps30_do_meas(%struct.sps30_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sps30_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i32], align 16
  store %struct.sps30_state* %0, %struct.sps30_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 5, i32* %10, align 4
  %12 = load %struct.sps30_state*, %struct.sps30_state** %5, align 8
  %13 = getelementptr inbounds %struct.sps30_state, %struct.sps30_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RESET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.sps30_state*, %struct.sps30_state** %5, align 8
  %19 = load i32, i32* @SPS30_START_MEAS, align 4
  %20 = call i32 @sps30_do_cmd(%struct.sps30_state* %18, i32 %19, i32* null, i32 0)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %89

25:                                               ; preds = %17
  %26 = load i64, i64* @MEASURING, align 8
  %27 = load %struct.sps30_state*, %struct.sps30_state** %5, align 8
  %28 = getelementptr inbounds %struct.sps30_state, %struct.sps30_state* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %3
  br label %30

30:                                               ; preds = %49, %29
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %10, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load %struct.sps30_state*, %struct.sps30_state** %5, align 8
  %36 = load i32, i32* @SPS30_READ_DATA_READY_FLAG, align 4
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %38 = call i32 @sps30_do_cmd(%struct.sps30_state* %35, i32 %36, i32* %37, i32 2)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %89

44:                                               ; preds = %34
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %51

49:                                               ; preds = %44
  %50 = call i32 @msleep_interruptible(i32 300)
  br label %30

51:                                               ; preds = %48, %30
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %89

57:                                               ; preds = %51
  %58 = load %struct.sps30_state*, %struct.sps30_state** %5, align 8
  %59 = load i32, i32* @SPS30_READ_DATA, align 4
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @sps30_do_cmd(%struct.sps30_state* %58, i32 %59, i32* %60, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %89

70:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %85, %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = mul nsw i32 4, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %78
  %80 = call i32 @sps30_float_to_int_clamped(i32* %79)
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %71

88:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %68, %54, %41, %23
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @sps30_do_cmd(%struct.sps30_state*, i32, i32*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @sps30_float_to_int_clamped(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
