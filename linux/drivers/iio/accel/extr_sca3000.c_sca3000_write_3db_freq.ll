; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_write_3db_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_write_3db_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sca3000_state = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64 }

@SCA3000_REG_MODE_MEAS_MODE_NORMAL = common dso_local global i32 0, align 4
@SCA3000_REG_MODE_MEAS_MODE_OP_1 = common dso_local global i32 0, align 4
@SCA3000_REG_MODE_MEAS_MODE_OP_2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCA3000_REG_MODE_ADDR = common dso_local global i32 0, align 4
@SCA3000_REG_MODE_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sca3000_state*, i32)* @sca3000_write_3db_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_write_3db_freq(%struct.sca3000_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sca3000_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sca3000_state* %0, %struct.sca3000_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %10 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %8, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @SCA3000_REG_MODE_MEAS_MODE_NORMAL, align 4
  store i32 %16, i32* %7, align 4
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %19 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %27 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @SCA3000_REG_MODE_MEAS_MODE_OP_1, align 4
  store i32 %33, i32* %7, align 4
  br label %55

34:                                               ; preds = %24, %17
  %35 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %36 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %44 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @SCA3000_REG_MODE_MEAS_MODE_OP_2, align 4
  store i32 %50, i32* %7, align 4
  br label %54

51:                                               ; preds = %41, %34
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %90

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %32
  br label %56

56:                                               ; preds = %55, %15
  %57 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %58 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %59 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %57, i32 %58, i32 1)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %90

64:                                               ; preds = %56
  %65 = load i32, i32* @SCA3000_REG_MODE_MODE_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %68 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %66
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @SCA3000_REG_MODE_MODE_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %77 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %75
  store i32 %81, i32* %79, align 4
  %82 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %83 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %84 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %85 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @sca3000_write_reg(%struct.sca3000_state* %82, i32 %83, i32 %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %64, %62, %51
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @sca3000_read_data_short(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @sca3000_write_reg(%struct.sca3000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
