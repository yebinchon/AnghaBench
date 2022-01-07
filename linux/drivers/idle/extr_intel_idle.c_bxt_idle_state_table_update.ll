; ModuleID = '/home/carl/AnghaBench/linux/drivers/idle/extr_intel_idle.c_bxt_idle_state_table_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/idle/extr_intel_idle.c_bxt_idle_state_table_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MSR_PKGC6_IRTL = common dso_local global i32 0, align 4
@bxt_cstates = common dso_local global %struct.TYPE_2__* null, align 8
@MSR_PKGC7_IRTL = common dso_local global i32 0, align 4
@MSR_PKGC8_IRTL = common dso_local global i32 0, align 4
@MSR_PKGC9_IRTL = common dso_local global i32 0, align 4
@MSR_PKGC10_IRTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bxt_idle_state_table_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxt_idle_state_table_update() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @MSR_PKGC6_IRTL, align 4
  %4 = load i64, i64* %1, align 8
  %5 = call i32 @rdmsrl(i32 %3, i64 %4)
  %6 = load i64, i64* %1, align 8
  %7 = call i32 @irtl_2_usec(i64 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bxt_cstates, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bxt_cstates, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  br label %19

19:                                               ; preds = %10, %0
  %20 = load i32, i32* @MSR_PKGC7_IRTL, align 4
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @rdmsrl(i32 %20, i64 %21)
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @irtl_2_usec(i64 %23)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load i32, i32* %2, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bxt_cstates, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bxt_cstates, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %27, %19
  %37 = load i32, i32* @MSR_PKGC8_IRTL, align 4
  %38 = load i64, i64* %1, align 8
  %39 = call i32 @rdmsrl(i32 %37, i64 %38)
  %40 = load i64, i64* %1, align 8
  %41 = call i32 @irtl_2_usec(i64 %40)
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load i32, i32* %2, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bxt_cstates, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %2, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bxt_cstates, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %44, %36
  %54 = load i32, i32* @MSR_PKGC9_IRTL, align 4
  %55 = load i64, i64* %1, align 8
  %56 = call i32 @rdmsrl(i32 %54, i64 %55)
  %57 = load i64, i64* %1, align 8
  %58 = call i32 @irtl_2_usec(i64 %57)
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load i32, i32* %2, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bxt_cstates, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 5
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %2, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bxt_cstates, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 5
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %61, %53
  %71 = load i32, i32* @MSR_PKGC10_IRTL, align 4
  %72 = load i64, i64* %1, align 8
  %73 = call i32 @rdmsrl(i32 %71, i64 %72)
  %74 = load i64, i64* %1, align 8
  %75 = call i32 @irtl_2_usec(i64 %74)
  store i32 %75, i32* %2, align 4
  %76 = load i32, i32* %2, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load i32, i32* %2, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bxt_cstates, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 6
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %2, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bxt_cstates, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 6
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  br label %87

87:                                               ; preds = %78, %70
  ret void
}

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i32 @irtl_2_usec(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
