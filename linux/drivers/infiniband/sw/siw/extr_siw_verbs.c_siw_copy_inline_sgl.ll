; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_copy_inline_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_copy_inline_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_send_wr = type { i32, %struct.ib_sge* }
%struct.ib_sge = type { i64, i64 }
%struct.siw_sqe = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64 }

@SIW_MAX_INLINE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_send_wr*, %struct.siw_sqe*)* @siw_copy_inline_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_copy_inline_sgl(%struct.ib_send_wr* %0, %struct.siw_sqe* %1) #0 {
  %3 = alloca %struct.ib_send_wr*, align 8
  %4 = alloca %struct.siw_sqe*, align 8
  %5 = alloca %struct.ib_sge*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_send_wr* %0, %struct.ib_send_wr** %3, align 8
  store %struct.siw_sqe* %1, %struct.siw_sqe** %4, align 8
  %9 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %10 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %9, i32 0, i32 1
  %11 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  store %struct.ib_sge* %11, %struct.ib_sge** %5, align 8
  %12 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %13 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 1
  %16 = bitcast %struct.TYPE_2__* %15 to i8*
  store i8* %16, i8** %6, align 8
  %17 = load %struct.ib_send_wr*, %struct.ib_send_wr** %3, align 8
  %18 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %23 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %21, i64* %26, align 8
  %27 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %28 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %58, %41, %2
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %7, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %32
  %37 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %38 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %43 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %42, i32 1
  store %struct.ib_sge* %43, %struct.ib_sge** %5, align 8
  br label %32

44:                                               ; preds = %36
  %45 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %46 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @SIW_MAX_INLINE, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %75

58:                                               ; preds = %44
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %61 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %65 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @memcpy(i8* %59, i8* %63, i64 %66)
  %68 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %69 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr i8, i8* %71, i64 %70
  store i8* %72, i8** %6, align 8
  %73 = load %struct.ib_sge*, %struct.ib_sge** %5, align 8
  %74 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %73, i32 1
  store %struct.ib_sge* %74, %struct.ib_sge** %5, align 8
  br label %32

75:                                               ; preds = %55, %32
  %76 = load i32, i32* %8, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  br label %81

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  %83 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %84 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 %82, i32* %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = icmp sgt i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  %92 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %93 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
