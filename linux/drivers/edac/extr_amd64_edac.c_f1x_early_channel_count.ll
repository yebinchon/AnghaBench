; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f1x_early_channel_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_f1x_early_channel_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i32, i32, i32 }

@WIDTH_128 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Data width is not 128 bits - need more decoding\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"MCT channel count: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*)* @f1x_early_channel_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f1x_early_channel_count(%struct.amd64_pvt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd64_pvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %9 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 16
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %14 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WIDTH_128, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 2, i32* %2, align 4
  br label %65

20:                                               ; preds = %12, %1
  %21 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %54, %20
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %57

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %30 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  br label %36

32:                                               ; preds = %25
  %33 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %34 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %31, %28 ], [ %35, %32 ]
  store i32 %37, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %50, %36
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @DBAM_DIMM(i32 %42, i32 %43)
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %53

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %38

53:                                               ; preds = %46, %38
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %22

57:                                               ; preds = %22
  %58 = load i32, i32* %6, align 4
  %59 = icmp sgt i32 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 2, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @amd64_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %19
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i64 @DBAM_DIMM(i32, i32) #1

declare dso_local i32 @amd64_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
