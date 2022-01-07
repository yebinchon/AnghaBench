; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf04.c_srf04_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf04.c_srf04_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srf04_data = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srf04_data*)* @srf04_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srf04_read(%struct.srf04_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.srf04_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.srf04_data* %0, %struct.srf04_data** %3, align 8
  %9 = load %struct.srf04_data*, %struct.srf04_data** %3, align 8
  %10 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.srf04_data*, %struct.srf04_data** %3, align 8
  %13 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %12, i32 0, i32 4
  %14 = call i32 @reinit_completion(i32* %13)
  %15 = load %struct.srf04_data*, %struct.srf04_data** %3, align 8
  %16 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %15, i32 0, i32 3
  %17 = call i32 @reinit_completion(i32* %16)
  %18 = load %struct.srf04_data*, %struct.srf04_data** %3, align 8
  %19 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @gpiod_set_value(i32 %20, i32 1)
  %22 = load %struct.srf04_data*, %struct.srf04_data** %3, align 8
  %23 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %22, i32 0, i32 6
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @udelay(i32 %26)
  %28 = load %struct.srf04_data*, %struct.srf04_data** %3, align 8
  %29 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @gpiod_set_value(i32 %30, i32 0)
  %32 = load %struct.srf04_data*, %struct.srf04_data** %3, align 8
  %33 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %32, i32 0, i32 4
  %34 = load i32, i32* @HZ, align 4
  %35 = sdiv i32 %34, 50
  %36 = call i32 @wait_for_completion_killable_timeout(i32* %33, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %1
  %40 = load %struct.srf04_data*, %struct.srf04_data** %3, align 8
  %41 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %101

44:                                               ; preds = %1
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.srf04_data*, %struct.srf04_data** %3, align 8
  %49 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* @ETIMEDOUT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %101

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.srf04_data*, %struct.srf04_data** %3, align 8
  %56 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %55, i32 0, i32 3
  %57 = load i32, i32* @HZ, align 4
  %58 = sdiv i32 %57, 20
  %59 = call i32 @wait_for_completion_killable_timeout(i32* %56, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load %struct.srf04_data*, %struct.srf04_data** %3, align 8
  %64 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %101

67:                                               ; preds = %54
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.srf04_data*, %struct.srf04_data** %3, align 8
  %72 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %101

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.srf04_data*, %struct.srf04_data** %3, align 8
  %79 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.srf04_data*, %struct.srf04_data** %3, align 8
  %82 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ktime_sub(i32 %80, i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = load %struct.srf04_data*, %struct.srf04_data** %3, align 8
  %86 = getelementptr inbounds %struct.srf04_data, %struct.srf04_data* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @ktime_to_ns(i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp sgt i32 %90, 40438871
  br i1 %91, label %92, label %95

92:                                               ; preds = %77
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %101

95:                                               ; preds = %77
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = mul nsw i32 %97, 106
  %99 = sdiv i32 %98, 617176
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %95, %92, %70, %62, %47, %39
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_for_completion_killable_timeout(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
