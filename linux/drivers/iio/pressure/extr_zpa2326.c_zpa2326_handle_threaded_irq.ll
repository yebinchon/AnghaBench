; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_handle_threaded_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_handle_threaded_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.zpa2326_private = type { i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@ZPA2326_INT_SOURCE_REG = common dso_local global i32 0, align 4
@ZPA2326_INT_SOURCE_DATA_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unexpected interrupt status %02x\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @zpa2326_handle_threaded_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_handle_threaded_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.zpa2326_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.iio_dev*
  store %struct.iio_dev* %12, %struct.iio_dev** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.zpa2326_private* @iio_priv(%struct.iio_dev* %13)
  store %struct.zpa2326_private* %14, %struct.zpa2326_private** %7, align 8
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %17 = call i64 @iio_buffer_enabled(%struct.iio_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %21 = call i64 @iio_trigger_using_own(%struct.iio_dev* %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %19, %2
  %24 = phi i1 [ false, %2 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load %struct.zpa2326_private*, %struct.zpa2326_private** %7, align 8
  %27 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ZPA2326_INT_SOURCE_REG, align 4
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %8)
  %31 = load %struct.zpa2326_private*, %struct.zpa2326_private** %7, align 8
  %32 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.zpa2326_private*, %struct.zpa2326_private** %7, align 8
  %34 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %23
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %3, align 4
  br label %77

42:                                               ; preds = %37
  br label %72

43:                                               ; preds = %23
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @ZPA2326_INT_SOURCE_DATA_READY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %43
  %49 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @zpa2326_warn(%struct.iio_dev* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @IRQ_NONE, align 4
  store i32 %55, i32* %3, align 4
  br label %77

56:                                               ; preds = %48
  %57 = load i32, i32* @ENODATA, align 4
  %58 = sub nsw i32 0, %57
  %59 = load %struct.zpa2326_private*, %struct.zpa2326_private** %7, align 8
  %60 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %72

61:                                               ; preds = %43
  %62 = load %struct.zpa2326_private*, %struct.zpa2326_private** %7, align 8
  %63 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @iio_trigger_poll_chained(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %3, align 4
  br label %77

70:                                               ; preds = %61
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %70, %56, %42
  %73 = load %struct.zpa2326_private*, %struct.zpa2326_private** %7, align 8
  %74 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %73, i32 0, i32 0
  %75 = call i32 @complete(i32* %74)
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %68, %54, %40
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.zpa2326_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i64 @iio_trigger_using_own(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @zpa2326_warn(%struct.iio_dev*, i8*, i32) #1

declare dso_local i32 @iio_trigger_poll_chained(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
