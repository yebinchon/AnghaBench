; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-rdesc.c_uclogic_rdesc_template_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-rdesc.c_uclogic_rdesc_template_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uclogic_rdesc_template_apply.head = internal constant [1 x i64] [i64 128], align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @uclogic_rdesc_template_apply(i64* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i64* @kmemdup(i64* %13, i64 %14, i32 %15)
  store i64* %16, i64** %10, align 8
  %17 = load i64*, i64** %10, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i64* null, i64** %5, align 8
  br label %59

20:                                               ; preds = %4
  %21 = load i64*, i64** %10, align 8
  store i64* %21, i64** %11, align 8
  br label %22

22:                                               ; preds = %56, %20
  %23 = load i64*, i64** %11, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 8
  %25 = load i64*, i64** %10, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = icmp ult i64* %24, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %22
  %30 = load i64*, i64** %11, align 8
  %31 = call i64 @memcmp(i64* %30, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @uclogic_rdesc_template_apply.head, i64 0, i64 0), i32 8)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  %34 = load i64*, i64** %11, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load i32*, i32** %8, align 8
  %41 = load i64*, i64** %11, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 8
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = load i64*, i64** %11, align 8
  %49 = bitcast i64* %48 to i32*
  %50 = call i32 @put_unaligned(i32 %47, i32* %49)
  %51 = load i64*, i64** %11, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 9
  store i64* %52, i64** %11, align 8
  br label %56

53:                                               ; preds = %33, %29
  %54 = load i64*, i64** %11, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %11, align 8
  br label %56

56:                                               ; preds = %53, %39
  br label %22

57:                                               ; preds = %22
  %58 = load i64*, i64** %10, align 8
  store i64* %58, i64** %5, align 8
  br label %59

59:                                               ; preds = %57, %19
  %60 = load i64*, i64** %5, align 8
  ret i64* %60
}

declare dso_local i64* @kmemdup(i64*, i64, i32) #1

declare dso_local i64 @memcmp(i64*, i64*, i32) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
