; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_del_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_del_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_gid_attr = type { i32 }
%struct.bnxt_re_gid_ctx = type { i64, i32 }
%struct.bnxt_re_dev = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bnxt_qplib_sgid_tbl }
%struct.bnxt_qplib_sgid_tbl = type { i64, %struct.bnxt_re_gid_ctx**, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, %struct.bnxt_qplib_gid }
%struct.bnxt_qplib_gid = type { i32 }
%struct.in6_addr = type { i32 }

@ibdev = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Trying to delete GID0 while QP1 is alive\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to remove GID: %#x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_re_del_gid(%struct.ib_gid_attr* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_gid_attr*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_re_gid_ctx*, align 8
  %8 = alloca %struct.bnxt_re_gid_ctx**, align 8
  %9 = alloca %struct.bnxt_re_dev*, align 8
  %10 = alloca %struct.bnxt_qplib_sgid_tbl*, align 8
  %11 = alloca %struct.bnxt_qplib_gid*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_gid_attr* %0, %struct.ib_gid_attr** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %4, align 8
  %14 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ibdev, align 4
  %17 = call %struct.bnxt_re_dev* @to_bnxt_re_dev(i32 %15, i32 %16)
  store %struct.bnxt_re_dev* %17, %struct.bnxt_re_dev** %9, align 8
  %18 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %9, align 8
  %19 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.bnxt_qplib_sgid_tbl* %20, %struct.bnxt_qplib_sgid_tbl** %10, align 8
  store i32 65535, i32* %12, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to %struct.bnxt_re_gid_ctx*
  store %struct.bnxt_re_gid_ctx* %23, %struct.bnxt_re_gid_ctx** %7, align 8
  %24 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %7, align 8
  %25 = icmp ne %struct.bnxt_re_gid_ctx* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %130

29:                                               ; preds = %2
  %30 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %10, align 8
  %31 = icmp ne %struct.bnxt_qplib_sgid_tbl* %30, null
  br i1 %31, label %32, label %125

32:                                               ; preds = %29
  %33 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %10, align 8
  %34 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %125

37:                                               ; preds = %32
  %38 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.bnxt_re_gid_ctx, %struct.bnxt_re_gid_ctx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %10, align 8
  %42 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp uge i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %130

48:                                               ; preds = %37
  %49 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %10, align 8
  %50 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.bnxt_re_gid_ctx, %struct.bnxt_re_gid_ctx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store %struct.bnxt_qplib_gid* %56, %struct.bnxt_qplib_gid** %11, align 8
  %57 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %10, align 8
  %58 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %7, align 8
  %61 = getelementptr inbounds %struct.bnxt_re_gid_ctx, %struct.bnxt_re_gid_ctx* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %7, align 8
  %67 = getelementptr inbounds %struct.bnxt_re_gid_ctx, %struct.bnxt_re_gid_ctx* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %48
  %71 = load %struct.bnxt_qplib_gid*, %struct.bnxt_qplib_gid** %11, align 8
  %72 = bitcast %struct.bnxt_qplib_gid* %71 to %struct.in6_addr*
  %73 = call i64 @rdma_link_local_addr(%struct.in6_addr* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %7, align 8
  %77 = getelementptr inbounds %struct.bnxt_re_gid_ctx, %struct.bnxt_re_gid_ctx* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %9, align 8
  %82 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %9, align 8
  %87 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %86)
  %88 = call i32 @dev_dbg(i32 %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %89 = load i32, i32* @EFAULT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %130

91:                                               ; preds = %80, %75, %70, %48
  %92 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %7, align 8
  %93 = getelementptr inbounds %struct.bnxt_re_gid_ctx, %struct.bnxt_re_gid_ctx* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %7, align 8
  %97 = getelementptr inbounds %struct.bnxt_re_gid_ctx, %struct.bnxt_re_gid_ctx* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %124, label %100

100:                                              ; preds = %91
  %101 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %10, align 8
  %102 = load %struct.bnxt_qplib_gid*, %struct.bnxt_qplib_gid** %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @bnxt_qplib_del_sgid(%struct.bnxt_qplib_sgid_tbl* %101, %struct.bnxt_qplib_gid* %102, i32 %103, i32 1)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %9, align 8
  %109 = call i32 @rdev_to_dev(%struct.bnxt_re_dev* %108)
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %123

112:                                              ; preds = %100
  %113 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %10, align 8
  %114 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %113, i32 0, i32 1
  %115 = load %struct.bnxt_re_gid_ctx**, %struct.bnxt_re_gid_ctx*** %114, align 8
  store %struct.bnxt_re_gid_ctx** %115, %struct.bnxt_re_gid_ctx*** %8, align 8
  %116 = load %struct.bnxt_re_gid_ctx**, %struct.bnxt_re_gid_ctx*** %8, align 8
  %117 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %7, align 8
  %118 = getelementptr inbounds %struct.bnxt_re_gid_ctx, %struct.bnxt_re_gid_ctx* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %116, i64 %119
  store %struct.bnxt_re_gid_ctx* null, %struct.bnxt_re_gid_ctx** %120, align 8
  %121 = load %struct.bnxt_re_gid_ctx*, %struct.bnxt_re_gid_ctx** %7, align 8
  %122 = call i32 @kfree(%struct.bnxt_re_gid_ctx* %121)
  br label %123

123:                                              ; preds = %112, %107
  br label %124

124:                                              ; preds = %123, %91
  br label %128

125:                                              ; preds = %32, %29
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %130

128:                                              ; preds = %124
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %125, %85, %45, %26
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.bnxt_re_dev* @to_bnxt_re_dev(i32, i32) #1

declare dso_local i64 @rdma_link_local_addr(%struct.in6_addr*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rdev_to_dev(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_qplib_del_sgid(%struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_gid*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.bnxt_re_gid_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
