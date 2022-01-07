; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-i2c.c_flexcop_i2c_write4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-i2c.c_flexcop_i2c_write4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32 (%struct.flexcop_device*, i32, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32, i8* }

@.str = private unnamed_addr constant [31 x i8] c"write: r100: %08x, r104: %08x\0A\00", align 1
@tw_sm_c_104 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_device*, %struct.TYPE_9__*, i8**)* @flexcop_i2c_write4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_i2c_write4(%struct.flexcop_device* %0, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %1, i8** %2) #0 {
  %4 = alloca %struct.flexcop_device*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %4, align 8
  store i8** %2, i8*** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i8* [ %22, %19 ], [ null, %23 ]
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i8* [ %33, %30 ], [ null, %34 ]
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 3
  %44 = load i8*, i8** %43, align 8
  br label %46

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i8* [ %44, %41 ], [ null, %45 ]
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @deb_i2c(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %53)
  %55 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %56 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %55, i32 0, i32 0
  %57 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_9__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_9__*)** %56, align 8
  %58 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %59 = load i32, i32* @tw_sm_c_104, align 4
  %60 = call i32 %57(%struct.flexcop_device* %58, i32 %59, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
  %61 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %62 = call i32 @flexcop_i2c_operation(%struct.flexcop_device* %61, %struct.TYPE_9__* %1)
  ret i32 %62
}

declare dso_local i32 @deb_i2c(i8*, i64, i64) #1

declare dso_local i32 @flexcop_i2c_operation(%struct.flexcop_device*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
