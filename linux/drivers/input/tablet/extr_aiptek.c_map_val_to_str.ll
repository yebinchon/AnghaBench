; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_aiptek.c_map_val_to_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_aiptek.c_map_val_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiptek_map = type { i32, i8* }

@AIPTEK_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.aiptek_map*, i32)* @map_val_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @map_val_to_str(%struct.aiptek_map* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.aiptek_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aiptek_map*, align 8
  store %struct.aiptek_map* %0, %struct.aiptek_map** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.aiptek_map*, %struct.aiptek_map** %4, align 8
  store %struct.aiptek_map* %7, %struct.aiptek_map** %6, align 8
  br label %8

8:                                                ; preds = %25, %2
  %9 = load %struct.aiptek_map*, %struct.aiptek_map** %6, align 8
  %10 = getelementptr inbounds %struct.aiptek_map, %struct.aiptek_map* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @AIPTEK_INVALID_VALUE, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.aiptek_map*, %struct.aiptek_map** %6, align 8
  %17 = getelementptr inbounds %struct.aiptek_map, %struct.aiptek_map* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.aiptek_map*, %struct.aiptek_map** %6, align 8
  %22 = getelementptr inbounds %struct.aiptek_map, %struct.aiptek_map* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %3, align 8
  br label %29

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.aiptek_map*, %struct.aiptek_map** %6, align 8
  %27 = getelementptr inbounds %struct.aiptek_map, %struct.aiptek_map* %26, i32 1
  store %struct.aiptek_map* %27, %struct.aiptek_map** %6, align 8
  br label %8

28:                                               ; preds = %8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
