; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c___ibdev_printk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c___ibdev_printk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.va_format = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s %s %s: %pV\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s%s: %pV\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s(NULL ib_device): %pV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ib_device*, %struct.va_format*)* @__ibdev_printk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ibdev_printk(i8* %0, %struct.ib_device* %1, %struct.va_format* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.va_format*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store %struct.va_format* %2, %struct.va_format** %6, align 8
  %7 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %8 = icmp ne %struct.ib_device* %7, null
  br i1 %8, label %9, label %41

9:                                                ; preds = %3
  %10 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %11 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %9
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = sub nsw i32 %19, 48
  %21 = trunc i32 %20 to i8
  %22 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %27 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 @dev_driver_string(%struct.TYPE_4__* %29)
  %31 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %32 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i32 @dev_name(%struct.TYPE_4__* %34)
  %36 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %37 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %36, i32 0, i32 0
  %38 = call i32 @dev_name(%struct.TYPE_4__* %37)
  %39 = load %struct.va_format*, %struct.va_format** %6, align 8
  %40 = call i32 @dev_printk_emit(i8 signext %21, %struct.TYPE_4__* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %35, i32 %38, %struct.va_format* %39)
  br label %58

41:                                               ; preds = %9, %3
  %42 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %43 = icmp ne %struct.ib_device* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %47 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %46, i32 0, i32 0
  %48 = call i32 @dev_name(%struct.TYPE_4__* %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.va_format*
  %51 = load %struct.va_format*, %struct.va_format** %6, align 8
  %52 = call i32 (i8*, i8*, %struct.va_format*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %45, %struct.va_format* %50, %struct.va_format* %51)
  br label %57

53:                                               ; preds = %41
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.va_format*, %struct.va_format** %6, align 8
  %56 = call i32 (i8*, i8*, %struct.va_format*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %54, %struct.va_format* %55)
  br label %57

57:                                               ; preds = %53, %44
  br label %58

58:                                               ; preds = %57, %15
  ret void
}

declare dso_local i32 @dev_printk_emit(i8 signext, %struct.TYPE_4__*, i8*, i32, i32, i32, %struct.va_format*) #1

declare dso_local i32 @dev_driver_string(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32 @printk(i8*, i8*, %struct.va_format*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
