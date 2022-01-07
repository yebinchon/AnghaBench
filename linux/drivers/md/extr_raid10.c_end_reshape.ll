; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_end_reshape.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_end_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i64, %struct.TYPE_8__*, %struct.TYPE_5__, i32, i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10conf*)* @end_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_reshape(%struct.r10conf* %0) #0 {
  %2 = alloca %struct.r10conf*, align 8
  %3 = alloca i32, align 4
  store %struct.r10conf* %0, %struct.r10conf** %2, align 8
  %4 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %5 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %6 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %5, i32 0, i32 1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = call i64 @test_bit(i32 %4, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %89

12:                                               ; preds = %1
  %13 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %14 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %13, i32 0, i32 3
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %17 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %16, i32 0, i32 6
  %18 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %19 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %18, i32 0, i32 2
  %20 = bitcast %struct.TYPE_5__* %17 to i8*
  %21 = bitcast %struct.TYPE_5__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %23 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i32 @md_finish_reshape(%struct.TYPE_8__* %24)
  %26 = call i32 (...) @smp_wmb()
  %27 = load i8*, i8** @MaxSector, align 8
  %28 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %29 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @MaxSector, align 8
  %31 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %32 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %34 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %33, i32 0, i32 3
  %35 = call i32 @spin_unlock_irq(i32* %34)
  %36 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %37 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = icmp ne %struct.TYPE_7__* %40, null
  br i1 %41, label %42, label %86

42:                                               ; preds = %12
  %43 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %44 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %48 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 %51, 9
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = sdiv i32 %52, %53
  %55 = mul nsw i32 %46, %54
  store i32 %55, i32* %3, align 4
  %56 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %57 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %3, align 4
  %61 = sdiv i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %63 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %3, align 4
  %72 = mul nsw i32 2, %71
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %42
  %75 = load i32, i32* %3, align 4
  %76 = mul nsw i32 2, %75
  %77 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %78 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %76, i32* %84, align 4
  br label %85

85:                                               ; preds = %74, %42
  br label %86

86:                                               ; preds = %85, %12
  %87 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %88 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %11
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @md_finish_reshape(%struct.TYPE_8__*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
