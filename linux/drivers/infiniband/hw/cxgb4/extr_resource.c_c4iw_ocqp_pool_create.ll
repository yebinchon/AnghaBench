; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_ocqp_pool_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_ocqp_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@MIN_OCQP_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to add OCQP chunk (%x/%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to add all OCQP chunks (%x/%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"added OCQP chunk (%x/%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_ocqp_pool_create(%struct.c4iw_rdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c4iw_rdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %3, align 8
  %7 = load i32, i32* @MIN_OCQP_SHIFT, align 4
  %8 = call i32 @gen_pool_create(i32 %7, i32 -1)
  %9 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %10 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %12 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %80

18:                                               ; preds = %1
  %19 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %20 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %27 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %33, %34
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %78, %18
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %79

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sub i32 %41, %42
  %44 = add i32 %43, 1
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @min(i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %48 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @gen_pool_add(i32 %49, i32 %50, i32 %51, i32 -1)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %40
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @MIN_OCQP_SHIFT, align 4
  %60 = shl i32 1024, %59
  %61 = icmp ule i32 %58, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sub i32 %64, %65
  %67 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66)
  store i32 0, i32* %2, align 4
  br label %80

68:                                               ; preds = %54
  %69 = load i32, i32* %5, align 4
  %70 = lshr i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %78

71:                                               ; preds = %40
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %4, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %71, %68
  br label %36

79:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %62, %15
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @gen_pool_create(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @gen_pool_add(i32, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
