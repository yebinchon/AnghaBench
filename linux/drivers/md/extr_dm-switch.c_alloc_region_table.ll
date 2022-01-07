; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_alloc_region_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-switch.c_alloc_region_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32, i8*, %struct.switch_ctx* }
%struct.switch_ctx = type { i32, i32, i32, i32, i32, i32, i32 }

@ULONG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Region table too large\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot allocate region table\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32)* @alloc_region_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_region_table(%struct.dm_target* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.switch_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %10 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %9, i32 0, i32 2
  %11 = load %struct.switch_ctx*, %struct.switch_ctx** %10, align 8
  store %struct.switch_ctx* %11, %struct.switch_ctx** %6, align 8
  %12 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %13 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %17, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @__ffs(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %33, i32 0, i32 1
  store i32 -1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %24
  %36 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %36, i32 0, i32 2
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %53, %35
  %39 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %42, 32
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* %5, align 4
  %50 = icmp ult i32 %48, %49
  br label %51

51:                                               ; preds = %44, %38
  %52 = phi i1 [ false, %38 ], [ %50, %44 ]
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %38

58:                                               ; preds = %51
  %59 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = udiv i64 32, %62
  %64 = trunc i64 %63 to i32
  %65 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  %74 = and i32 %69, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %58
  %77 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %78 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @__ffs(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %83 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  br label %87

84:                                               ; preds = %58
  %85 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %86 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %85, i32 0, i32 4
  store i32 -1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %76
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @sector_div(i32 %88, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %94, %87
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @ULONG_MAX, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %103 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %102, i32 0, i32 1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %103, align 8
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %148

106:                                              ; preds = %97
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %109 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %113 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @sector_div(i32 %111, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %106
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %117, %106
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = load i32, i32* @ULONG_MAX, align 4
  %124 = sext i32 %123 to i64
  %125 = udiv i64 %124, 4
  %126 = icmp ugt i64 %122, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %129 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %128, i32 0, i32 1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %129, align 8
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %148

132:                                              ; preds = %120
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @array_size(i32 %133, i32 4)
  %135 = call i32 @vmalloc(i32 %134)
  %136 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %137 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 4
  %138 = load %struct.switch_ctx*, %struct.switch_ctx** %6, align 8
  %139 = getelementptr inbounds %struct.switch_ctx, %struct.switch_ctx* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %132
  %143 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %144 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %143, i32 0, i32 1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %144, align 8
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %148

147:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %142, %127, %101
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i8* @__ffs(i32) #1

declare dso_local i64 @sector_div(i32, i32) #1

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
