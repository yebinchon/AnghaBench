; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_raid0_takeover_raid1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_raid0_takeover_raid1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.r0conf = type opaque

@.str = private unnamed_addr constant [61 x i8] c"md/raid0:%s: (N - 1) mirrors drives must be already faulty!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i32 0, align 4
@UNSUPPORTED_MDDEV_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mddev*)* @raid0_takeover_raid1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @raid0_takeover_raid1(%struct.mddev* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r0conf*, align 8
  %5 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %6 = load %struct.mddev*, %struct.mddev** %3, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sub nsw i32 %8, 1
  %10 = load %struct.mddev*, %struct.mddev** %3, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %9, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.mddev*, %struct.mddev** %3, align 8
  %16 = call i32 @mdname(%struct.mddev* %15)
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i8* @ERR_PTR(i32 %19)
  store i8* %20, i8** %2, align 8
  br label %77

21:                                               ; preds = %1
  store i32 128, i32* %5, align 4
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.mddev*, %struct.mddev** %3, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 1
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %25, %22
  %34 = phi i1 [ false, %22 ], [ %32, %25 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %22

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 %39, 9
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i8* @ERR_PTR(i32 %45)
  store i8* %46, i8** %2, align 8
  br label %77

47:                                               ; preds = %38
  %48 = load %struct.mddev*, %struct.mddev** %3, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 8
  store i64 0, i64* %49, align 8
  %50 = load %struct.mddev*, %struct.mddev** %3, align 8
  %51 = getelementptr inbounds %struct.mddev, %struct.mddev* %50, i32 0, i32 7
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.mddev*, %struct.mddev** %3, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.mddev*, %struct.mddev** %3, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mddev*, %struct.mddev** %3, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 1, %60
  %62 = load %struct.mddev*, %struct.mddev** %3, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.mddev*, %struct.mddev** %3, align 8
  %65 = getelementptr inbounds %struct.mddev, %struct.mddev* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* @MaxSector, align 4
  %67 = load %struct.mddev*, %struct.mddev** %3, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load %struct.mddev*, %struct.mddev** %3, align 8
  %70 = load i32, i32* @UNSUPPORTED_MDDEV_FLAGS, align 4
  %71 = call i32 @mddev_clear_unsupported_flags(%struct.mddev* %69, i32 %70)
  %72 = load %struct.mddev*, %struct.mddev** %3, align 8
  %73 = bitcast %struct.r0conf** %4 to i8**
  %74 = call i32 @create_strip_zones(%struct.mddev* %72, i8** %73)
  %75 = load %struct.r0conf*, %struct.r0conf** %4, align 8
  %76 = bitcast %struct.r0conf* %75 to i8*
  store i8* %76, i8** %2, align 8
  br label %77

77:                                               ; preds = %47, %43, %14
  %78 = load i8*, i8** %2, align 8
  ret i8* %78
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @mddev_clear_unsupported_flags(%struct.mddev*, i32) #1

declare dso_local i32 @create_strip_zones(%struct.mddev*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
