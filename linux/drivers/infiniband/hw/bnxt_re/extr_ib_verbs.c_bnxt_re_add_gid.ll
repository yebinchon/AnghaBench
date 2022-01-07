; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_add_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_add_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_gid_attr = type { i32, i32 }
%struct.bnxt_re_gid_ctx = type { i32, i64 }
%struct.bnxt_re_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.bnxt_qplib_sgid_tbl }
%struct.TYPE_3__ = type { i32 }
%struct.bnxt_qplib_sgid_tbl = type { %struct.bnxt_re_gid_ctx** }
%struct.bnxt_qplib_gid = type { i32 }

@ibdev = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to add GID: %#x\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_re_add_gid(%struct.ib_gid_attr* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_gid_attr*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnxt_re_gid_ctx*, align 8
  %10 = alloca %struct.bnxt_re_gid_ctx**, align 8
  %11 = alloca %struct.bnxt_re_dev*, align 8
  %12 = alloca %struct.bnxt_qplib_sgid_tbl*, align 8
  store %struct.ib_gid_attr* %0, %struct.ib_gid_attr** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %7, align 8
  store i32 65535, i32* %8, align 4
  %13 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %14 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ibdev, align 4
  %17 = call %struct.bnxt_re_dev* @to_bnxt_re_dev(i32 %15, i32 %16)
  store %struct.bnxt_re_dev* %17, %struct.bnxt_re_dev** %11, align 8
  %18 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %11, align 8
  %19 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store %struct.bnxt_qplib_sgid_tbl* %20, %struct.bnxt_qplib_sgid_tbl** %12, align 8
  %21 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %22 = call i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr* %21, i32* %8, i32* null)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %95

27:                                               ; preds = %2
  %28 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %12, align 8
  %29 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %30 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %29, i32 0, i32 0
  %31 = bitcast i32* %30 to %struct.bnxt_qplib_gid*
  %32 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %11, align 8
  %33 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @bnxt_qplib_add_sgid(%struct.bnxt_qplib_sgid_tbl* %28, %struct.bnxt_qplib_gid* %31, i32 %37, i32 %38, i32 1, i64* %7)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @EALREADY, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %27
  %45 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %12, align 8
  %46 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %45, i32 0, i32 0
  %47 = load %struct.bnxt_re_gid_ctx**, %struct.bnxt_re_gid_ctx*** %46, align 8
  store %struct.bnxt_re_gid_ctx** %47, %struct.bnxt_re_gid_ctx*** %10, align 8
  %48 = load %struct.bnxt_re_gid_ctx**, %struct.bnxt_re_gid_ctx*** %10, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %48, i64 %49
  %51 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %50, align 8
  %52 = getelementptr inbounds %struct.bnxt_re_gid_ctx, %struct.bnxt_re_gid_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.bnxt_re_gid_ctx**, %struct.bnxt_re_gid_ctx*** %10, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %55, i64 %56
  %58 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %57, align 8
  %59 = bitcast %struct.bnxt_re_gid_ctx* %58 to i8*
  %60 = load i8**, i8*** %5, align 8
  store i8* %59, i8** %60, align 8
  store i32 0, i32* %3, align 4
  br label %95

61:                                               ; preds = %27
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %11, align 8
  %66 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %65)
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %95

70:                                               ; preds = %61
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.bnxt_re_gid_ctx* @kmalloc(i32 16, i32 %71)
  store %struct.bnxt_re_gid_ctx* %72, %struct.bnxt_re_gid_ctx** %9, align 8
  %73 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %9, align 8
  %74 = icmp ne %struct.bnxt_re_gid_ctx* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %95

78:                                               ; preds = %70
  %79 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %12, align 8
  %80 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %79, i32 0, i32 0
  %81 = load %struct.bnxt_re_gid_ctx**, %struct.bnxt_re_gid_ctx*** %80, align 8
  store %struct.bnxt_re_gid_ctx** %81, %struct.bnxt_re_gid_ctx*** %10, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %9, align 8
  %84 = getelementptr inbounds %struct.bnxt_re_gid_ctx, %struct.bnxt_re_gid_ctx* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %9, align 8
  %86 = getelementptr inbounds %struct.bnxt_re_gid_ctx, %struct.bnxt_re_gid_ctx* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %9, align 8
  %88 = load %struct.bnxt_re_gid_ctx**, %struct.bnxt_re_gid_ctx*** %10, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %88, i64 %89
  store %struct.bnxt_re_gid_ctx* %87, %struct.bnxt_re_gid_ctx** %90, align 8
  %91 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %9, align 8
  %92 = bitcast %struct.bnxt_re_gid_ctx* %91 to i8*
  %93 = load i8**, i8*** %5, align 8
  store i8* %92, i8** %93, align 8
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %78, %75, %64, %44, %25
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.bnxt_re_dev* @to_bnxt_re_dev(i32, i32) #1

declare dso_local i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr*, i32*, i32*) #1

declare dso_local i32 @bnxt_qplib_add_sgid(%struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_gid*, i32, i32, i32, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rdev_to_dev(%struct.bnxt_re_dev*) #1

declare dso_local %struct.bnxt_re_gid_ctx* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
