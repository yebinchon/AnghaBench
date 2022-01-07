; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_get_bt_devaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_get_bt_devaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sony_sc = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sony_sc*)* @sony_get_bt_devaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_get_bt_devaddr(%struct.sony_sc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sony_sc*, align 8
  %4 = alloca i32, align 4
  store %struct.sony_sc* %0, %struct.sony_sc** %3, align 8
  %5 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %6 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @strlen(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 17
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %18 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %23 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 5
  %26 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %27 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %31 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %35 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %39 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load %struct.sony_sc*, %struct.sony_sc** %3, align 8
  %43 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = call i32 @sscanf(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* %25, i32* %29, i32* %33, i32* %37, i32* %41, i32* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 6
  br i1 %48, label %49, label %52

49:                                               ; preds = %16
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %49, %13
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
