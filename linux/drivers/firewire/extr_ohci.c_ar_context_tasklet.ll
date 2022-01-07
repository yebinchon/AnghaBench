; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_context_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_context_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_context = type { i32*, i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AR_BUFFERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"inconsistent descriptor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ar_context_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar_context_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ar_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.ar_context*
  store %struct.ar_context* %10, %struct.ar_context** %3, align 8
  %11 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %12 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to i8*
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %92

18:                                               ; preds = %1
  %19 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %20 = call i32 @ar_search_last_active_buffer(%struct.ar_context* %19, i32* %5)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ar_sync_buffers_for_cpu(%struct.ar_context* %21, i32 %22, i32 %23)
  %25 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %26 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = mul i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr i8, i8* %27, i64 %31
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  store i8* %35, i8** %7, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %38 = call i32 @ar_first_buffer_index(%struct.ar_context* %37)
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %18
  %41 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %42 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @AR_BUFFERS, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = mul i32 %44, %45
  %47 = zext i32 %46 to i64
  %48 = getelementptr i8, i8* %43, i64 %47
  store i8* %48, i8** %8, align 8
  %49 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i8* @handle_ar_packets(%struct.ar_context* %49, i8* %50, i8* %51)
  store i8* %52, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %40
  br label %89

57:                                               ; preds = %40
  %58 = load i32, i32* @AR_BUFFERS, align 4
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = mul i32 %58, %59
  %61 = load i8*, i8** %6, align 8
  %62 = zext i32 %60 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr i8, i8* %61, i64 %63
  store i8* %64, i8** %6, align 8
  br label %65

65:                                               ; preds = %57, %18
  %66 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i8* @handle_ar_packets(%struct.ar_context* %66, i8* %67, i8* %68)
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = icmp ne i8* %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = icmp ugt i8* %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %79 = call i32 @ar_context_abort(%struct.ar_context* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %73
  br label %89

81:                                               ; preds = %65
  %82 = load i8*, i8** %6, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %85 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %84, i32 0, i32 0
  store i32* %83, i32** %85, align 8
  %86 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @ar_recycle_buffers(%struct.ar_context* %86, i32 %87)
  br label %92

89:                                               ; preds = %80, %56
  %90 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %91 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %90, i32 0, i32 0
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %89, %81, %17
  ret void
}

declare dso_local i32 @ar_search_last_active_buffer(%struct.ar_context*, i32*) #1

declare dso_local i32 @ar_sync_buffers_for_cpu(%struct.ar_context*, i32, i32) #1

declare dso_local i32 @ar_first_buffer_index(%struct.ar_context*) #1

declare dso_local i8* @handle_ar_packets(%struct.ar_context*, i8*, i8*) #1

declare dso_local i32 @ar_context_abort(%struct.ar_context*, i8*) #1

declare dso_local i32 @ar_recycle_buffers(%struct.ar_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
