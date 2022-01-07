; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_pages.c_qib_get_user_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_pages.c_qib_get_user_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.page = type { i32 }

@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@FOLL_LONGTERM = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@FOLL_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_get_user_pages(i64 %0, i64 %1, %struct.page** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.page** %2, %struct.page*** %7, align 8
  %12 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %13 = call i64 @rlimit(i32 %12)
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = lshr i64 %13, %14
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i64 @atomic64_add_return(i64 %16, i32* %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i32, i32* @CAP_IPC_LOCK, align 4
  %27 = call i32 @capable(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %84

32:                                               ; preds = %25, %3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = call i32 @down_read(i32* %36)
  store i64 0, i64* %10, align 8
  br label %38

38:                                               ; preds = %69, %32
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = mul i64 %44, %45
  %47 = add i64 %43, %46
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = sub i64 %48, %49
  %51 = load i32, i32* @FOLL_LONGTERM, align 4
  %52 = load i32, i32* @FOLL_WRITE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @FOLL_FORCE, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.page**, %struct.page*** %7, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.page*, %struct.page** %56, i64 %57
  %59 = call i32 @get_user_pages(i64 %47, i64 %50, i32 %55, %struct.page** %58, i32* null)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %42
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = call i32 @up_read(i32* %66)
  br label %80

68:                                               ; preds = %42
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %10, align 8
  br label %38

74:                                               ; preds = %38
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = call i32 @up_read(i32* %78)
  store i32 0, i32* %4, align 4
  br label %92

80:                                               ; preds = %62
  %81 = load %struct.page**, %struct.page*** %7, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @__qib_release_user_pages(%struct.page** %81, i64 %82, i32 0)
  br label %84

84:                                               ; preds = %80, %29
  %85 = load i64, i64* %6, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = call i32 @atomic64_sub(i64 %85, i32* %89)
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %84, %74
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @rlimit(i32) #1

declare dso_local i64 @atomic64_add_return(i64, i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @get_user_pages(i64, i64, i32, %struct.page**, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @__qib_release_user_pages(%struct.page**, i64, i32) #1

declare dso_local i32 @atomic64_sub(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
