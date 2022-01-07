; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_lv0104cs.c_lv0104cs_set_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_lv0104cs.c_lv0104cs_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.lv0104cs_private = type { i32, i32 }

@lv0104cs_scales = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lv0104cs_private*, i32, i32)* @lv0104cs_set_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lv0104cs_set_scale(%struct.lv0104cs_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lv0104cs_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lv0104cs_private* %0, %struct.lv0104cs_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %35, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lv0104cs_scales, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lv0104cs_scales, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %35

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lv0104cs_scales, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %25, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %38

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %9

38:                                               ; preds = %33, %9
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lv0104cs_scales, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %40)
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %56

46:                                               ; preds = %38
  %47 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %5, align 8
  %48 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %5, align 8
  %52 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %5, align 8
  %54 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %46, %43
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
