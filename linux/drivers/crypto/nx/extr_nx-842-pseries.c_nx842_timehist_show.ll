; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-pseries.c_nx842_timehist_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-842-pseries.c_nx842_timehist_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_attribute = type { i32 }
%struct.device = type { i32 }
%struct.nx842_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@devdata = common dso_local global i32 0, align 4
@dev_attr_comp_times = common dso_local global %struct.device_attribute zeroinitializer, align 4
@dev_attr_decomp_times = common dso_local global %struct.device_attribute zeroinitializer, align 4
@NX842_HIST_SLOTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%u-%uus:\09%lld\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%uus - :\09%lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @nx842_timehist_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx842_timehist_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nx842_devdata*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %15, i32* %11, align 4
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load i32, i32* @devdata, align 4
  %18 = call %struct.nx842_devdata* @rcu_dereference(i32 %17)
  store %struct.nx842_devdata* %18, %struct.nx842_devdata** %9, align 8
  %19 = load %struct.nx842_devdata*, %struct.nx842_devdata** %9, align 8
  %20 = icmp ne %struct.nx842_devdata* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %4, align 4
  br label %105

23:                                               ; preds = %3
  %24 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %25 = icmp eq %struct.device_attribute* %24, @dev_attr_comp_times
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.nx842_devdata*, %struct.nx842_devdata** %9, align 8
  %28 = getelementptr inbounds %struct.nx842_devdata, %struct.nx842_devdata* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %10, align 8
  br label %44

32:                                               ; preds = %23
  %33 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %34 = icmp eq %struct.device_attribute* %33, @dev_attr_decomp_times
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.nx842_devdata*, %struct.nx842_devdata** %9, align 8
  %37 = getelementptr inbounds %struct.nx842_devdata, %struct.nx842_devdata* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %10, align 8
  br label %43

41:                                               ; preds = %32
  %42 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %4, align 4
  br label %105

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %26
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %78, %44
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @NX842_HIST_SLOTS, align 4
  %48 = sub nsw i32 %47, 2
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %45
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* %13, align 4
  %57 = sub nsw i32 %56, 1
  %58 = shl i32 2, %57
  br label %60

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i32 [ %58, %55 ], [ 0, %59 ]
  %62 = load i32, i32* %13, align 4
  %63 = shl i32 2, %62
  %64 = sub nsw i32 %63, 1
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i32 @atomic64_read(i32* %68)
  %70 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %51, i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %8, align 8
  br label %78

78:                                               ; preds = %60
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %45

81:                                               ; preds = %45
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @NX842_HIST_SLOTS, align 4
  %85 = sub nsw i32 %84, 2
  %86 = shl i32 2, %85
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* @NX842_HIST_SLOTS, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = call i32 @atomic64_read(i32* %91)
  %93 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %82, i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i8*, i8** %8, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %8, align 8
  %98 = call i32 (...) @rcu_read_unlock()
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %81, %41, %21
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nx842_devdata* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @atomic64_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
