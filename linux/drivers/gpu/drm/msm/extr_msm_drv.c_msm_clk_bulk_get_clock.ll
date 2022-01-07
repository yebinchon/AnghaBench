; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_clk_bulk_get_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_clk_bulk_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.clk_bulk_data = type { %struct.clk*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s_clk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @msm_clk_bulk_get_clock(%struct.clk_bulk_data* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk_bulk_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8], align 16
  store %struct.clk_bulk_data* %0, %struct.clk_bulk_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @snprintf(i8* %10, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %50, %3
  %14 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %5, align 8
  %15 = icmp ne %struct.clk_bulk_data* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %22, label %53

22:                                               ; preds = %20
  %23 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %23, i64 %25
  %27 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strcmp(i32 %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %22
  %33 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %33, i64 %35
  %37 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %40 = call i32 @strcmp(i32 %38, i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %32, %22
  %43 = load %struct.clk_bulk_data*, %struct.clk_bulk_data** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %43, i64 %45
  %47 = getelementptr inbounds %struct.clk_bulk_data, %struct.clk_bulk_data* %46, i32 0, i32 0
  %48 = load %struct.clk*, %struct.clk** %47, align 8
  store %struct.clk* %48, %struct.clk** %4, align 8
  br label %54

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %13

53:                                               ; preds = %20
  store %struct.clk* null, %struct.clk** %4, align 8
  br label %54

54:                                               ; preds = %53, %42
  %55 = load %struct.clk*, %struct.clk** %4, align 8
  ret %struct.clk* %55
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
