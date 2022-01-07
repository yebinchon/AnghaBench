; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_set_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_set_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.rvt_mr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@RVT_SEGSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mr*, i64)* @rvt_set_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvt_set_page(%struct.ib_mr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rvt_mr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %12 = call %struct.rvt_mr* @to_imr(%struct.ib_mr* %11)
  store %struct.rvt_mr* %12, %struct.rvt_mr** %6, align 8
  %13 = load %struct.rvt_mr*, %struct.rvt_mr** %6, align 8
  %14 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 1, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.rvt_mr*, %struct.rvt_mr** %6, align 8
  %19 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rvt_mr*, %struct.rvt_mr** %6, align 8
  %23 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %21, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.rvt_mr*, %struct.rvt_mr** %6, align 8
  %29 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %27, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %91

39:                                               ; preds = %2
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @RVT_SEGSZ, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @RVT_SEGSZ, align 4
  %45 = srem i32 %43, %44
  store i32 %45, i32* %10, align 4
  %46 = load i64, i64* %5, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.rvt_mr*, %struct.rvt_mr** %6, align 8
  %49 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %51, i64 %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i8* %47, i8** %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.rvt_mr*, %struct.rvt_mr** %6, align 8
  %64 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %66, i64 %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %62, i32* %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.rvt_mr*, %struct.rvt_mr** %6, align 8
  %79 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = load %struct.rvt_mr*, %struct.rvt_mr** %6, align 8
  %84 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %83, i32 0, i32 0
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i64, i64* %5, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @trace_rvt_mr_page_seg(%struct.TYPE_6__* %84, i32 %85, i32 %86, i8* %88, i32 %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %39, %36
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.rvt_mr* @to_imr(%struct.ib_mr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @trace_rvt_mr_page_seg(%struct.TYPE_6__*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
