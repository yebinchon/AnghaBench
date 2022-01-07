; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_write_hint_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_write_hint_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { %struct.ppl_conf* }
%struct.ppl_conf = type { i16 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @ppl_write_hint_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppl_write_hint_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.r5conf*, align 8
  %9 = alloca %struct.ppl_conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @PAGE_SIZE, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %75

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @kstrtou16(i8* %19, i32 10, i16* %11)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %75

25:                                               ; preds = %18
  %26 = load %struct.mddev*, %struct.mddev** %5, align 8
  %27 = call i32 @mddev_lock(%struct.mddev* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %75

32:                                               ; preds = %25
  %33 = load %struct.mddev*, %struct.mddev** %5, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 0
  %35 = load %struct.r5conf*, %struct.r5conf** %34, align 8
  store %struct.r5conf* %35, %struct.r5conf** %8, align 8
  %36 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %37 = icmp ne %struct.r5conf* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  br label %63

41:                                               ; preds = %32
  %42 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %43 = call i64 @raid5_has_ppl(%struct.r5conf* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %47 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %46, i32 0, i32 0
  %48 = load %struct.ppl_conf*, %struct.ppl_conf** %47, align 8
  store %struct.ppl_conf* %48, %struct.ppl_conf** %9, align 8
  %49 = load %struct.ppl_conf*, %struct.ppl_conf** %9, align 8
  %50 = icmp ne %struct.ppl_conf* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %58

54:                                               ; preds = %45
  %55 = load i16, i16* %11, align 2
  %56 = load %struct.ppl_conf*, %struct.ppl_conf** %9, align 8
  %57 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %56, i32 0, i32 0
  store i16 %55, i16* %57, align 2
  br label %58

58:                                               ; preds = %54, %51
  br label %62

59:                                               ; preds = %41
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59, %58
  br label %63

63:                                               ; preds = %62, %38
  %64 = load %struct.mddev*, %struct.mddev** %5, align 8
  %65 = call i32 @mddev_unlock(%struct.mddev* %64)
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = sext i32 %66 to i64
  br label %72

70:                                               ; preds = %63
  %71 = load i64, i64* %7, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i64 [ %69, %68 ], [ %71, %70 ]
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %30, %22, %15
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @kstrtou16(i8*, i32, i16*) #1

declare dso_local i32 @mddev_lock(%struct.mddev*) #1

declare dso_local i64 @raid5_has_ppl(%struct.r5conf*) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
