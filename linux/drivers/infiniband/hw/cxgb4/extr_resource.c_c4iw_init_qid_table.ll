; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_init_qid_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_init_qid_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_rdev*)* @c4iw_init_qid_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c4iw_init_qid_table(%struct.c4iw_rdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.c4iw_rdev*, align 8
  %4 = alloca i32, align 4
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %3, align 8
  %5 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %6 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %9 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %16 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %23 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @c4iw_id_table_alloc(i32* %7, i32 %14, i32 %21, i32 %28, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %78

34:                                               ; preds = %1
  %35 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %36 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %74, %34
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %45 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %52 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %50, %57
  %59 = icmp slt i32 %43, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %42
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %63 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %60
  %68 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %3, align 8
  %69 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @c4iw_id_free(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %60
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %42

77:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %31
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @c4iw_id_table_alloc(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @c4iw_id_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
