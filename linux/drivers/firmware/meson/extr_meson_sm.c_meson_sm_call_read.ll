; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/meson/extr_meson_sm.c_meson_sm_call_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/meson/extr_meson_sm.c_meson_sm_call_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@fw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @meson_sm_call_read(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 1), align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %8
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %77

25:                                               ; preds = %8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 1), align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %77

33:                                               ; preds = %25
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 1), align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %77

42:                                               ; preds = %33
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %17, align 4
  %49 = call i64 @meson_sm_call(i32 %43, i32* %18, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %77

54:                                               ; preds = %42
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ugt i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %77

61:                                               ; preds = %54
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %18, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i8*, i8** %10, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0), align 8
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @memcpy(i8* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %67
  %76 = load i32, i32* %19, align 4
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %75, %58, %51, %39, %30, %22
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local i64 @meson_sm_call(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
