; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiostat/extr_lmp91000.c_lmp91000_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiostat/extr_lmp91000.c_lmp91000_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmp91000_data = type { i32, i32*, i32, i32, i32 }

@LMP91000_REG_MODECN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LMP91000_REG_MODECN_TEMP = common dso_local global i32 0, align 4
@LMP91000_REG_MODECN_3LEAD = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lmp91000_data*, i32, i32*)* @lmp91000_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lmp91000_read(%struct.lmp91000_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lmp91000_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lmp91000_data* %0, %struct.lmp91000_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.lmp91000_data*, %struct.lmp91000_data** %5, align 8
  %11 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @LMP91000_REG_MODECN, align 4
  %14 = call i32 @regmap_read(i32 %12, i32 %13, i32* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %76

20:                                               ; preds = %3
  %21 = load %struct.lmp91000_data*, %struct.lmp91000_data** %5, align 8
  %22 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @LMP91000_REG_MODECN, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @regmap_write(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %76

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @LMP91000_REG_MODECN_TEMP, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @usleep_range(i32 3000, i32 4000)
  br label %42

42:                                               ; preds = %40, %36, %32
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @LMP91000_REG_MODECN_3LEAD, align 4
  %45 = icmp ne i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load %struct.lmp91000_data*, %struct.lmp91000_data** %5, align 8
  %48 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.lmp91000_data*, %struct.lmp91000_data** %5, align 8
  %50 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @iio_trigger_poll_chained(i32 %51)
  %53 = load %struct.lmp91000_data*, %struct.lmp91000_data** %5, align 8
  %54 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %53, i32 0, i32 2
  %55 = load i32, i32* @HZ, align 4
  %56 = call i32 @wait_for_completion_timeout(i32* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.lmp91000_data*, %struct.lmp91000_data** %5, align 8
  %58 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %57, i32 0, i32 2
  %59 = call i32 @reinit_completion(i32* %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %42
  %63 = load i32, i32* @ETIMEDOUT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %76

65:                                               ; preds = %42
  %66 = load %struct.lmp91000_data*, %struct.lmp91000_data** %5, align 8
  %67 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.lmp91000_data*, %struct.lmp91000_data** %5, align 8
  %70 = getelementptr inbounds %struct.lmp91000_data, %struct.lmp91000_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %65, %62, %29, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @iio_trigger_poll_chained(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
