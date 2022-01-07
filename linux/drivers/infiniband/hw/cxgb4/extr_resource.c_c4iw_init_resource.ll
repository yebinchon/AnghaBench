; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_init_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_init_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@C4IW_ID_TABLE_F_RANDOM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_init_resource(%struct.c4iw_rdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.c4iw_rdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %6, align 8
  %12 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @C4IW_ID_TABLE_F_RANDOM, align 4
  %16 = call i32 @c4iw_id_table_alloc(i32* %13, i32 0, i32 %14, i32 1, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %69

20:                                               ; preds = %4
  %21 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %6, align 8
  %22 = call i32 @c4iw_init_qid_table(%struct.c4iw_rdev* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %64

26:                                               ; preds = %20
  %27 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %6, align 8
  %28 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @c4iw_id_table_alloc(i32* %29, i32 0, i32 %30, i32 1, i32 0)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %59

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %6, align 8
  %40 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = call i32 @c4iw_id_table_alloc(i32* %41, i32 0, i32 1, i32 1, i32 0)
  store i32 %42, i32* %10, align 4
  br label %49

43:                                               ; preds = %35
  %44 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %6, align 8
  %45 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @c4iw_id_table_alloc(i32* %46, i32 0, i32 %47, i32 0, i32 0)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %54

53:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %72

54:                                               ; preds = %52
  %55 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %6, align 8
  %56 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = call i32 @c4iw_id_table_free(i32* %57)
  br label %59

59:                                               ; preds = %54, %34
  %60 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %6, align 8
  %61 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = call i32 @c4iw_id_table_free(i32* %62)
  br label %64

64:                                               ; preds = %59, %25
  %65 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %6, align 8
  %66 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @c4iw_id_table_free(i32* %67)
  br label %69

69:                                               ; preds = %64, %19
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %53
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @c4iw_id_table_alloc(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @c4iw_init_qid_table(%struct.c4iw_rdev*) #1

declare dso_local i32 @c4iw_id_table_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
