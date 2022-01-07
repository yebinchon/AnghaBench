; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_cbr_scan3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_cbr_scan3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@CBR_PATNUM = common dso_local global i64 0, align 8
@pattern = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_private*)* @cbr_scan3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbr_scan3(%struct.ast_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ast_private* %0, %struct.ast_private** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @CBR_PATNUM, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %12 = load i32*, i32** @pattern, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ast_moutdwm(%struct.ast_private* %11, i32 510525564, i32 %15)
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %26, %10
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %18, 2
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %22 = call i64 @cbr_test3(%struct.ast_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %29

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %17

29:                                               ; preds = %24, %17
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %38

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %6

37:                                               ; preds = %6
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i64 @cbr_test3(%struct.ast_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
