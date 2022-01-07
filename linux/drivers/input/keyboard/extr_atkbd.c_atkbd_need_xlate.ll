; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_need_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_need_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATKBD_RET_EMUL0 = common dso_local global i8 0, align 1
@ATKBD_RET_EMUL1 = common dso_local global i8 0, align 1
@xl_table = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8)* @atkbd_need_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_need_xlate(i64 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load i8, i8* %5, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, i8* @ATKBD_RET_EMUL0, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @ATKBD_RET_EMUL1, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %43

19:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i8*, i8** @xl_table, align 8
  %23 = call i32 @ARRAY_SIZE(i8* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8*, i8** @xl_table, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %27, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @test_bit(i32 %36, i64* %4)
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %20

42:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %35, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
