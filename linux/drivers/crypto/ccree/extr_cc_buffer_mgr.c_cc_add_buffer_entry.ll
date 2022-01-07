; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_add_buffer_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_add_buffer_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.buffer_array = type { i32, i32*, i32*, i32*, i64**, i32*, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"index=%u single_buff=%pad buffer_len=0x%08X is_last=%d\0A\00", align 1
@DMA_BUFF_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.buffer_array*, i32, i32, i32, i64*)* @cc_add_buffer_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_add_buffer_entry(%struct.device* %0, %struct.buffer_array* %1, i32 %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.buffer_array*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.buffer_array* %1, %struct.buffer_array** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  %14 = load %struct.buffer_array*, %struct.buffer_array** %8, align 8
  %15 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %13, align 4
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %18, i32* %9, i32 %19, i32 %20)
  %22 = load %struct.buffer_array*, %struct.buffer_array** %8, align 8
  %23 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %13, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.buffer_array*, %struct.buffer_array** %8, align 8
  %30 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %29, i32 0, i32 7
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %28, i32* %35, align 4
  %36 = load %struct.buffer_array*, %struct.buffer_array** %8, align 8
  %37 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %36, i32 0, i32 6
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.buffer_array*, %struct.buffer_array** %8, align 8
  %44 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  %49 = load i32, i32* @DMA_BUFF_TYPE, align 4
  %50 = load %struct.buffer_array*, %struct.buffer_array** %8, align 8
  %51 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.buffer_array*, %struct.buffer_array** %8, align 8
  %58 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load i64*, i64** %12, align 8
  %64 = load %struct.buffer_array*, %struct.buffer_array** %8, align 8
  %65 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %64, i32 0, i32 4
  %66 = load i64**, i64*** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64*, i64** %66, i64 %68
  store i64* %63, i64** %69, align 8
  %70 = load %struct.buffer_array*, %struct.buffer_array** %8, align 8
  %71 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %70, i32 0, i32 4
  %72 = load i64**, i64*** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i64*, i64** %72, i64 %74
  %76 = load i64*, i64** %75, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %6
  %79 = load %struct.buffer_array*, %struct.buffer_array** %8, align 8
  %80 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %79, i32 0, i32 4
  %81 = load i64**, i64*** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i64*, i64** %81, i64 %83
  %85 = load i64*, i64** %84, align 8
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %78, %6
  %87 = load %struct.buffer_array*, %struct.buffer_array** %8, align 8
  %88 = getelementptr inbounds %struct.buffer_array, %struct.buffer_array* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add i32 %89, 1
  store i32 %90, i32* %88, align 8
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
