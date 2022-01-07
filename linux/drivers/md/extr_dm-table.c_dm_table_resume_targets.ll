; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_resume_targets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_resume_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, %struct.dm_target*, %struct.TYPE_4__* }
%struct.dm_target = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"%s: %s: preresume failed, error = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_table_resume_targets(%struct.dm_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca %struct.dm_target*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %9 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @lockdep_assert_held(i32* %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %57, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %16 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %13
  %20 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %21 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %20, i32 0, i32 1
  %22 = load %struct.dm_target*, %struct.dm_target** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %22, i64 %24
  store %struct.dm_target* %25, %struct.dm_target** %6, align 8
  %26 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %27 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %29, align 8
  %31 = icmp ne i32 (%struct.dm_target*)* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  br label %57

33:                                               ; preds = %19
  %34 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %35 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %37, align 8
  %39 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %40 = call i32 %38(%struct.dm_target* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %33
  %44 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %45 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i32 @dm_device_name(%struct.TYPE_4__* %46)
  %48 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %49 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @DMERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %93

56:                                               ; preds = %33
  br label %57

57:                                               ; preds = %56, %32
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %13

60:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %89, %60
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %64 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %61
  %68 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %69 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %68, i32 0, i32 1
  %70 = load %struct.dm_target*, %struct.dm_target** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %70, i64 %72
  store %struct.dm_target* %73, %struct.dm_target** %7, align 8
  %74 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %75 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %77, align 8
  %79 = icmp ne i32 (%struct.dm_target*)* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %67
  %81 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %82 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %84, align 8
  %86 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %87 = call i32 %85(%struct.dm_target* %86)
  br label %88

88:                                               ; preds = %80, %67
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %61

92:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %43
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @DMERR(i8*, i32, i32, i32) #1

declare dso_local i32 @dm_device_name(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
