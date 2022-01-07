; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_ring_int_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_ring_int_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.sca3000_state = type { i32*, i32 }

@SCA3000_REG_INT_STATUS_HALF = common dso_local global i32 0, align 4
@SCA3000_REG_BUF_COUNT_ADDR = common dso_local global i32 0, align 4
@SCA3000_REG_RING_OUT_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.iio_dev*)* @sca3000_ring_int_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sca3000_ring_int_process(i32 %0, %struct.iio_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.sca3000_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.iio_dev* %1, %struct.iio_dev** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.sca3000_state* @iio_priv(%struct.iio_dev* %9)
  store %struct.sca3000_state* %10, %struct.sca3000_state** %5, align 8
  %11 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %12 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SCA3000_REG_INT_STATUS_HALF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %2
  %19 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %20 = load i32, i32* @SCA3000_REG_BUF_COUNT_ADDR, align 4
  %21 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %19, i32 %20, i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %64

25:                                               ; preds = %18
  %26 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %27 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %32 = load i32, i32* @SCA3000_REG_RING_OUT_ADDR, align 4
  %33 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %34 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %36, 2
  %38 = call i32 @sca3000_read_data(%struct.sca3000_state* %31, i32 %32, i32* %35, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  br label %64

42:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %59, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sdiv i32 %45, 3
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %50 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %51 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %53, 3
  %55 = mul nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = call i32 @iio_push_to_buffers(%struct.iio_dev* %49, i32* %57)
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %43

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62, %2
  br label %64

64:                                               ; preds = %63, %41, %24
  %65 = load %struct.sca3000_state*, %struct.sca3000_state** %5, align 8
  %66 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  ret void
}

declare dso_local %struct.sca3000_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_data_short(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @sca3000_read_data(%struct.sca3000_state*, i32, i32*, i32) #1

declare dso_local i32 @iio_push_to_buffers(%struct.iio_dev*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
