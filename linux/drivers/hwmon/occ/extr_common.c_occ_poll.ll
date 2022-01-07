; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.occ = type { i32, i32, i32 (%struct.occ*, i32*)*, i32, i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.occ_poll_response_header = type { i64 }

@OCC_ERROR_COUNT_THRESHOLD = common dso_local global i64 0, align 8
@OCC_STATE_SAFE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@OCC_SAFE_TIMEOUT = common dso_local global i64 0, align 8
@EHOSTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.occ*)* @occ_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @occ_poll(%struct.occ* %0) #0 {
  %2 = alloca %struct.occ*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca %struct.occ_poll_response_header*, align 8
  store %struct.occ* %0, %struct.occ** %2, align 8
  %7 = load %struct.occ*, %struct.occ** %2, align 8
  %8 = getelementptr inbounds %struct.occ, %struct.occ* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.occ*, %struct.occ** %2, align 8
  %11 = getelementptr inbounds %struct.occ, %struct.occ* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %9, %12
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  %15 = load %struct.occ*, %struct.occ** %2, align 8
  %16 = getelementptr inbounds %struct.occ, %struct.occ* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  store i32 %17, i32* %19, align 16
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 1, i32* %22, align 4
  %23 = load %struct.occ*, %struct.occ** %2, align 8
  %24 = getelementptr inbounds %struct.occ, %struct.occ* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %25, i32* %26, align 16
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 8
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  store i32 0, i32* %33, align 4
  %34 = load %struct.occ*, %struct.occ** %2, align 8
  %35 = getelementptr inbounds %struct.occ, %struct.occ* %34, i32 0, i32 2
  %36 = load i32 (%struct.occ*, i32*)*, i32 (%struct.occ*, i32*)** %35, align 8
  %37 = load %struct.occ*, %struct.occ** %2, align 8
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %39 = call i32 %36(%struct.occ* %37, i32* %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %1
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.occ*, %struct.occ** %2, align 8
  %45 = getelementptr inbounds %struct.occ, %struct.occ* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.occ*, %struct.occ** %2, align 8
  %47 = getelementptr inbounds %struct.occ, %struct.occ* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load i64, i64* @OCC_ERROR_COUNT_THRESHOLD, align 8
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.occ*, %struct.occ** %2, align 8
  %55 = getelementptr inbounds %struct.occ, %struct.occ* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %42
  br label %103

57:                                               ; preds = %1
  %58 = load %struct.occ*, %struct.occ** %2, align 8
  %59 = getelementptr inbounds %struct.occ, %struct.occ* %58, i32 0, i32 7
  store i64 0, i64* %59, align 8
  %60 = load %struct.occ*, %struct.occ** %2, align 8
  %61 = getelementptr inbounds %struct.occ, %struct.occ* %60, i32 0, i32 3
  store i32 0, i32* %61, align 8
  %62 = load %struct.occ*, %struct.occ** %2, align 8
  %63 = getelementptr inbounds %struct.occ, %struct.occ* %62, i32 0, i32 4
  store i32 0, i32* %63, align 4
  %64 = load %struct.occ*, %struct.occ** %2, align 8
  %65 = getelementptr inbounds %struct.occ, %struct.occ* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.occ_poll_response_header*
  store %struct.occ_poll_response_header* %68, %struct.occ_poll_response_header** %6, align 8
  %69 = load %struct.occ_poll_response_header*, %struct.occ_poll_response_header** %6, align 8
  %70 = getelementptr inbounds %struct.occ_poll_response_header, %struct.occ_poll_response_header* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @OCC_STATE_SAFE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %57
  %75 = load %struct.occ*, %struct.occ** %2, align 8
  %76 = getelementptr inbounds %struct.occ, %struct.occ* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load i64, i64* @jiffies, align 8
  %81 = load %struct.occ*, %struct.occ** %2, align 8
  %82 = getelementptr inbounds %struct.occ, %struct.occ* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @OCC_SAFE_TIMEOUT, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i64 @time_after(i64 %80, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load i32, i32* @EHOSTDOWN, align 4
  %90 = sub nsw i32 0, %89
  %91 = load %struct.occ*, %struct.occ** %2, align 8
  %92 = getelementptr inbounds %struct.occ, %struct.occ* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %79
  br label %98

94:                                               ; preds = %74
  %95 = load i64, i64* @jiffies, align 8
  %96 = load %struct.occ*, %struct.occ** %2, align 8
  %97 = getelementptr inbounds %struct.occ, %struct.occ* %96, i32 0, i32 5
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %93
  br label %102

99:                                               ; preds = %57
  %100 = load %struct.occ*, %struct.occ** %2, align 8
  %101 = getelementptr inbounds %struct.occ, %struct.occ* %100, i32 0, i32 5
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %98
  br label %103

103:                                              ; preds = %102, %56
  %104 = load %struct.occ*, %struct.occ** %2, align 8
  %105 = call i32 @occ_sysfs_poll_done(%struct.occ* %104)
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @occ_sysfs_poll_done(%struct.occ*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
