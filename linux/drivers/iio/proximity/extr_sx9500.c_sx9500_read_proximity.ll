; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_read_proximity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_read_proximity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx9500_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iio_chan_spec = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sx9500_data*, %struct.iio_chan_spec*, i32*)* @sx9500_read_proximity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx9500_read_proximity(%struct.sx9500_data* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca %struct.sx9500_data*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.sx9500_data* %0, %struct.sx9500_data** %4, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %9 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %12 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %13 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sx9500_inc_chan_users(%struct.sx9500_data* %11, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %83

19:                                               ; preds = %3
  %20 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %21 = call i32 @sx9500_inc_data_rdy_users(%struct.sx9500_data* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %77

25:                                               ; preds = %19
  %26 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %27 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %30 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %37 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %36, i32 0, i32 0
  %38 = call i32 @wait_for_completion_interruptible(i32* %37)
  store i32 %38, i32* %7, align 4
  br label %42

39:                                               ; preds = %25
  %40 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %41 = call i32 @sx9500_wait_for_sample(%struct.sx9500_data* %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %44 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %74

49:                                               ; preds = %42
  %50 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %51 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @sx9500_read_prox_data(%struct.sx9500_data* %50, %struct.iio_chan_spec* %51, i32* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %74

57:                                               ; preds = %49
  %58 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %59 = call i32 @sx9500_dec_data_rdy_users(%struct.sx9500_data* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %77

63:                                               ; preds = %57
  %64 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %65 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %66 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @sx9500_dec_chan_users(%struct.sx9500_data* %64, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %83

72:                                               ; preds = %63
  %73 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %73, i32* %7, align 4
  br label %83

74:                                               ; preds = %56, %48
  %75 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %76 = call i32 @sx9500_dec_data_rdy_users(%struct.sx9500_data* %75)
  br label %77

77:                                               ; preds = %74, %62, %24
  %78 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %79 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %80 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @sx9500_dec_chan_users(%struct.sx9500_data* %78, i32 %81)
  br label %83

83:                                               ; preds = %77, %72, %71, %18
  %84 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %85 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %88 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %87, i32 0, i32 0
  %89 = call i32 @reinit_completion(i32* %88)
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sx9500_inc_chan_users(%struct.sx9500_data*, i32) #1

declare dso_local i32 @sx9500_inc_data_rdy_users(%struct.sx9500_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @sx9500_wait_for_sample(%struct.sx9500_data*) #1

declare dso_local i32 @sx9500_read_prox_data(%struct.sx9500_data*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @sx9500_dec_data_rdy_users(%struct.sx9500_data*) #1

declare dso_local i32 @sx9500_dec_chan_users(%struct.sx9500_data*, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
