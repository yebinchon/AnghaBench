; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_arpc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_arpc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arpc = type { %struct.arpc*, i32, i32, i32, i32, i8*, i32 }

@ARPC_OUT_SIZE_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.arpc* (i8*, i32, i32)* @arpc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.arpc* @arpc_alloc(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.arpc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.arpc*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 %10, 40
  %12 = load i32, i32* @ARPC_OUT_SIZE_MAX, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ugt i64 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.arpc* null, %struct.arpc** %4, align 8
  br label %86

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kzalloc(i32 40, i32 %17)
  %19 = bitcast i8* %18 to %struct.arpc*
  store %struct.arpc* %19, %struct.arpc** %8, align 8
  %20 = load %struct.arpc*, %struct.arpc** %8, align 8
  %21 = icmp ne %struct.arpc* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store %struct.arpc* null, %struct.arpc** %4, align 8
  br label %86

23:                                               ; preds = %16
  %24 = load %struct.arpc*, %struct.arpc** %8, align 8
  %25 = getelementptr inbounds %struct.arpc, %struct.arpc* %24, i32 0, i32 6
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 40, %28
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i32 %30, i32 %31)
  %33 = bitcast i8* %32 to %struct.arpc*
  %34 = load %struct.arpc*, %struct.arpc** %8, align 8
  %35 = getelementptr inbounds %struct.arpc, %struct.arpc* %34, i32 0, i32 0
  store %struct.arpc* %33, %struct.arpc** %35, align 8
  %36 = load %struct.arpc*, %struct.arpc** %8, align 8
  %37 = getelementptr inbounds %struct.arpc, %struct.arpc* %36, i32 0, i32 0
  %38 = load %struct.arpc*, %struct.arpc** %37, align 8
  %39 = icmp ne %struct.arpc* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %23
  br label %83

41:                                               ; preds = %23
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kzalloc(i32 1, i32 %42)
  %44 = load %struct.arpc*, %struct.arpc** %8, align 8
  %45 = getelementptr inbounds %struct.arpc, %struct.arpc* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load %struct.arpc*, %struct.arpc** %8, align 8
  %47 = getelementptr inbounds %struct.arpc, %struct.arpc* %46, i32 0, i32 5
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  br label %78

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.arpc*, %struct.arpc** %8, align 8
  %54 = getelementptr inbounds %struct.arpc, %struct.arpc* %53, i32 0, i32 0
  %55 = load %struct.arpc*, %struct.arpc** %54, align 8
  %56 = getelementptr inbounds %struct.arpc, %struct.arpc* %55, i32 0, i32 4
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 40, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @cpu_to_le16(i32 %60)
  %62 = load %struct.arpc*, %struct.arpc** %8, align 8
  %63 = getelementptr inbounds %struct.arpc, %struct.arpc* %62, i32 0, i32 0
  %64 = load %struct.arpc*, %struct.arpc** %63, align 8
  %65 = getelementptr inbounds %struct.arpc, %struct.arpc* %64, i32 0, i32 3
  store i32 %61, i32* %65, align 8
  %66 = load %struct.arpc*, %struct.arpc** %8, align 8
  %67 = getelementptr inbounds %struct.arpc, %struct.arpc* %66, i32 0, i32 0
  %68 = load %struct.arpc*, %struct.arpc** %67, align 8
  %69 = getelementptr inbounds %struct.arpc, %struct.arpc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @memcpy(i32 %70, i8* %71, i32 %72)
  %74 = load %struct.arpc*, %struct.arpc** %8, align 8
  %75 = getelementptr inbounds %struct.arpc, %struct.arpc* %74, i32 0, i32 1
  %76 = call i32 @init_completion(i32* %75)
  %77 = load %struct.arpc*, %struct.arpc** %8, align 8
  store %struct.arpc* %77, %struct.arpc** %4, align 8
  br label %86

78:                                               ; preds = %50
  %79 = load %struct.arpc*, %struct.arpc** %8, align 8
  %80 = getelementptr inbounds %struct.arpc, %struct.arpc* %79, i32 0, i32 0
  %81 = load %struct.arpc*, %struct.arpc** %80, align 8
  %82 = call i32 @kfree(%struct.arpc* %81)
  br label %83

83:                                               ; preds = %78, %40
  %84 = load %struct.arpc*, %struct.arpc** %8, align 8
  %85 = call i32 @kfree(%struct.arpc* %84)
  store %struct.arpc* null, %struct.arpc** %4, align 8
  br label %86

86:                                               ; preds = %83, %51, %22, %15
  %87 = load %struct.arpc*, %struct.arpc** %4, align 8
  ret %struct.arpc* %87
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kfree(%struct.arpc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
