; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318_lli.c_coh901318_lli_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318_lli.c_coh901318_lli_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coh901318_lli = type { i32, %struct.coh901318_lli*, i8* }
%struct.coh901318_pool = type { i32, i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.coh901318_lli* @coh901318_lli_alloc(%struct.coh901318_pool* %0, i32 %1) #0 {
  %3 = alloca %struct.coh901318_lli*, align 8
  %4 = alloca %struct.coh901318_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.coh901318_lli*, align 8
  %8 = alloca %struct.coh901318_lli*, align 8
  %9 = alloca %struct.coh901318_lli*, align 8
  %10 = alloca i8*, align 8
  store %struct.coh901318_pool* %0, %struct.coh901318_pool** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.coh901318_lli* null, %struct.coh901318_lli** %3, align 8
  br label %88

14:                                               ; preds = %2
  %15 = load %struct.coh901318_pool*, %struct.coh901318_pool** %4, align 8
  %16 = getelementptr inbounds %struct.coh901318_pool, %struct.coh901318_pool* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.coh901318_pool*, %struct.coh901318_pool** %4, align 8
  %19 = getelementptr inbounds %struct.coh901318_pool, %struct.coh901318_pool* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_NOWAIT, align 4
  %22 = call %struct.coh901318_lli* @dma_pool_alloc(i32 %20, i32 %21, i8** %10)
  store %struct.coh901318_lli* %22, %struct.coh901318_lli** %7, align 8
  %23 = load %struct.coh901318_lli*, %struct.coh901318_lli** %7, align 8
  %24 = icmp eq %struct.coh901318_lli* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %76

26:                                               ; preds = %14
  %27 = load %struct.coh901318_pool*, %struct.coh901318_pool** %4, align 8
  %28 = call i32 @DEBUGFS_POOL_COUNTER_ADD(%struct.coh901318_pool* %27, i32 1)
  %29 = load %struct.coh901318_lli*, %struct.coh901318_lli** %7, align 8
  store %struct.coh901318_lli* %29, %struct.coh901318_lli** %8, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.coh901318_lli*, %struct.coh901318_lli** %8, align 8
  %32 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.coh901318_lli*, %struct.coh901318_lli** %8, align 8
  %34 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.coh901318_lli*, %struct.coh901318_lli** %8, align 8
  %36 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %35, i32 0, i32 1
  store %struct.coh901318_lli* null, %struct.coh901318_lli** %36, align 8
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %68, %26
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %37
  %42 = load %struct.coh901318_lli*, %struct.coh901318_lli** %8, align 8
  store %struct.coh901318_lli* %42, %struct.coh901318_lli** %9, align 8
  %43 = load %struct.coh901318_pool*, %struct.coh901318_pool** %4, align 8
  %44 = getelementptr inbounds %struct.coh901318_pool, %struct.coh901318_pool* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GFP_NOWAIT, align 4
  %47 = call %struct.coh901318_lli* @dma_pool_alloc(i32 %45, i32 %46, i8** %10)
  store %struct.coh901318_lli* %47, %struct.coh901318_lli** %8, align 8
  %48 = load %struct.coh901318_lli*, %struct.coh901318_lli** %8, align 8
  %49 = icmp eq %struct.coh901318_lli* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %80

51:                                               ; preds = %41
  %52 = load %struct.coh901318_pool*, %struct.coh901318_pool** %4, align 8
  %53 = call i32 @DEBUGFS_POOL_COUNTER_ADD(%struct.coh901318_pool* %52, i32 1)
  %54 = load i8*, i8** %10, align 8
  %55 = load %struct.coh901318_lli*, %struct.coh901318_lli** %8, align 8
  %56 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.coh901318_lli*, %struct.coh901318_lli** %8, align 8
  %58 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.coh901318_lli*, %struct.coh901318_lli** %8, align 8
  %60 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %59, i32 0, i32 1
  store %struct.coh901318_lli* null, %struct.coh901318_lli** %60, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.coh901318_lli*, %struct.coh901318_lli** %9, align 8
  %64 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.coh901318_lli*, %struct.coh901318_lli** %8, align 8
  %66 = load %struct.coh901318_lli*, %struct.coh901318_lli** %9, align 8
  %67 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %66, i32 0, i32 1
  store %struct.coh901318_lli* %65, %struct.coh901318_lli** %67, align 8
  br label %68

68:                                               ; preds = %51
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %37

71:                                               ; preds = %37
  %72 = load %struct.coh901318_pool*, %struct.coh901318_pool** %4, align 8
  %73 = getelementptr inbounds %struct.coh901318_pool, %struct.coh901318_pool* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.coh901318_lli*, %struct.coh901318_lli** %7, align 8
  store %struct.coh901318_lli* %75, %struct.coh901318_lli** %3, align 8
  br label %88

76:                                               ; preds = %25
  %77 = load %struct.coh901318_pool*, %struct.coh901318_pool** %4, align 8
  %78 = getelementptr inbounds %struct.coh901318_pool, %struct.coh901318_pool* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  store %struct.coh901318_lli* null, %struct.coh901318_lli** %3, align 8
  br label %88

80:                                               ; preds = %50
  %81 = load %struct.coh901318_lli*, %struct.coh901318_lli** %9, align 8
  %82 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load %struct.coh901318_pool*, %struct.coh901318_pool** %4, align 8
  %84 = getelementptr inbounds %struct.coh901318_pool, %struct.coh901318_pool* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.coh901318_pool*, %struct.coh901318_pool** %4, align 8
  %87 = call i32 @coh901318_lli_free(%struct.coh901318_pool* %86, %struct.coh901318_lli** %7)
  store %struct.coh901318_lli* null, %struct.coh901318_lli** %3, align 8
  br label %88

88:                                               ; preds = %80, %76, %71, %13
  %89 = load %struct.coh901318_lli*, %struct.coh901318_lli** %3, align 8
  ret %struct.coh901318_lli* %89
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.coh901318_lli* @dma_pool_alloc(i32, i32, i8**) #1

declare dso_local i32 @DEBUGFS_POOL_COUNTER_ADD(%struct.coh901318_pool*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @coh901318_lli_free(%struct.coh901318_pool*, %struct.coh901318_lli**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
