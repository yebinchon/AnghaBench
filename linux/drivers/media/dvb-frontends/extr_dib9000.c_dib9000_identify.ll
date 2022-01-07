; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"wrong Vendor ID (0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"wrong Device ID (0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"this driver does not work with DiB7000PC\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"found DiB7000MA/PA/MB/PB\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"found DiB7000HC\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"found DiB7000MC\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"found DiB9000A\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"found DiB9000H\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"found DiB9000M\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device*)* @dib9000_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_identify(%struct.i2c_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_device*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_device* %0, %struct.i2c_device** %3, align 8
  %5 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %6 = call i32 @dib9000_i2c_read16(%struct.i2c_device* %5, i32 896)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 435
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 0, i32* %2, align 4
  br label %60

12:                                               ; preds = %1
  %13 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %14 = call i32 @dib9000_i2c_read16(%struct.i2c_device* %13, i32 897)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 16384
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 16385
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 16386
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 16387
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 16388
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 16389
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 0, i32* %2, align 4
  br label %60

35:                                               ; preds = %29, %26, %23, %20, %17, %12
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 16384
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.i2c_device*, %struct.i2c_device** %3, align 8
  %40 = call i32 @dib9000_i2c_read16(%struct.i2c_device* %39, i32 769)
  %41 = icmp eq i32 %40, 16384
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %60

44:                                               ; preds = %38, %35
  %45 = load i32, i32* %4, align 4
  switch i32 %45, label %58 [
    i32 16384, label %46
    i32 16385, label %48
    i32 16386, label %50
    i32 16387, label %52
    i32 16388, label %54
    i32 16389, label %56
  ]

46:                                               ; preds = %44
  %47 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %58

48:                                               ; preds = %44
  %49 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %58

50:                                               ; preds = %44
  %51 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %58

52:                                               ; preds = %44
  %53 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %58

54:                                               ; preds = %44
  %55 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %58

56:                                               ; preds = %44
  %57 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %58

58:                                               ; preds = %44, %56, %54, %52, %50, %48, %46
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %42, %32, %9
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @dib9000_i2c_read16(%struct.i2c_device*, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
