; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_search_last_active_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_search_last_active_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@MAX_AR_PACKET_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"corrupted descriptor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar_context*, i32*)* @ar_search_last_active_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar_search_last_active_buffer(%struct.ar_context* %0, i32* %1) #0 {
  %3 = alloca %struct.ar_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ar_context* %0, %struct.ar_context** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %11 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %14 = call i32 @ar_first_buffer_index(%struct.ar_context* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %16 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @READ_ONCE(i32 %22)
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %79, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %29, 0
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i1 [ false, %24 ], [ %30, %28 ]
  br i1 %32, label %33, label %82

33:                                               ; preds = %31
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ar_next_buffer_index(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = call i32 (...) @rmb()
  %37 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %38 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @READ_ONCE(i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = call i64 @cpu_to_le16(i32 %47)
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %33
  %51 = load i32, i32* @MAX_AR_PACKET_SIZE, align 4
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @ar_next_buffer_index(i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = call i32 (...) @rmb()
  %62 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %63 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @READ_ONCE(i32 %69)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = call i64 @cpu_to_le16(i32 %72)
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  br label %79

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76, %54, %50
  br label %82

78:                                               ; preds = %33
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %5, align 4
  %81 = load i64, i64* %9, align 8
  store i64 %81, i64* %8, align 8
  br label %24

82:                                               ; preds = %77, %31
  %83 = call i32 (...) @rmb()
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @le16_to_cpu(i64 %85)
  %87 = sub i32 %84, %86
  %88 = load i32*, i32** %4, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PAGE_SIZE, align 4
  %92 = icmp ugt i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = load i32*, i32** %4, align 8
  store i32 0, i32* %94, align 4
  %95 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %96 = call i32 @ar_context_abort(%struct.ar_context* %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %82
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @ar_first_buffer_index(%struct.ar_context*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @ar_next_buffer_index(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @ar_context_abort(%struct.ar_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
