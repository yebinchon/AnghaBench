; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_takeover_raid1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_takeover_raid1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@STRIPE_SIZE = common dso_local global i32 0, align 4
@ALGORITHM_LEFT_SYMMETRIC = common dso_local global i32 0, align 4
@UNSUPPORTED_MDDEV_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mddev*)* @raid5_takeover_raid1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @raid5_takeover_raid1(%struct.mddev* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %6 = load %struct.mddev*, %struct.mddev** %3, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.mddev*, %struct.mddev** %3, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i8* @ERR_PTR(i32 %17)
  store i8* %18, i8** %2, align 8
  br label %65

19:                                               ; preds = %10
  store i32 128, i32* %4, align 4
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.mddev*, %struct.mddev** %3, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %23, %20
  %32 = phi i1 [ false, %20 ], [ %30, %23 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %20

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = shl i32 %37, 9
  %39 = load i32, i32* @STRIPE_SIZE, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i8* @ERR_PTR(i32 %43)
  store i8* %44, i8** %2, align 8
  br label %65

45:                                               ; preds = %36
  %46 = load %struct.mddev*, %struct.mddev** %3, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 3
  store i32 5, i32* %47, align 4
  %48 = load i32, i32* @ALGORITHM_LEFT_SYMMETRIC, align 4
  %49 = load %struct.mddev*, %struct.mddev** %3, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.mddev*, %struct.mddev** %3, align 8
  %53 = getelementptr inbounds %struct.mddev, %struct.mddev* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mddev*, %struct.mddev** %3, align 8
  %55 = call i8* @setup_conf(%struct.mddev* %54)
  store i8* %55, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @IS_ERR(i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %45
  %60 = load %struct.mddev*, %struct.mddev** %3, align 8
  %61 = load i32, i32* @UNSUPPORTED_MDDEV_FLAGS, align 4
  %62 = call i32 @mddev_clear_unsupported_flags(%struct.mddev* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %45
  %64 = load i8*, i8** %5, align 8
  store i8* %64, i8** %2, align 8
  br label %65

65:                                               ; preds = %63, %41, %15
  %66 = load i8*, i8** %2, align 8
  ret i8* %66
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @setup_conf(%struct.mddev*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @mddev_clear_unsupported_flags(%struct.mddev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
