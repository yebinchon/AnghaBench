; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_clean_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_clean_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cq_uk = type { i32, %struct.TYPE_2__, i32*, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.i40iw_extended_cqe = type { i32 }

@I40IW_CQ_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_clean_cq(i8* %0, %struct.i40iw_cq_uk* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.i40iw_cq_uk*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.i40iw_cq_uk* %1, %struct.i40iw_cq_uk** %4, align 8
  %11 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %12 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %16 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %73, %2
  %19 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %20 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %25 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = bitcast i32* %26 to %struct.i40iw_extended_cqe*
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.i40iw_extended_cqe, %struct.i40iw_extended_cqe* %27, i64 %28
  %30 = bitcast %struct.i40iw_extended_cqe* %29 to i64*
  store i64* %30, i64** %5, align 8
  br label %38

31:                                               ; preds = %18
  %32 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %33 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = bitcast i32* %36 to i64*
  store i64* %37, i64** %5, align 8
  br label %38

38:                                               ; preds = %31, %23
  %39 = load i64*, i64** %5, align 8
  %40 = call i32 @get_64bit_val(i64* %39, i32 24, i64* %6)
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* @I40IW_CQ_VALID, align 4
  %43 = call i64 @RS_64(i64 %41, i32 %42)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %74

49:                                               ; preds = %38
  %50 = load i64*, i64** %5, align 8
  %51 = call i32 @get_64bit_val(i64* %50, i32 8, i64* %7)
  %52 = load i64, i64* %7, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load i8*, i8** %3, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i64*, i64** %5, align 8
  %58 = call i32 @set_64bit_val(i64* %57, i32 8, i32 0)
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 1
  %62 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %4, align 8
  %63 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = urem i64 %61, %65
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %10, align 4
  %71 = xor i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %59
  br label %73

73:                                               ; preds = %72
  br i1 true, label %18, label %74

74:                                               ; preds = %73, %48
  ret void
}

declare dso_local i32 @get_64bit_val(i64*, i32, i64*) #1

declare dso_local i64 @RS_64(i64, i32) #1

declare dso_local i32 @set_64bit_val(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
