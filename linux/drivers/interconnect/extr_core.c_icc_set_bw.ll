; ModuleID = '/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_icc_set_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_icc_set_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icc_path = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, %struct.icc_node* }
%struct.icc_node = type { i32 }

@icc_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"interconnect: error applying constraints (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icc_set_bw(%struct.icc_path* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.icc_path*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.icc_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.icc_path* %0, %struct.icc_path** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %14 = icmp ne %struct.icc_path* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %17 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %115

21:                                               ; preds = %15
  %22 = call i32 @mutex_lock(i32* @icc_lock)
  %23 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %24 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %9, align 8
  %29 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %30 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %65, %21
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %38 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %35
  %42 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %43 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load %struct.icc_node*, %struct.icc_node** %47, align 8
  store %struct.icc_node* %48, %struct.icc_node** %8, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %51 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i8* %49, i8** %55, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %58 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i8* %56, i8** %62, align 8
  %63 = load %struct.icc_node*, %struct.icc_node** %8, align 8
  %64 = call i32 @aggregate_requests(%struct.icc_node* %63)
  br label %65

65:                                               ; preds = %41
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %35

68:                                               ; preds = %35
  %69 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %70 = call i32 @apply_constraints(%struct.icc_path* %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %112

73:                                               ; preds = %68
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %74)
  store i64 0, i64* %11, align 8
  br label %76

76:                                               ; preds = %106, %73
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %79 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %77, %80
  br i1 %81, label %82, label %109

82:                                               ; preds = %76
  %83 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %84 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load %struct.icc_node*, %struct.icc_node** %88, align 8
  store %struct.icc_node* %89, %struct.icc_node** %8, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %92 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i8* %90, i8** %96, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %99 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i8* %97, i8** %103, align 8
  %104 = load %struct.icc_node*, %struct.icc_node** %8, align 8
  %105 = call i32 @aggregate_requests(%struct.icc_node* %104)
  br label %106

106:                                              ; preds = %82
  %107 = load i64, i64* %11, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %11, align 8
  br label %76

109:                                              ; preds = %76
  %110 = load %struct.icc_path*, %struct.icc_path** %5, align 8
  %111 = call i32 @apply_constraints(%struct.icc_path* %110)
  br label %112

112:                                              ; preds = %109, %68
  %113 = call i32 @mutex_unlock(i32* @icc_lock)
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %112, %20
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @aggregate_requests(%struct.icc_node*) #1

declare dso_local i32 @apply_constraints(%struct.icc_path*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
