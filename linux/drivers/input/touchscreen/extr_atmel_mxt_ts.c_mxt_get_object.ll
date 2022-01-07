; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_get_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_get_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_object = type { i64 }
%struct.mxt_data = type { %struct.TYPE_4__*, %struct.mxt_object*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Invalid object type T%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mxt_object* (%struct.mxt_data*, i64)* @mxt_get_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mxt_object* @mxt_get_object(%struct.mxt_data* %0, i64 %1) #0 {
  %3 = alloca %struct.mxt_object*, align 8
  %4 = alloca %struct.mxt_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mxt_object*, align 8
  %7 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %11 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %8
  %17 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %18 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %17, i32 0, i32 1
  %19 = load %struct.mxt_object*, %struct.mxt_object** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %19, i64 %21
  store %struct.mxt_object* %22, %struct.mxt_object** %6, align 8
  %23 = load %struct.mxt_object*, %struct.mxt_object** %6, align 8
  %24 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load %struct.mxt_object*, %struct.mxt_object** %6, align 8
  store %struct.mxt_object* %29, %struct.mxt_object** %3, align 8
  br label %41

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %8

34:                                               ; preds = %8
  %35 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %36 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @dev_warn(i32* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %39)
  store %struct.mxt_object* null, %struct.mxt_object** %3, align 8
  br label %41

41:                                               ; preds = %34, %28
  %42 = load %struct.mxt_object*, %struct.mxt_object** %3, align 8
  ret %struct.mxt_object* %42
}

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
