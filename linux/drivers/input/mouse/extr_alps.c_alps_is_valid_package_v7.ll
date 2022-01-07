; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_is_valid_package_v7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_is_valid_package_v7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_is_valid_package_v7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_is_valid_package_v7(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %4 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %5 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %34 [
    i32 3, label %7
    i32 4, label %16
    i32 6, label %25
  ]

7:                                                ; preds = %1
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 64
  %14 = icmp eq i32 %13, 64
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %18 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 72
  %23 = icmp eq i32 %22, 72
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %27 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 64
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %25, %16, %7
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
