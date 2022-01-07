; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_qp_validate_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_qp_validate_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { i32 }
%struct.ib_qp_init_attr = type { i64, i64, i64 }

@IB_QPT_DRIVER = common dso_local global i64 0, align 8
@IB_QPT_UD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Unsupported qp type %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"SRQ is not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupported create flags\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_dev*, %struct.ib_qp_init_attr*)* @efa_qp_validate_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efa_qp_validate_attr(%struct.efa_dev* %0, %struct.ib_qp_init_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efa_dev*, align 8
  %5 = alloca %struct.ib_qp_init_attr*, align 8
  store %struct.efa_dev* %0, %struct.efa_dev** %4, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %5, align 8
  %6 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %7 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IB_QPT_DRIVER, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %13 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IB_QPT_UD, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %19 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %18, i32 0, i32 0
  %20 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %21 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %11, %2
  %27 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %28 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %33 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %32, i32 0, i32 0
  %34 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %26
  %38 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %39 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.efa_dev*, %struct.efa_dev** %4, align 8
  %44 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %42, %31, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @ibdev_dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
