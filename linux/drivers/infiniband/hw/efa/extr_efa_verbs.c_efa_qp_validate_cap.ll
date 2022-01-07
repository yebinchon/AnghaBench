; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_qp_validate_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_qp_validate_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }
%struct.ib_qp_init_attr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [47 x i8] c"qp: requested send wr[%u] exceeds the max[%u]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"qp: requested receive wr[%u] exceeds the max[%u]\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"qp: requested sge send[%u] exceeds the max[%u]\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"qp: requested sge recv[%u] exceeds the max[%u]\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"qp: requested inline data[%u] exceeds the max[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_dev*, %struct.ib_qp_init_attr*)* @efa_qp_validate_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efa_qp_validate_cap(%struct.efa_dev* %0, %struct.ib_qp_init_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efa_dev*, align 8
  %5 = alloca %struct.ib_qp_init_attr*, align 8
  store %struct.efa_dev* %0, %struct.efa_dev** %4, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %5, align 8
  %6 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %7 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %11 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %9, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %17 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %16, i32 0, i32 1
  %18 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %19 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %23 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ibdev_dbg(i32* %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %126

29:                                               ; preds = %2
  %30 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %31 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %35 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %33, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %29
  %40 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %41 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %40, i32 0, i32 1
  %42 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %43 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %47 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @ibdev_dbg(i32* %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %45, i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %126

53:                                               ; preds = %29
  %54 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %55 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %59 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %57, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %53
  %64 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %65 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %64, i32 0, i32 1
  %66 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %67 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %71 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ibdev_dbg(i32* %65, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %69, i64 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %126

77:                                               ; preds = %53
  %78 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %79 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %83 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %81, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %77
  %88 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %89 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %88, i32 0, i32 1
  %90 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %91 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %95 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @ibdev_dbg(i32* %89, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %93, i64 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %126

101:                                              ; preds = %77
  %102 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %103 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %107 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %105, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %101
  %112 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %113 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %112, i32 0, i32 1
  %114 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %115 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %119 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @ibdev_dbg(i32* %113, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i64 %117, i64 %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %126

125:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %111, %87, %63, %39, %15
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @ibdev_dbg(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
