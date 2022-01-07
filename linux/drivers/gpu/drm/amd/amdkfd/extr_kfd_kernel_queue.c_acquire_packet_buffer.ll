; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue.c_acquire_packet_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue.c_acquire_packet_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_queue = type { i64*, i64, i32, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"rptr: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"wptr: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"queue_address 0x%p\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernel_queue*, i64, i32**)* @acquire_packet_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_packet_buffer(%struct.kernel_queue* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kernel_queue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.kernel_queue* %0, %struct.kernel_queue** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %14 = load %struct.kernel_queue*, %struct.kernel_queue** %5, align 8
  %15 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.kernel_queue*, %struct.kernel_queue** %5, align 8
  %19 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.kernel_queue*, %struct.kernel_queue** %5, align 8
  %22 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.kernel_queue*, %struct.kernel_queue** %5, align 8
  %25 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %13, align 8
  %28 = load %struct.kernel_queue*, %struct.kernel_queue** %5, align 8
  %29 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %28, i32 0, i32 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %10, align 8
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %40)
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %42, %43
  %45 = sub i64 %44, 1
  %46 = load i64, i64* %10, align 8
  %47 = sub i64 %45, %46
  %48 = load i64, i64* %9, align 8
  %49 = urem i64 %47, %48
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %3
  br label %98

54:                                               ; preds = %3
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %55, %56
  %58 = load i64, i64* %9, align 8
  %59 = icmp uge i64 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %54
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp uge i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %98

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %69, %65
  %67 = load i64, i64* %10, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load %struct.kernel_queue*, %struct.kernel_queue** %5, align 8
  %71 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %72, i32* %75, align 4
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, 1
  %78 = load i64, i64* %9, align 8
  %79 = urem i64 %77, %78
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %12, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %12, align 8
  br label %66

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82, %54
  %84 = load i32*, i32** %13, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32**, i32*** %7, align 8
  store i32* %86, i32** %87, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %88, %89
  %91 = load %struct.kernel_queue*, %struct.kernel_queue** %5, align 8
  %92 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %93, %94
  %96 = load %struct.kernel_queue*, %struct.kernel_queue** %5, align 8
  %97 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  store i32 0, i32* %4, align 4
  br label %102

98:                                               ; preds = %64, %53
  %99 = load i32**, i32*** %7, align 8
  store i32* null, i32** %99, align 8
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %83
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
