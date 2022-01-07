; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_zopt2201.c_zopt2201_write_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_zopt2201.c_zopt2201_write_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.zopt2201_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@zopt2201_resolution = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zopt2201_data*, i32, i32)* @zopt2201_write_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zopt2201_write_resolution(%struct.zopt2201_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zopt2201_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.zopt2201_data* %0, %struct.zopt2201_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %48

15:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %42, %15
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @zopt2201_resolution, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @zopt2201_resolution, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %22, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %21
  %31 = load %struct.zopt2201_data*, %struct.zopt2201_data** %5, align 8
  %32 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.zopt2201_data*, %struct.zopt2201_data** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @zopt2201_set_resolution(%struct.zopt2201_data* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.zopt2201_data*, %struct.zopt2201_data** %5, align 8
  %38 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %48

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %16

45:                                               ; preds = %16
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %30, %12
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @zopt2201_set_resolution(%struct.zopt2201_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
