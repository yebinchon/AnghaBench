; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_in_whitelist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_in_whitelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@force_nonpriv_white_list = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @in_whitelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_whitelist(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @force_nonpriv_white_list, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @force_nonpriv_white_list, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %6, align 8
  br label %11

11:                                               ; preds = %44, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %16, %17
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ugt i32 %20, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %44

31:                                               ; preds = %15
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %32, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %46

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %28
  br label %11

45:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
